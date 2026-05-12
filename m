Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B2023EA84
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 01:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778548234; cv=none; b=tFQO0H0p1IdVuvGP93HaMyOWPajBRCzsqY+Ya1DbDiLbAwAx3oxkLblnmCRhZqzvcJCqG3AhUU8ubJwgM/ETpH5B4Shj8A/TfEjxKjCD3KWn2WCJdz7TMvkfM3yuQc5oE8eomTho5Gl8H4n6k0PN0HGIpQScAZSVwRqBMjdRY+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778548234; c=relaxed/simple;
	bh=/r3BvzD3wE4HYTbsD/hRImWFQKy+LrvUheKL0ArTJL8=;
	h=To:Subject:From:Message-Id:Date; b=Qr5doOaILOdp1X+OckE9v2PZe13YFVwKHQlxXCc1UrCTH/jGv0YOsTAyCFV1yoM1810Lop3td/zByQYw1FKpXpUHQhzS83uzJGvkTCwOc8pO8cHOC9QhGcGjt/alR5Ifwu5WywNSueDlZ1VkzaLGP/M5ka5eIHjoaUPUQCub2rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQR832zc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQR832zc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B7CC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778548233;
	bh=/r3BvzD3wE4HYTbsD/hRImWFQKy+LrvUheKL0ArTJL8=;
	h=To:Subject:From:Date:From;
	b=IQR832zc2nNnp/UIa4OmHKvYOjxXLoTJUI1GthayvMPxz1L8l94nHbln87GMjR8Yu
	 JUSyNcuciCHsQfN7sA0CoEiJBfwXVV/cEMv7hiNUsJ2i+/nWrN9mqF44Jn/6pdAqqn
	 8qZxl8spso5xbiA7v3fZoDPz0H5O+tK4v8Tf8NTSuuKpwnFQeQLpbJf3/RkXPP0T4p
	 2JXU7aLTvei5eTHMWewqM4AKK187DpSL04FQwqsUPb26ZCOmW5J0foC6eFJJAKGTEq
	 WRbzwsQybqZfsEXncz75od51y92xU5aiAplBW90jPbg/JwmOSUmuskO8CjOr89Ispc
	 bReIn4frZWDuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5BDCD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177854823368.7072.126074842659719403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ae851227e3bc66e010746609df121bd4378b6eede6af48f0e119d89628af7a
Date: Tue, 12 May 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778548233
