Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BC83368A0
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772590494; cv=none; b=NW4Ek3qPiLogAAv09jz4b8QqayFXNXwpX9XPStEUG68ECYk/azO7Rr+I32vweXnhcTnJX7Lfb8STfUAo0HK0VZDa6rcfCa0sl0gsZDa+6/F4r0h0dX+kf8tDVHUm9QQR/GjHvAnlZbpbwRCnblGPbQK9xWdASZQcwHYH6TUvlW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772590494; c=relaxed/simple;
	bh=Z2iZtMP1BVt5riNNlaSBBB0y9H2WasNzaSCXIUNCG7g=;
	h=To:Subject:From:Message-Id:Date; b=lVhnRDPWYuFjJIbLSawQIFlNMyxtLpv7LcEQPAzDMr+1doXcTRwtR5jeRX3H7L23RGHA23qrKIZEjJj4JUbkt7rpzPyk3Tq1WfWuf8U2rEXeJzVZJap+XIrJ+8PLr5NY2HTs4HZGPv00xo6/L3Cs9hWuIq7G7CMPd93IHwhkdzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W//Xnwyp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W//Xnwyp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE9FC19422
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772590493;
	bh=Z2iZtMP1BVt5riNNlaSBBB0y9H2WasNzaSCXIUNCG7g=;
	h=To:Subject:From:Date:From;
	b=W//XnwypAefenmfuAzFsuCtANxFbgst3QA0Ws2CcoLfwuMU8w7JhE1h71fdyOYeF5
	 ENWGI4GlyCllDCX+uJhUwdKcA0okBkw7kgctP90o1SKrwdiwqUOSy1DS084bHMaBPc
	 lA6whHQZLdPRbqq/OuSU6vbsXpBUH4rbBSamWl+Wa+jtGWpRTTdEmDWNBgWcnK67J6
	 Kx/lV/ebuylOkDmVLmUZamZtk6a+EavJjvikNdg/wHhcphmSrrtVpNoSAjjdc0CydF
	 l8YsSosednXkAJz2Rw36WeOQ48BL5k5u1fWZowI7pzSiEeFSUM+9EBtOvWsJ64EMFx
	 0bxU4lS8UvG1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2C6EDEC01
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177259049361.3697.12895578982654886516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d12b79a243af345adfd898dcc8a9744a9555abdcc5812c6a00d3df5aec3d204
Date: Wed, 04 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772590493
