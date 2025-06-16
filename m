Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC8119DF6A
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750055394; cv=none; b=F44VM3a4HTOS/1npI0ZnwN+4szlbhJs0xDP2JpRpsytQUC6mQqGQpA6P1TbFbjoSLl38rbMm94aqL3aqonVaik1wAQ4k+76C4Q2Ay5mEdvjswBe+7eItzv4fjEcZDCIVlC1TNmYubFl1taP7bQJgqSGnYBBlTNKA0i75SvS3eds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750055394; c=relaxed/simple;
	bh=GXQJtercEKL907R5sOB3IozJ0B9NWFvCQZEOWrIBK34=;
	h=To:Subject:From:Message-Id:Date; b=RZscim2VDKgnue/Wdw75yvA0d5COvfT0VcS3IdW3vFmVJTw9y8wgiAv19majhecf70Q6eGU8E9NKGb/ij/M3egDx0tj+oTODfD5axsfAnMIfkb/j+mAiZ+onm3PYdzOXT90xXXJXosz5zJBgXhYLg4FQP4ak78Y3gm5HKaUXvM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzmimS+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzmimS+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B592BC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750055393;
	bh=GXQJtercEKL907R5sOB3IozJ0B9NWFvCQZEOWrIBK34=;
	h=To:Subject:From:Date:From;
	b=AzmimS+x/kMZ2M5deZ37fHKcPtqrHm3JR32f+zw1g/bL8gmiSS5JzPLLWF4UbSKCI
	 qnT4I0nV7ItWvg+3xREnucF7nnuWIZAVyQaAgkvlq7dwN7NID8/y6SWFYIil6ePw9O
	 3eGK7QMNtHBB7EaR8SBCpW+WvEv0Xyt/29y61bsy/JcOaUWJ2sg4raESLYhjPWbnoK
	 GO4yLeZuoHW+EpCuVCRMev1dpY2fTwoEGns6wHmpklARCtHa2AQaY6jU9HqJDITQDp
	 w5VQpAknUg6Oy75FjFdQGdXSetGn2xl2DfH136oHhTMPIlsmIp201F9vQpFUgPVRyR
	 d1qTosNEnZkmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9987EC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175005539361.4630.4447639785473445480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2725d9e6fd70a612021e116ccfbeb2696ecb3347c365d6c9bdfe494a929d715
Date: Mon, 16 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750055393
