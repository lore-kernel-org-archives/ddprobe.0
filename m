Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295232737EF
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754648394; cv=none; b=p1DCamEOFlxJ7sRE2RgZ57L3lhDbMEOV0EnaU1A1KR8RRL5nzvQYxkeRN+gcDwap6FLLpxFogVLV4U0jCYUeIns9zMmfXdoSzyRxMh71DchRTgknk6tHvJC+uONF/zcshdlwhBlxQLAzKFFcYqb4UkxtMT/YJrQJdhZXwQaqSc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754648394; c=relaxed/simple;
	bh=vivzqmEhoq68lRQ/JbFWG/r15C8HvsfRvNFXn33gyT0=;
	h=To:Subject:From:Message-Id:Date; b=sVVlxvKJuVLs4lGBHvM1EaxSxqKjgke0Kpv/p7+bkyfufGmof+S928cXvmbUZ1p5ZC7oPEAteWHSGGjVtNuTVfuGQFVSNV4yMnRsX4r30vamUrnr3r+23usTSG7BC/03L/R+sdOf9IkHPd6GaOPRdUAjEn7+Xc9FFnIbYsOdf+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCUzBnhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCUzBnhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A139CC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754648393;
	bh=vivzqmEhoq68lRQ/JbFWG/r15C8HvsfRvNFXn33gyT0=;
	h=To:Subject:From:Date:From;
	b=SCUzBnhRZkC1vdjTO9eUe9PefoRib0SZqy+5+XbFCg4rsgCJyfI/UAfoYryRl+GVn
	 vrCTdF4MZJEnstK7unND19x2/1n7QZqgtgi8reTQnoGOoCDLUp8OUOciOcODkITBsl
	 n1+6X+OcOZwDRsNNQtymt1fxrE8T8cL87zl/7U8Bh3E0/BtxJRj3H1UXhACLD26bbX
	 QXG87lkRJg82FlNPFtVhIKRtyYbJB+Q6yKmJP28ApWwqW+G7E/jVOXsvsQ4m7B9AfI
	 yB1Gp3Pxflk1lVZBvUzoyeQr7hcMbW39mCCFAzaLap4cny1xBXm1ZPd+H9w/5acvJa
	 TO8oZt/J3s2vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F62FC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175464839357.10981.5381932532095779119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b8a915656fac68c84cc2c037dd388e555f5212213538b245a16d8fc46de2f90
Date: Fri, 08 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754648393
