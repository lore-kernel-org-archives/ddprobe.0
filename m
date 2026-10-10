Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595171F09AD
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791657634; cv=none; b=seVsGuScfLKNM3AdXOIsVyuhBjMDGroZ2LPG9tTwj6hnf6LkOS1fa+S7NLEQ2xnv9jWdBhC81ngX/rbiOxoHz6kGuZxndrswQ1h2BItdpgjZ3Af8nSTqBYVki+yQrHLFHTwgCNj3IWi3UoC6w3rOrQvFFns2+f/6PtRO/WIO1fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791657634; c=relaxed/simple;
	bh=CQnXYXgD7ZrFPJtRDpiUWj9przCdNQvjyTJdjm1oJPU=;
	h=To:Subject:From:Message-Id:Date; b=pgTRHS6uQLwYQpYYreI6phZPQstCP0KgHQpxzLPrdXhR1wG27rKgc5Hd5Q99eTmz3CT2/T5AyAZNy53JocwXPrL4kQav/sHj+Lh1S0aCdlxSz96dfWsya+QY4G/Za89lTNJ/3WlMacy9dSfLkYTlCvHrq0eMj1En2L1QPsUrrn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USWvEQl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USWvEQl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF913C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791657633;
	bh=CQnXYXgD7ZrFPJtRDpiUWj9przCdNQvjyTJdjm1oJPU=;
	h=To:Subject:From:Date:From;
	b=USWvEQl5HZDCgyXB5P+fGfMTDsfHQcXirxwHgTJKHwdQEGwRPHU0c1DHW2Eo2WSvE
	 +ya7zgSr4x6bG2jIPkdA7LgBffKMeoyEcxvYL2WhfVG/JgWh8smUjc+SeALX+LPKAF
	 Dtj8xDcDJMioVGSbGimN30fVbXwAdKTCptAUgiEnvCb72iAzaatALKLpxF3LB2gPnn
	 mcWGawIJ75ANHLMZrEmzkzqWy1z1ts/2T6pk6NmV5kWV0IGHzd527uBcW0J9bAQIHB
	 SBSAXk4/Ga562ZaQzQiyZ96gRoscOUvrZK/yN+l0PybkGevFe1J9834ua52bjGw8Jf
	 BC9uMdhNF8wOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD339CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179165763370.18400.13544270530552347551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd47a47f14ff6baef4b456db893b822b4374e7a552027bd03a9a38120755ac01
Date: Sat, 10 Oct 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791657633
