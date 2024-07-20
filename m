Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369B812C53D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721508954; cv=none; b=liMV0XVGNvJ3zUj95s2mczycIGD3JtjtRFZOCwPungtEFNfIPb+mrsVMywPqv4PphFXA/BrBYNM9EA4/Lp4MAZuEt8jBCQI/8heraiL5r8pPsS5vNlA63ZzQfERtmQMZMNRHYqY21UBNshh4Vlk09R8Vx6mkz+H/+Q7vQedLpEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721508954; c=relaxed/simple;
	bh=cMdqqibclHIxo59uHTN12stPIiOVOwbkG87RTN7MDyI=;
	h=To:Subject:From:Message-Id:Date; b=a+hVUJIx8p5fWrnQckQSdLF1n1qwVWp098ncEP2EN3uBt6fFGfaOfy9EDaO96ACS28eUHcvWMTQ9roQrCK3ySb47BmZPay+ZCHfqbnkk22/PfhV57hDbXnSjLEutEfJhGEqAfXrdGWNWhPADws7faNaUdk/EooJxFtTJA5Yetjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDYrFQMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDYrFQMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DAEC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721508953;
	bh=cMdqqibclHIxo59uHTN12stPIiOVOwbkG87RTN7MDyI=;
	h=To:Subject:From:Date:From;
	b=jDYrFQMPZl7uBNsBnc8XOcMzHLQg1IabbfB9kUqMUR8ouRXcMLQ+Who38DX9sn3hN
	 AGgCIjnsIz9WFtz+DL3pgeU99XuLJt5jvwe+vE3lz3ov/rJXltGOns7X8+rqw8Kspx
	 o9ov69TI0YrIxgZf5bOtEgSbIb4hPGpTwugUirE0OGQ/r+XD71E8bSLMK5DhP2qvCK
	 Lhj/zSCyar2I5E+mFRxZDYTIU2MCzRG8vERayzdh0VKIRsRBMKpjS2zqZb69PPj6N+
	 00TvCeTHWadCbV510oGLIlPPUkS3OPRkwER03wOs9X4uRwDxIzf7DOWkedNKxKe8TH
	 wYdMLz0DyEQKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E19C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172150895366.13937.6987461636161160218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc129a5fc9b238b9c68bfaf6edcddeb5abe53cdebee6d34d5a1821e661b4ceca
Date: Sat, 20 Jul 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721508953
