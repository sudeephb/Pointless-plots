library(ggplot2)

df <- data.frame(player=c("Leo Messi", "Ansu Fati"),
                goals=c(0,1))

p <- ggplot(data = df, aes(x = player, y = goals, ymin=0, ymax=5)) +
    geom_bar(stat = "identity", fill = "steelblue") +
    scale_y_continuous(
        limits = c(0, 4)
    ) +
    labs(x = "", y = "") +
    geom_text(aes(label=goals), vjust=-0.3, size=3.5)+
    theme_minimal() +
    theme(axis.text.y = element_blank()) +
    ggtitle("Goals for FC Barcelona\n2021-2022") + 
    theme(plot.title = element_text('mono', 'bold', 'black', 8))


ggsave(plot = p, filename = "ansu_messi.jpg", width = 2, height = 2)