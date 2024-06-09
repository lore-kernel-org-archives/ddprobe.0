Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689191CD00
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 08:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717922843; cv=none; b=FjGpx207WXYaJt4SK8iGrPnihekEIm/S4A3TmN8dPs8P9xf7SaDRNSnWEPGmlkhWKyEbMNArJq6/OzfVE0HlWSKKHbijer1chyQFao6Nx7tMglDrU/88YZghu3UYzQHwJPdUMDEWSy9YaonT4laKA5n3EJV3jxHAbZf6qEfdWBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717922843; c=relaxed/simple;
	bh=xc9LD1+8zS6lCf8U4QnbnlNLADq/bDsb8RxJFdPvO54=;
	h=To:Subject:From:Message-Id:Date; b=Ee6CF97GRbkBjjyvoZu+TCzwhHkuE4iZKSbtHq5uk1zSyC+bVFlLobdeAu7aQXo4hlTRymC9cBJH3xWKNh68hwIvQAyB/ISn09a5QYL3Zu888BtkQ+c2hK020SPsSZMLBjwHsA9ojy19itJBDtcQ0W86Aa92r6JsdmXOkY0xcL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1eq+/bF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1eq+/bF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC435C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 08:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717922842;
	bh=xc9LD1+8zS6lCf8U4QnbnlNLADq/bDsb8RxJFdPvO54=;
	h=To:Subject:From:Date:From;
	b=J1eq+/bFBCJ/l+Lnjf62pz6UuDNcp9zuhwI2NYUKNSrB/c/7wMizg0xjdu++s3UhR
	 y+tVF4+dYmU0ejxMFxreZRUCyw0sLfX67TK5PckO5UY5yH1pCBibNFyoY3fD65Phw0
	 vzykfstIuBW6zmhRtQiTmR8pCw6boLqcX+NvkolpfSCwFtdeToSsivj85HhTQQdObm
	 gnS4FrbZ6spCEyt2HtB7Yje/TUWRADYkSuF/77C6v0iu05ObgQohQi5smkCdSN950I
	 f4AjNvLwDRLEw2rmcKIvITnIKXBXWocQNFJTDJUV7SIW05g+34AIw48Wph5vkopi4Y
	 K7dBE6lO0fQaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C567FC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 08:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171792284278.14684.5047203745316617214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222310670341bcfa44cc5e9e4e2ef9ec3ce13049c35f6a6468e9f6e4849abd09
Date: Sun, 09 Jun 2024 08:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717922842
