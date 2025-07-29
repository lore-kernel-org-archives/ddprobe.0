Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301411BC5C
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753754394; cv=none; b=lsHoXlJbz+TV7UHkj18rbjsK9OP1dVCBLVF1Xc7r+bjTRee4rEMpKlMoJofaKvgTwkWVaKBR+53TmVhMU+UHWlSPe1B9lPrN1SSm4ynnXZksw8a2ZF28BGwtZWbCbr3zH/xpKQQkvogCd75/JvsXj1h25qRCguSIVqlen3knyK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753754394; c=relaxed/simple;
	bh=VmYmmGA01Hf144PpbsKWonkiGxSQbgwd8+csj7eWFc8=;
	h=To:Subject:From:Message-Id:Date; b=qGUhe+bLK8IkqyyQ3II5vgia4UBikWjUeKsCMYlM6O3jQuybdQlnP9crIWftl4JJ1X0xShTJwEm82r7Z2zhAF+a87LrGXs2HVUxMvQ4lCWdmXFaDhMiwdEI5cfuw+iRFH1MIN2DuTHsdQfYdULnVjD3c7lqy242ZNcr2KoMTv1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdO1WUPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdO1WUPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A322BC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753754393;
	bh=VmYmmGA01Hf144PpbsKWonkiGxSQbgwd8+csj7eWFc8=;
	h=To:Subject:From:Date:From;
	b=fdO1WUPcILg0TXhV0EJRQVrGtFj9fv76U2ElKbdzYrmO2lTA8PzuEQx/hroVOm3PK
	 by2pVFOSTwhXcBqpDqsRUf1b7IcKUL1NY7GQxFbRMCeyc27QCm1QSrj2S7UNNqhTV+
	 HOM/gERNO4bnbn8Cx2e2dqPc1WuTNAC/N9RymR1RIsGXQyANXyOiZCZlqv2IMF0cDN
	 sQLSuHmSLfVEN7CAYHERoGNADNbLcalPKLg7Qwv2qjaBLklGXHYWhn425VoC3va9y+
	 lJnjzDVEgQe9soALz+6Tu6xJ+5xsHHVQs4tFQPpu0JhyyXwirSBOUzwPR1wGWBcKQn
	 wcZAQn4YTy5qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90380C83F17
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175375439358.17823.13541818801707415789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a143afa864e1050c00d88e30577ca42f6bee44b119d7c1ac29f9f890dd420137
Date: Tue, 29 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753754393
