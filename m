Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BB113B58C
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737065754; cv=none; b=tIRa2zBy9PkNyWEoLX1p9GfzH21B7vCynZ4m5cfglIvpYEOh/wgRk8WiRKEkMQCBCTyE4Z8uSi1IpC543Yr1tpvacFrZoh4Zk0V9nG1kgeCfU+p5pX8geVAtEy2CHPyHptSn5heVx8ogFy4d4lSNTfC1TNKk6TN4V2b4UunxWAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737065754; c=relaxed/simple;
	bh=OKn/O4Wl7AEgD4WwAy/hUPR8wXDVCEc2DkEYKUs9t24=;
	h=To:Subject:From:Message-Id:Date; b=AJxiXmPj3MqEsWfyZRDJZGuKDrEL3zVlTWMJCJk3EjsFWheKsFj9TvZiURNIaWPUbWlKH3vOllXAJuoCoJvK3+b2UCTQEvQBW7OepBpFDLELa4IvjVVjcWgvMp39I3E0ipxFcSYNzgmbI30202f0i3GAmb7F2YsBpCuyhkAy6s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MONhN43u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MONhN43u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A477AC4CEDF
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737065753;
	bh=OKn/O4Wl7AEgD4WwAy/hUPR8wXDVCEc2DkEYKUs9t24=;
	h=To:Subject:From:Date:From;
	b=MONhN43uLOT2NCdE2C1EkUrtP9G8XyHMWkx6JMDDoV3dJd6OCafLhsm37DEhx4Kkr
	 hwFW/tmzEXELRyecj2EdBJ1aDYyVnUHPfjLploezrL8NNZ5UzjscSRNVlAiZVvqZfZ
	 3dh+6He4jiFQveiksalD0DbGCp7Q61Zf7Ymtjjl7gPzQAxA1qkqvFsCQOAeow/WvpG
	 Ei1s1Xwi5xqRPUg6xe7EDrRz/p7G5VUtTE8yZ1chDk9+xKaQo0tRv6izejdiQLQvkb
	 F8GLEAMXfzkhnljcY+747l98tBtD8kOF7fd7TeOSId4xRhYfU/+L87BJ6ZGsQQMzoE
	 cRPgR0NGgQX8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F0CC02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173706575359.15017.12507054134550467641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1067955ea5f9940e4bf6d2fa98ec9c3723fa93da8bfb4654e79dbb9ea5eba481
Date: Thu, 16 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737065753
