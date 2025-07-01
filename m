Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171131F0985
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751339394; cv=none; b=PMuA3P8GUw7wJyKqvYB0tY1mnQE3a1pxM1QfF3mYNsvSzuM3tUIvMBNFqPlNSeSv+rCVedNfOC3t5LnZifNlMOaB0lqzHZ6lddy+VD1l8kNpxLh7MGVObKAigPonVK9XKvgalgSmkn8ML/dCPipco9VqSC2dcL8KXqRoxYZA688=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751339394; c=relaxed/simple;
	bh=3uwUipIDuP3j5AtZaiQrs/UbCJ+Z2irmLrbLwWGrjg0=;
	h=To:Subject:From:Message-Id:Date; b=pB3SP12Dk4qhobRKdtHmnN7Px38SDJpkvIFPJ6NkgBRUVloRMJ+MhqGDnFOVdcDSfTiQIZQIVjwCILXBh+fZmzvsObtrULYRuKLhcgapieUlLhaX0C9d3p0yKLau6I+//aXCONWHF07zPcaMs+KKXgDuMm1D0hpk6rzFoqpMhmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNCHSRpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNCHSRpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31D5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751339393;
	bh=3uwUipIDuP3j5AtZaiQrs/UbCJ+Z2irmLrbLwWGrjg0=;
	h=To:Subject:From:Date:From;
	b=UNCHSRpXJAFhx8Ur7EmYGcvUJdM3Tcx4g1a2OV4OIClefu37ZNqPH1Mqp4giQoNKa
	 cSveDtzLnXyBpqtWrHB9r7IrEzMzE/eMBtlyfNhzNQ9Dz7cb0IffTsXMsFxbIPEIT8
	 NknBm1Cvq6eo1FMnfWDiLTrDn6sI0r5vS975JN+aCGwmzIwxA10jc4rmDQeMBPulDk
	 dAId+bgwkCFX4KWDllWr6X+j2eZ2YS5Itp/YduTqbosXuM2ZiYly8xDi7gSq5LUdTG
	 zuIsVW8kEHfOqY+8uoxGo+um4fyhVAV84cTRZqBwRYvxwvkdf5Pcfv0VaeECU0Uu1f
	 ybd2/h3NlNtDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9057FC83030
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175133939358.14509.6181656640754972040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e854232b77976ba204d9a064ac68143304c496c367fefdc169964943b00b1667
Date: Tue, 01 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751339393
