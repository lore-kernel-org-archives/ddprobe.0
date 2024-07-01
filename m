Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7664E250EC
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 18:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719859523; cv=none; b=ZfySBpveTo3btUOUd3M5kQBiIiWGTJlWoSSMcPSrliW/e0xXrhca+HB8wx5y9Ugs4rjNI8Piqix2RrAem/2/NUOeBR2ea/f77gBcSzyHc0ilKdaOfjPdMGJB7ABHQk9QiZfzI5Gkeo+0ExDOc7yyRDwHtAURTujMbuxT5xy6CfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719859523; c=relaxed/simple;
	bh=38ybFHo34PpZNSkTsK4P6QGBUCDLo7kp1RD3bLLbRzI=;
	h=To:Subject:From:Message-Id:Date; b=BnnD/6cnwATZZU/RyEt+21iL1IA6GYGqcfTrYkQFG0/rKyarDYdig3h79D7w+hd4J30EZS7u5ipWWKJiDWJRa1DFVZSx6UFJxIwZMMnajqVe+/Txl2NTJtoHfEgxkeX/DDtfYF5xLUmK1azdqBc6rTMgaoa/hrdzSYo5nJUgYC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9qzGZlP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9qzGZlP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3BBBC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 18:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719859522;
	bh=38ybFHo34PpZNSkTsK4P6QGBUCDLo7kp1RD3bLLbRzI=;
	h=To:Subject:From:Date:From;
	b=f9qzGZlPkeLOs0TbpRZZEm8jhwGhEtPJodbxtYGma2BTogGk/X0NC5iG3ex3dm/ww
	 8ako2Dw3AU0scu/aGRcOwC/FWIuQQ5SwNijpQ1IkJUIq/NdCtOsa99t6StcMcL5aPZ
	 2XnRpuMilMalUilIjJJeMsdUjEIGpa4AfUycP+RyNJ/Oms1TSd5+BU2ikepSVmMaEl
	 zbyxOu/ca3TXQerIxD/q6bheLCWC9FODCU9/buNlsZoz+t2xjl8k83s3c/HV9qVXYJ
	 DjZq6H77bUADye5w6UMwRciyp8rxOS8j6Pl0rxBvHeu8St1uRlgMQrrprQ5v/iU7F1
	 uT4jR5JEyOoGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC983C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 18:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171985952282.18267.10586726613516210559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab668b978461450300ca1424d393a3f60d1752d4dc282336160441decc748ee
Date: Mon, 01 Jul 2024 18:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719859522
