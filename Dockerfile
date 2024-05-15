# Build the simulator binary
FROM registry.services.helixer.io/docker-io/library/golang:alpine as build-deps
WORKDIR /app
COPY ./ ./
RUN CGO_ENABLED=0 go build -o workflow .
