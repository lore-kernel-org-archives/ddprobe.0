Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3698828
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733961954; cv=none; b=aywuWQK9LCghOP7NYxWw+T5hUTq8Eg8DtyO2Ht1uk/4uT+JkbeMiutkjB0mhh3AuBLDDI1cpbdwEtKijyy3LvQJwoi/RDj6Lfo6bxpxMH2RnWKTX+CUljwTp3GmEmSmJvFF12zaMbUrzZ1VvytquMdeOZEFSaR7Lpx3b9Gftgmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733961954; c=relaxed/simple;
	bh=g0wAa9mghQoI2Yvhr52TLOfTZq7JFNIDfK/wKEFaJNo=;
	h=To:Subject:From:Message-Id:Date; b=El25pbMGDuOnjuj5126UaHKkmPxKVjJsIEdGS9JLwTp7CLCpODxRPl1IJk5n32vhaQDpJ7/IcXeEE4eEGMKPSnhiy8xWYX5OgjrZ5zrBigLV6tz21aGiD29EJaPKDGLHIIRNlZSg7yUfKU5o7NC/FVI4rPgGxBP0meS5IjFWh1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JAUouBBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JAUouBBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CF2C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733961953;
	bh=g0wAa9mghQoI2Yvhr52TLOfTZq7JFNIDfK/wKEFaJNo=;
	h=To:Subject:From:Date:From;
	b=JAUouBBY+mC7pe6uMHmlp8V5wZ+psmw3q/bqxzR9crd1nE7dbHi0flRkkRbTNLRn4
	 5mR9LljcDypDFESnDHpLUz1Wb247hnStmUQg0ZIO8VnPENf6hMgFddDv9K/si7+jiJ
	 7BEUYW6/lohNVuq9+bgtiPMV6D4vxJnFOv3bITlS/KG9UdGGQRSpNNKWoojBRJhHHF
	 r5oyJePg4v0bcWX/kaTiArROfZJ2zvOlR7BfYGEaD4sxzK8MtMkkSPaBBucG/swh4y
	 3qmHdnUgtlsARNBChU2iMjNi9HDaiSLZdtjPPr2dfvtwC0B9Dnv/mi+hVa9GQG5nVP
	 VUVdH/C4uCX7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F03E7717D
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173396195364.13292.9054326494912953300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72979661f94a9279f61efc046dc0422bdea875256008e3b72a10d7dfb3145db7
Date: Thu, 12 Dec 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733961953
