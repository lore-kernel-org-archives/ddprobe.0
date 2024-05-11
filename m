Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B34D1D54F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 20:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715460143; cv=none; b=nNmaDH5Of6w/MFZCs1zt/hYz8/INAn0AUK/pQXCw6WMwy5N2kbHSIblbHT05I5sJK0GP1ufDza4ywpn9NzposEEzvj366UkTj9f2wAH/uLNyj8cvJ8EaLOXIISAK/s2s/HoD02Gn3rz5NqrZuPQGmo5o3o366t6pDv1WSrBcbl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715460143; c=relaxed/simple;
	bh=WC8Mme7ghihFm1vka4cOEByoiT90C/ulZuQt/V/n3nk=;
	h=To:Subject:From:Message-Id:Date; b=PoWt3fyDDFEZULlV/two3BCXG3gwReX+Y7MB0UygQndjjaoyCFnB1m0xh/Ek9i6mPinsQsl4l5J4pqpjq/ihIHaHckbQagvOEyRFHxgu9NMDDpacvjhQ20rIwK0txf66cJvTSnCtQ9ykQP2zkLbEG3wrcevvSSeGhKpWA767Wug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbeBEbYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbeBEbYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D45C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 20:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715460142;
	bh=WC8Mme7ghihFm1vka4cOEByoiT90C/ulZuQt/V/n3nk=;
	h=To:Subject:From:Date:From;
	b=DbeBEbYhG3dFAp6j0Yh92hSTR5828UJKfhxTtvPGvEKh/+CESFMIJkSqVHMBQWR0I
	 Bf17ufZjlh787O8UIGKIi71zG++uPhjBUdGo2nAS2RdKorsQGvrmQfrnXXnPp9qDsb
	 PxObLVIXxKNS6ModD3iXI2XkBw5+KG+9ZdJPCNH/UQsy4pOoBWxgLDZ77OjOQpxDGQ
	 SlTIBcdz4tQunBDj43y6zcTaUfMcHOOHNGiXmzamf6hlCLoPHE6hDR64ZNbcG7ox2l
	 1Wk0qKB2ozpGNdhWwPlNKMPWQgFqxZQ58DBuRPXIE6ASOs3JUVSwXHIzogf8v8AMJI
	 aa3/aIGNe06Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00E3C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 20:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171546014275.25308.13604831698352116630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17fa47398a55898c3d638694dc2ad59a593260bfd63965d4570c2b4aaa9c2db2
Date: Sat, 11 May 2024 20:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715460142
