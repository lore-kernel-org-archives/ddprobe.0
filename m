Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD141F3B9E
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755122394; cv=none; b=jSzIemBEldpE76zzyAHthB7ffvCzuU+qwpyrvAH4fJ1kCaRDannWHONxaxriCf2yclvQe8XPeFK8g1KMPNuvT2FwQtg72jS/2JWuFuQC/36LSFE9PYwGVD50QMn2KHdOnQ4de7E22krIHheYDuAlOUQa6jfWR3WV6SPqrZvSlu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755122394; c=relaxed/simple;
	bh=7lyi0Xa4/Ju2L5g5Od89gnRKyLWbDzy2jfmO2H2h8mk=;
	h=To:Subject:From:Message-Id:Date; b=mgLDIATZW20hgUlCAK1eHxV9ggm5BjOTx96pCNA79hp4GxTND8p39AfZx37c+REX9zmYLrHDzMQ0cJSK1yE3NrIsXXRAwEGj7S5DsGjQc/g2nF4LyTm7+XDxgG7mmBOVgyNWNS0BKlNSCeUSAQcD377OTbDT3HZjVZksR7dr6jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+ddUO3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+ddUO3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C46C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755122393;
	bh=7lyi0Xa4/Ju2L5g5Od89gnRKyLWbDzy2jfmO2H2h8mk=;
	h=To:Subject:From:Date:From;
	b=u+ddUO3/ivpLrKKqTY2x6ek/eTnqsW4YzjGiCu/KZ96cfZc8gOaWx4DP3r/OkXd2e
	 OhsrcKMOa9j0TKjGC2WiKDSeHX3E9OIxHD/z9dJc1ZPP7RqPqAqZsfgI4xd9vSRpXj
	 htnWJMJJNeK79L01EvD3AX/KpGNKLnaFQPaGrH1PoaVjan8E7jiremLJM4EYR8ZhK5
	 5brhSG9uwSyySbVkfGrTwBz675sl3h26qt2MKg5Z+uD4W86xN2x/+KqgAp+XVTTax3
	 0hKpCPS8rVuRCznkU+mMkpgmBBz9vTdkGitzjJtMW9ObeOrgImXDby507/gMvod2GA
	 cyqBBsGON9uAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903E3CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175512239358.866.10833315497789212179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afaeaa8c9df878f581581e6a375891cea11ee74fed0ebcaae3a385c5205e19c0
Date: Wed, 13 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755122393
