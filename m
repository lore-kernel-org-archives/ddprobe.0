Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3785A1D5ADC
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727290554; cv=none; b=OzZATeIDMPlDvGOTCONFMsoi2PMiBTYkv41hen5MfBM4RYFBO+7QksOZfiblGOdpAG233YfioIVGeuBJNbic1gHP20RDT63bNvf505978+ygsIdOBQ4K9jlIcHwDcmKQGbruSoHB4ZC0VBtdFzl0kVSqCBpKXegiERqzFhVp4LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727290554; c=relaxed/simple;
	bh=9f1X1SXDwUlW7zEq9BMFi29U+Su9zcvZMkAY3587JVA=;
	h=To:Subject:From:Message-Id:Date; b=L6Vhd+F3K46y6hXGRWZBZNzcLH7LD5DJaJYRVetKembu8Rtws64Ag9CokaE/p3ziPvZF3mWjNcwZK6uCVcyfyh6cNGp6nZe1v2pr6XYifVDf+Li2leV8oU9WwgeTAEB2jXF2EyLzO3aEo8MiZn1BsL6X1l2u3M7lE1Tm9cG4F7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXPmNcyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXPmNcyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DF7C4CEC9
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727290553;
	bh=9f1X1SXDwUlW7zEq9BMFi29U+Su9zcvZMkAY3587JVA=;
	h=To:Subject:From:Date:From;
	b=GXPmNcyIDwrMGmr3d30cKxUsxEfQAJg/CnfIp0tMd5bPA+sO0R+aws0gVwRDO9y81
	 WNJhNPV0TGbLQAuCsivNtSzn/EynN42zGTvH1xzk6Z1EkAxiytm1yv4HvcvzVwF6vf
	 Yyp5sZs554L+KKqEe9EwJsxCBXPlaaC5wWW2I2Ri3deTMbctaX0K1QWQsNKzmfTVXM
	 WFLowNau/TXnTU31ALPFTRfVKg0clCyMWm3CqAXJ0UM8VV5BpWfW73NUCeTnvWK4pb
	 vnf8w1jJJjzQ0wI+5it63CzOWADkeNA1+5hRj/ZFkjkQh0iXE9O03h0SZNdDp2rQU1
	 6N4wetVHtNCGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95652CCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172729055360.19403.451842345101925876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa74a4c74d8f6ab5f1f30969e0263289c1a74fa6204abfe814131857e32fc4e6
Date: Wed, 25 Sep 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727290553
