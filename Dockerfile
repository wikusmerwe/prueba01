# Utiliza una imagen base de Node.js
FROM node:18-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos package.json y package-lock.json (si existe)
COPY package*.json ./

# Instala las dependencias de la aplicación forzando la instalación
RUN npm install --force

# Copia el resto de los archivos de la aplicación
COPY . .

# Expone el puerto en el que corre la aplicación React (por defecto es 3000)
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]