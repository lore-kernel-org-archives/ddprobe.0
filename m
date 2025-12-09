Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E3D3B8D47
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765266174; cv=none; b=UVQuYpzwL6/zpn51dhteNSzZ+0Y5PaV3GI7gDccQlCayvgb333LK8v3UVK4SQZ311fogkQoIK4I5ZxKoYnSb8NSpUON91dLu5q+D897rgGl8OO0FmMRamzpSTN9egbUncqmYMHF1AqGEdXhLC+eFV4VJZl5BmlX2+5QNcKmCiE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765266174; c=relaxed/simple;
	bh=zETGiSEpOEnDojLGyJg3gT+dlRHuoJIZxOPenRRMUPo=;
	h=To:Subject:From:Message-Id:Date; b=US9byLLVpc1uImlkEbwG592tB4lsDp7dNZ4FGFIiwIDJxnvHn+FKcUErTSiN9W+6QxeCZkfiJ3QcZbq/HuBS5peRTv4kvvpSVeQRU1CumGuQQQ31tM/eA/5235Piy/ONQ52FQjVeeBLAtry1f3PKKEsVygDgimmjE2C0jZk/pfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LK9tgu9a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LK9tgu9a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3429C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765266173;
	bh=zETGiSEpOEnDojLGyJg3gT+dlRHuoJIZxOPenRRMUPo=;
	h=To:Subject:From:Date:From;
	b=LK9tgu9aoXyrdn/EcEzs1K+4PHTvXI1epfiTjjXcOwi4ZuArvM1Bt52TwHRDqJEWA
	 zHd9FqgsXGboMfW9RNYRQz2g7ckO8h7weNIEBokVdUBhcseh9qMXBK1r8fX4j4nTT2
	 Ked1VrVgjaAxklos3uyqxlH4AqoyiaVLwdxk4ecQeYD56FSdBwMiVuSi2mGrErux/W
	 vHhzGmoLEs80R76EYXnNXMJ5jBsna5IM8fd4/nU95jBd6BYAFzh4NuFIZweLusAnpL
	 671Lm9BvymWTToPrXGqGf6WDEOKTdpF8LQ9FENC/gjKIVsV9nxR/qWi+QMWXlBJ8SC
	 v7x06lvsgmcnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91357D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176526617358.8797.9774836607142392502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e719d1bda2f3acefddda9c03d684822da4eb0e1101e88c983c2b95cc7a0241
Date: Tue, 09 Dec 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765266173
