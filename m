Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07E839DBF2
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777453653; cv=none; b=Id2cqroJ1Wev0XSuRiITTErZY3/aA0Z47P1+rUN7MEdpiSh3XDckFgKFu26j4zn+9X2Z4e5YSxw9YJBoYTXjQpCDP9N8HLyr9CloOejKH9H+JyLQ3dw3tLc/pbAs81W1df6PeQxjojy/GFrfawq8SOEdQ/j/H+FUmiwj/mqftaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777453653; c=relaxed/simple;
	bh=D6Ar5PQ5p7gEUeQ68U0UFYSMnXVHAllrH91ZfA1Hsxs=;
	h=To:Subject:From:Message-Id:Date; b=Aa039k9/q3ENQ0sqUmeP9+zZqTjiu5pdbFaqug439njnMXE8A2OS2vIpvzxwJ2VMz/XAENVotPuwhJ5PvjO0v3nWHROVzf0b4IkkJsqRltrLRsZ3c3pOsP0/U84rouGCC/XgBOCumPIU/sWJshpDjU0giknhLY4W6jkwmZdDbjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEcVwV5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEcVwV5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA201C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777453653;
	bh=D6Ar5PQ5p7gEUeQ68U0UFYSMnXVHAllrH91ZfA1Hsxs=;
	h=To:Subject:From:Date:From;
	b=hEcVwV5OWxHdmUwsd9XSC0hKHjyhIMMj62f6Vib5UaZk90AywdLO1u2DkdnM9YJ31
	 U0IkOi01kQRHUfKVB/RrPA4OPeFyUT+/Fuu5TPGfIldLHn/wLKSrmCTDlT+Q04ofUc
	 dQmuWHxdFNctj9n5jtJb8Th5OVAFgjH7FpqrLX3eemiqt/YXwclL90L/dewbbJucLt
	 mvcNOy+a4aSSDLkFF8/6BX9j2fs94vYMHjFgpkVv/c4r6B5qrv7g4KSynsSGgTt+yl
	 WKzasS3Eztju51FSMU7utPSFFI9uC0I0DMLoPV/TLxiC22YJB1fyjAIaHI10l0Lv52
	 S3wrr2xOPQpLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0FEFF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177745365368.29954.3323579736581088859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb15798f134a582bcdfaef72ab6657b580525578e276bf9e18e3274764fca9d1
Date: Wed, 29 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777453653
