Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB321ADC7E
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770451434; cv=none; b=WWUhb22BN++si5vCFhoQFQvrxZkZQJe/DztyuNVUzGwOPyZzhtX7/8DtPKaESP8m7eV4hr8CrJGoelfbD7L9FQHGoC4MxPuEBO+7xzQTw+CwuYYYuX5bKw0aGDWI46QbtOlCPk+V8AkttE42nIArhbmX3/HWyrwbUqeV3nUFqwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770451434; c=relaxed/simple;
	bh=hX23zLOcYGFYs2jT0mGWa8inOGwLAPRsoxSee37PZpQ=;
	h=To:Subject:From:Message-Id:Date; b=SsfMjLRMBZytRldUKWdRxPf50H/kisa44aO+4UOnODRf9is+ZAHzHfC45PFFjDFDe89n827nxaZUGnQr3+CnKmYmwCwp4oDEb0TqXyixbJxKszZkEGrGMT2imyty4K+PkyNnfap5XRrhhFiPuW4Borh8v2klb6QXVsQCfBl2TQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjPTSmOg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjPTSmOg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB367C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770451433;
	bh=hX23zLOcYGFYs2jT0mGWa8inOGwLAPRsoxSee37PZpQ=;
	h=To:Subject:From:Date:From;
	b=LjPTSmOg+2DdzkJSNI2wClYr9KFZ/G3o/PJnPDP8liyWlxLIUOQQ21reWsKZ9IX7i
	 8tGtjuiYNZGNarHMdyeyVeQuSDDgteiDxao8kFlagdMqJwBHFo3siSZdQde1AzEVSF
	 F8/3Wy/K+scJ3IQD1w2ci4aZ2yCzAx2d98OK0FOYRC7UKBB/R5ysSkBJ3Lf0rF95jE
	 XOv1m+8HG0qjMIWRrGXykunepSKRiEO4G7dcddcdGdEvSpaOO+Sh7JRHOMrODaR8x2
	 2XWC+yB2N+uehc+xpBBIQUyA9ZQ/VGLUhJnnT6/n64+DsSpFBn27G7gpzpv+wlBf7W
	 IU68pA20LUHzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9582EEE6B76
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177045143359.27670.9807016955150213084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c133d23330502eff365afdddb8f5294a700a1eadd8ff2d73b56c75c4c1687b5
Date: Sat, 07 Feb 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770451433
