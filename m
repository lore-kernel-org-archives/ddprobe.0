Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CB5848D
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 06:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714718543; cv=none; b=lpq8gyz7MWNj+Y02LCS6sdukD+LOX9YQXXYxi7SPJ+89jwR4JZYbG2A7C8v35dL3OklOXx1TNRsuwQSE0a3ADQOPyBguHQ+ZwWGM8UbrQ+l2K7dXVAPzEogxr+RQio4vRSFIAPj0YyolWkESh1KOWDM5ufCDfLNJZ0AJv7u/HlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714718543; c=relaxed/simple;
	bh=2OUJBA7647ZBUStOoE4NR+8uysGA19bE4FSfXlImLCY=;
	h=To:Subject:From:Message-Id:Date; b=fxL7Z4Z9NS50J8ohXL7c/p7uDRTqhX7vZlXGktTCsqsyh0eRwuIOKSzdNQdqcyunbsmexyFvsG9iWfDrnAZUNGUJr9F6cOkOY8RCPSaBTb2GVVvKTz7VDuWC39794NEzaz2YJy5CR0kjXRIxCo+6IwiNvQURPBPDEIfg+ihMsgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L20FCojy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L20FCojy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5887C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 06:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714718542;
	bh=2OUJBA7647ZBUStOoE4NR+8uysGA19bE4FSfXlImLCY=;
	h=To:Subject:From:Date:From;
	b=L20FCojyuFD3EWXZUNZWdIoSt3tjp9Qc9xoliPorF+h/ziYUTikptF/GGvjmTFP1X
	 GFArYZe3cb9nYBX9GBM9o3PzbWFeRkbnEH31pgbWtaufVYYd6ko2ToTDWmGJu/MIIL
	 ZRM/Vrn7e4hA0npNKmADaonWnXj5ku6XNTDQH7wPv9xdAVSmS2X2+kQztbSyg0Crw8
	 XNPy/Kd1HDYRWMNQUCY7x9A5TjAZlAlhIN9I2c65KDxdtCptkk9a2SaL0pBpszqVb1
	 9/c/EPzIuKlKbhDSzGbJOdnDzuQEAmOpO3QBgJdR1b/Fa4VX4VedywBF3gB205x36K
	 l0iWE9lWHOcbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1357C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 06:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171471854278.2846.7815341745985193987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33f178e10c80b111ca44714ef51d3b511c451ec32cf3f62bc14487ae1f835b0
Date: Fri, 03 May 2024 06:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714718542
