Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3755D2B2D7
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748143794; cv=none; b=lGYdvmljQhEUh3o8r0eczOODefaFuXuq6kddMoBoW+SXaql9zUgTEbDUNUlA6u6uHDsR/1q1zYMQMSTcqx5uMoXQFZJbtLkSZYZfHwObSxvmEVOcaf7O2wpdAymUgQdhHtNgoYCsZo0pDY8laHOiVmDjM4OiNw8o7ZYrUhzS4XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748143794; c=relaxed/simple;
	bh=dn/RL32/UMn/aqLLtEco7wAmIQzqu/dKfHA8UFQaCt8=;
	h=To:Subject:From:Message-Id:Date; b=bFvryfzIODZcOgqgTf4eDzUqd8+nPgcbJNJ33KMsSTlMXxkhKyveXIVBP5pJO+KyowP4pPZzHizFiSYtDiMgein27ogDHtpQAlTlY3pzBoLZFtTMAoj8KbCUDcKRbF+qpNm93ihzZRRPmcK0jp1XxdGglU+KrT6ndujyLTlINi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utBMPGVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utBMPGVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C9DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748143793;
	bh=dn/RL32/UMn/aqLLtEco7wAmIQzqu/dKfHA8UFQaCt8=;
	h=To:Subject:From:Date:From;
	b=utBMPGVOL5lIW4rWr4Jn2VOZwjBWdrnPQdhk3rXGOEj9vAF8+ICPa27YXxeUtJDyS
	 GjKSgfeUj3qJHdr4137DDwSpEycjxTo/zU3dQt35Ah91zsItywwYzoLAaNNnZgao9V
	 q0DaI/Aq2o2Ai12GDDjji8DHTsOwLIlN2kM6J1NMKKGO1hrOPch/BjcSUmFjT9k66s
	 DehDIX8+rpbG23NQPZzgqVgcXFbH9Z+cpF4i5BoyH4HhwkjS8Q0Hq/e7Arb7AQ9Vgl
	 BxAdsD/e+kRH7o3UnOCGqa797NG0tBC1NZPSSlt8+OMwAYK1QetMwOw9rlZCYnM+fT
	 JS95BqhG5PaoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97435C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174814379358.21771.1054820944530947188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b4b5385945583d3398383e7e3998b1053be5da416f1f94e83ab6d3c1f99ac8
Date: Sun, 25 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748143793
