Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B167A1BBBFD
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 09:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727430354; cv=none; b=ftNM1/uFb6drmzCj8kDHEwW57t5UmN3vz10HoXMpOrSGpKTXutUXu93AXxESU8/OEQUK+J7ETHk4icBy4l6Owc9PKzSjGC7lYdgd2jSlo8dicnXdOHXiZ/kHA6Fm7JMppIRmBRG20N4omATEWQDcf8DMoDZkvLPx/PvLhSjItZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727430354; c=relaxed/simple;
	bh=BcQOp0pD7REagOZpivMYRiKVSRtXvTTjGMTyBUKo3Ic=;
	h=To:Subject:From:Message-Id:Date; b=LiHp4TMy0xCIePpsBpirBNqcXaDjTRtfhQ+Ir6poNVzHzYGFuKt5NjYAn6GklWydpwJd9mV+1A4bvAVIKj/2xsPnY2YC4o78gQFuqpc7JSAj10A3/I7gQQfUkoP6r1d7lKQrJWPszmtvuL1UQhmdU2/J/c0jWpIXLKDQjdpV3SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODkfySjC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODkfySjC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4369C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727430353;
	bh=BcQOp0pD7REagOZpivMYRiKVSRtXvTTjGMTyBUKo3Ic=;
	h=To:Subject:From:Date:From;
	b=ODkfySjCrI/fgCWmZ5mOVUi5eQM0eOQRLzCB9JcEttJ7eEy0k6DtFKdZSi/XDEG/t
	 D0seyCZTcE/W2bC3Q9odIv0wzb34NrMq+rI0RpLML2tush7Dl6ZKVwmIvZ75uHWMk1
	 mLrnUIq2u34J1godPEppEjLbPePO9+d8fx8ll4oEBpWqoU6+aLhkeYAHEbf5RpQh1S
	 oAiy4VFPJGjMNiKctUsKSxOZyQeakfktL3bAbLK5b18fxk6qvssD7V63nAh2oOzOjA
	 u+GuILDkXN4jzuw2essyNIpP85JHFcYKwSIRGg1fDLXhy8TleT1Rtts9rWHNgAtXMn
	 Cmz8R4xtozd2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D89CEBF8A
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172743035360.1852.11451602182515550156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e036f313220126d00dbaeda446e32748e9087bdd5557f12ec1f679a9d900c76
Date: Fri, 27 Sep 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727430353
