Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D869319B3EE
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724758553; cv=none; b=H+B9PY/gCggZ8mqtW/V4EnOd5aDVQ4okJGocXf7Cz9ZIdSmTOGQzePUkR4j2fgfSnidmC4MWeSgB0Ts2+JGmCEFq740GitWF7fE+imKTdJq5MH2BfCdIZ9MrTWjhp16GO/rq3B6CJKD99PmHdQmsmchLjyVsZTJr/xTDNQrWbzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724758553; c=relaxed/simple;
	bh=fbuxKkmrNZbQa/GTgsO2FiJ2srNez7v4rknZZNdoUtg=;
	h=To:Subject:From:Message-Id:Date; b=pCHDeaDisqqIWagS1r2qWAhHMe8LTqQ9+RdR79FXW/Kl59H5KU7S7+UA+jBrhGQFK/NDzBxwcVBzz1R7iO7EpOLvJq4KVAI4qdGzfm1lva0ju824pZpl8YluarJfP3P+PbTJb/BgDhRuFEgIEc42dXLtOUgh7dxOAhJXhqLefGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CITQmjFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CITQmjFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7266C8B7CE
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724758553;
	bh=fbuxKkmrNZbQa/GTgsO2FiJ2srNez7v4rknZZNdoUtg=;
	h=To:Subject:From:Date:From;
	b=CITQmjFKubIu2CBZy/GU9odPnbKwWhW6lqx2Egl+82wud8af8lm3evfm1WunfgYW+
	 hO1aVeStIYajlPvgrIpNjaCVIfCe6R0XjXlANUh0k9bPjtcuo+wKvOUVsNmKLpyUjw
	 AYX3F5x1QTbxitX2rn3sN/6KsnSZ1mo2PpDaGMiSp7JCUSA7tpTwyx5v6PGzavvreX
	 b3A2BbHXVClbLp4DI8IdyR3ZCm/7AVq/R2259dcbO4MvffMXwREH5j9AXTl/cAX29o
	 KrFIPU8jRD6GUajnNgQZwMXz6P8hL67fXISTcHLUKBJK4XTla+JoYxmtYoVz324AMl
	 jgSnYsmQw3avw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F58C54735
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172475855359.23483.13517771138929695542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9e8cf7b4c8ffdbab32e0629e383a59402d72a9f5db3a741e45ed44ff8d2acfb
Date: Tue, 27 Aug 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724758553
