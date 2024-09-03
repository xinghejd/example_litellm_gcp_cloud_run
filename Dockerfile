# Use the provided base image
FROM ghcr.io/berriai/litellm:main-v1.44.14-stable

# Set the working directory to /app
WORKDIR /app


# Copy the configuration file into the container at /app
COPY litellm_config.yaml .

# Make sure your entrypoint.sh is executable
RUN chmod +x entrypoint.sh

# Expose the necessary port
EXPOSE 4000/tcp

CMD ["--port", "4000", "--config", "litellm_config.yaml"]
