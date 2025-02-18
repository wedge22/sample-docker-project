# Use an official Node.js image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies
RUN npm install

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run the app
CMD ["node", "index.js"]
