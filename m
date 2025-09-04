Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AB42E7BDD
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757024394; cv=none; b=W+/Iyd85Zx2jvm1a0bJ44xWg3H/Lzz3xPKSzQCr23GlRUT39fISvj7ICGNDvW/3Kx5wCoqUsCkIUGdEE2SLVaH5d5JWe3mmGWhc5cOrlgpF6AS1Q2U9z6EJYh/XbL2uUOrEL8Y5GfIJZwUw1beOMITtXpwsGiZjQlSrPnGBwR18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757024394; c=relaxed/simple;
	bh=HqQGljSP0ykZ/m+xAmhQg7OtKB0P/oyDVc6AKw0Qx0Q=;
	h=To:Subject:From:Message-Id:Date; b=e6qzwZC9if3ZibPuJaAZXTi+yCsMc/bxekAvyVb97qEGl7E/vpGIXPIJehjXE9AW4vJ0Izs3gV+/3IEz24YFNTozhQRRtaftAnryjC1bnROHtBrZ5RUCbpyXDo2WBqRoSAATKFeWgCzSh6VnPinenvAuX+X9XFvMeuhLphLweyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svQLnuJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svQLnuJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B8BC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757024393;
	bh=HqQGljSP0ykZ/m+xAmhQg7OtKB0P/oyDVc6AKw0Qx0Q=;
	h=To:Subject:From:Date:From;
	b=svQLnuJWQgT0l8/G8QI9kqZbFEAV0SLazbnK/P5T+htqzPp1mcNA+FCpOeEs+GXzr
	 JMCMlKPOssaRv/gd6/p0///xLvFQr6BX4qmnDcPJ7sQb8HdJ5PaGi+Pi6SlLebDFw/
	 lOFfs1lRR03zts23ICPkbrtA3TcGzUO+CN6SBy0WZ+OIIcvasMU5EYDfXJseF2B90F
	 7v5BCf9baAsTV9eHJvX5LPICHrWaIrLDB2mHmZEBOA76DzMLwJs6gMhuHdzXMWwQLs
	 3+41uwQXB5Cp8DMsgT3pfhiz+ODsVag82qBHP8kB2zWHfXvJZtQGVWBN67HONPRx9w
	 O821LQR3UwAIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E44CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175702439357.26715.3255079598189841222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: befdf1d5a6e8fe88395ea80c568ca4c324840bfef7144209884726bb6688ae63
Date: Thu, 04 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757024393
