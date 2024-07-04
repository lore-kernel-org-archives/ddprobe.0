Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F681B963
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 04:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720068923; cv=none; b=LTFSVN4CVgtgmgn/wA+128QaUYGlyRdhLPXr380SaI1qC9toq1LeUkQXCP3yUldrhKhmfJikaAZwoysyOX4Es/7cYmh2fklRYFmeTDe1WHebakUPngsj/fimEqKqHqEKrBgliaIsaXRmXLCkFVaEggNDmdFxD0kUPDAKH3VPv6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720068923; c=relaxed/simple;
	bh=5E69/mxwvHqb5af+8ZEa9UGUGrPYWordtFkkXWCllRI=;
	h=To:Subject:From:Message-Id:Date; b=Em9IDfgqjjKBmmea3/fsWA8SpMgylHhn5Syg364exA1Y5oy5lpbcPbeRsWepnbZjVI/VT2eorUQXgp7CdMbBmz8zhxAtgq9mmvalPWiHfQcoS7Q5Y/cxNeZQqXkSKHsQFJHOfNln8YK9uNclwY5F2Gf7r17on6p3r6lG3p/hxbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IR6Z/iG/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IR6Z/iG/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A98C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 04:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720068922;
	bh=5E69/mxwvHqb5af+8ZEa9UGUGrPYWordtFkkXWCllRI=;
	h=To:Subject:From:Date:From;
	b=IR6Z/iG/6UVppwROQjkmQkbPSk75xx8HtlUbwkyTQY1S5GaJFWTAW0e58kL3yK32R
	 a2U50Ajt5om2CtF1bsA1Y9RRXdzP9cnpcjpCZ1nFyshu40mOQFhpuy+PEMtALcbVIV
	 +GNy6di45hCdixgyyTdq+v3iyNT4Iw+hPuPVVO0Gp4g+gaAF6qaYKbl7ReDVuUly8Y
	 Lw757tXTRLvtfpXiJZKEMBWAqpgITVgq93Nn65VsRNxDKIA+gWy+i0eLMOW+FuO4Qr
	 FyHYRCfhHnM6OBid6WCOpalMRX94fD2ZDz+K5rvtgnSqt7I4wOdFnsXjXVhZ/jsXUc
	 QdwRrkmrO72YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34DFC3065C
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 04:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172006892279.6886.16494610056326859688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40e64e7dae72d9f16b67c266bc1f0f79875260039f31d80dcc953612429e3fab
Date: Thu, 04 Jul 2024 04:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720068922
