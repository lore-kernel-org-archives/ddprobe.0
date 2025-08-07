Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7271B7F4
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754555394; cv=none; b=hjQ1po/myJIPDa94Jcpysto8w0bPJ0JsqDr9PDW++4vaL4AkA0zaNC4atyJ0dpZMstcr+RSjYzMkUYdmuJGsucCqCfaEni1IHtc1L5KLEaq12uD3kF8G5Bqc5J7iksYssAmoaZHbJZ2RX4WbAMDhc/Xy+OWxrJNqkzHnagnWqNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754555394; c=relaxed/simple;
	bh=8BSYMxM1tfWRZOPoVFa8+yJ2vTn/uFKVAUzniMIbiUE=;
	h=To:Subject:From:Message-Id:Date; b=mhWZa213OpguUu/GmWiGzGJTxFdBNCRCKWLGaMJn6x1VRCMKI5Ym7AikCunmD2h0KvV2PQqGT5X67EDUcDqN6mG/3JqAXg26tFvbvQwKH0uiPIoEPoVun0xrmJdcpv95ggkRmFkM7/k7JK6hnz7FUEbuglBxkPpc/WL/MKBGJ3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqbmV1Ss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqbmV1Ss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E32C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754555393;
	bh=8BSYMxM1tfWRZOPoVFa8+yJ2vTn/uFKVAUzniMIbiUE=;
	h=To:Subject:From:Date:From;
	b=kqbmV1SsSXdkBvkLXbEfsqdXsYpKffqhUcYO2ZXURO6dwn1VRY7NSYa/0xj4PcigP
	 X2wlW6SsI9M5uADP9SGhLAV1Xvw4a9qpfnibRitn2KKaWp0YnktZw/tFTEiOH/g2pT
	 htIRivhE9C2r/ih5joWm/OnX8q2bPBVIVs0tpmksJ3rj/O3et2BOd35PBBbl5DKzYK
	 Hv3BYQntAy8rOfSyx9p1z4+Jj4GaPkCGq5kuWGIrJ4E1sW91sNFOLtMXFzE56o3Kw0
	 OP12nTgp932oBeiVisdtParQ3RKqg4MuhKTwabuZkPqa/CcbTTOIHUBIMWMqiHbMRF
	 P7my4Uvig6xIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94673C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175455539359.29697.7553340009009905290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b731e41fa74c05a14dbdd3e89606bf3d28839a4ff5cf5c7be6dfd73e32ee852
Date: Thu, 07 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754555393
