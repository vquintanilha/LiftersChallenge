# Definição do repositório que será baixado do Docker Hub e
# servirá de base para nossa imagem
# (neste caso teremos o JDK 17 já instalado)
FROM eclipse-temurin:17-jdk-alpine

# Aqui estamos expondo a porta 8080 para poder acessá-la
EXPOSE 8080

# Definição do diretório padrão onde colocaremos o APP
WORKDIR /app

# Copiando o APP (arquivo .jar) para dentro do nosso WORKDIR
COPY target/*.jar app.jar

# Por fim, o comando que roda a aplicação e sobe nossa API
CMD ["java", "-jar", "app.jar"]