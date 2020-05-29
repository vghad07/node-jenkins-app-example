FROM node:argon

# Create app directory
RUN mkdir -p /home/Documents/node-app
WORKDIR /home/Documents/node-app

# Install app dependencies
COPY package.json /home/Documents/node-app
RUN npm install --save express

# Bundle app source
COPY . /home/Documents/node-app

EXPOSE 8080
#CMD ["npm", "start"]
CMD ["node", "app.js"]
