Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0969EE573
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768190034; cv=none; b=CNYyytEGq7xek54986hO2Si+uOWIH7MU6c5ZqTbO9rDR3n50wF9Bx3y5YxSBUhW0dxgqRJKenChpMPEb/gFTkrvjYTssndj1sBcDu0BNd0mOBigd/9DMo/OVNwyJVMzwk2crvw8Dqn3DfPDoHEafL4b12MoXFd+sMqChRJv0AUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768190034; c=relaxed/simple;
	bh=C+zNyVQWd7U4DiTS3Tchg7X6BVBhWtTFMSCHOQdMga8=;
	h=To:Subject:From:Message-Id:Date; b=co9p0VVyhHNpJwXZxpNAjf6ozYnKbLiJKZW0TlcCQMCsovOhuO7etIWBh1GblNknfiQJRqQjs/qs0xghed7p2XzTSYJQTU6z2bxLRY+p0CgvDk1OQhesir4OEmybzEX0ec7bKtfcr6OveJOHSWs5sDS20qLAzofEOF4Znuh9a5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmW8ZGsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmW8ZGsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F882C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768190033;
	bh=C+zNyVQWd7U4DiTS3Tchg7X6BVBhWtTFMSCHOQdMga8=;
	h=To:Subject:From:Date:From;
	b=cmW8ZGspJymMgMXfX15oySJTYS2TtjESa5zWkQoZa2CaGEIExd8T+fq4mBEtoPhoW
	 YKTqWTtzMxnija6abx/OqjK/hUS/5IgbJ5blboTKcqyFvefyz5Ed6lShevXRML7Byt
	 lQ7ER1XJLD4wYbBS2JLOd79C2ttEv6NFu/KmBISN9lilqRGbopUVvNrL8bM58J274u
	 59TRwHdKYskd36hT/WTu6KJK9SxYb6mvKwbITytoEudL8Ebl/dVQK1vl1Vbze9BGwp
	 Ykm2Kn547VkIyiOj0z7gtFP9iOnaSgWEJXHp8xC9Rj/lUr/nHWFKYDUJl12PAWD1Z9
	 uenyPlBKQaYbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEC5D25030
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176819003357.27401.544488180731221901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03bdf3fae5b827c82be3a37658dbaf29f2cac421bc370b23e32741ae393f3f5f
Date: Mon, 12 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768190033
