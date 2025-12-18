Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF0C126C02
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766093634; cv=none; b=LpugoTLo9/g9e7GQ7aeufjTJ5THRHs7RZ2KnCgFYTCVohUOSdKCy0BrPxZpQQK2MEvFSVRBEhvi7wo+1/vhzPkGwkpV3x3qZ/jim8E3EjEHoXGGfbrqxuQ4szAXOKuBllxiaVOBnQUwXzQY1D6QYm0gtC6klKR8rNagOBdUNViU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766093634; c=relaxed/simple;
	bh=bXIreaqjaogQaZ/LwwNEX78Dm3RsCRhe5cesXrtMgrg=;
	h=To:Subject:From:Message-Id:Date; b=ITH/jZjsynKNTyq6+zLLLN6bqU6lX4Chq6Kl8ghwjtsB0pAP6LoxlwMq60R1Dk1QzMOGT+XAP7tKcdBmOS5mvd8X1L1bgMtljLpWE07P4D+Cy2edFBQC0uCb3Rqxi+3OvbHflqqgphF0ikxnsNMqxMIJoqKHfcGXHFgwpTkEHD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ns6CciPA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ns6CciPA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5675C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766093633;
	bh=bXIreaqjaogQaZ/LwwNEX78Dm3RsCRhe5cesXrtMgrg=;
	h=To:Subject:From:Date:From;
	b=ns6CciPAzVl3S6rAqegBvv+QYE8Za9ohMuEmemQXJn1biaO+AyEns8Li517ay95Bd
	 WXDEkz1x0D+XJpkw9AF9SF1dbmyaGkQKMrhBtsIf9fpgRE5af+GC5zd0wHbWMu2G5d
	 +pvLZqiLxNcfxk5eCKR2moXPhhgqS+6q1Tz3qwoNxLiJm9xyFBe4xtEs8kgx6xxMQz
	 nxeIUSQ/UQqg1om2zdx21X5HzyE10OFkqHy/lLmlDrBXPxc6b8XDA9E7Fosgme9QZS
	 yWVNfGWiRkBDGgIaL8p8fst/Eae8I2aX+ngHvtxXp7Jh6p1oDZFDju51BaeDsnx8oA
	 xW/ibP98mUAXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CB3D711C6
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176609363358.10550.2188556895611893708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8beb478d468e3da7b3ce0630da003b5e95fa1c90b28c39c15d688389fecc1536
Date: Thu, 18 Dec 2025 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766093633
