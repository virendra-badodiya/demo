#Start with a base image containing Java runtime
FROM openjdk:1.8-slim as build

#Information around who maintains the image
MAINTAINER eazybytes.com

# Add the application's jar to the container
COPY target/helloworldservice-0.0.1-SNAPSHOT.jar helloworldservice-0.0.1-SNAPSHOT.jar

#execute the application
ENTRYPOINT ["java","-jar","/helloworldservice-0.0.1-SNAPSHOT.jar"]