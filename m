Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C721361
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752970194; cv=none; b=HSEgzPDtPopr5zVIqbZCNnONyz+06thPDZQ2XSFnChFSgynyFF5xmXnaizYN7SbZT3B3I4GRHQ1mV8RWR0/uFyd+vikqVCs29p7BYCZZqR1n0uyiPhxgZLZZGqqSDvr1CKT0URS1Yub7o0y3zQkGHl2YrGZZQkti8cLLffYPfuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752970194; c=relaxed/simple;
	bh=v17DkhbvQE+xOI3plqCDhyL0SDRbtPUgoQQbm5J3SUs=;
	h=To:Subject:From:Message-Id:Date; b=Yv5t75se9KY8f4TfyZyv2NaRwGNyUVRNG6rZWFXgLtldVF2h3IaLiPqzTCbU7HJaFKwPYBazRHrmEfCaUEgyytZPYl/TlzWtsBnB/y9X2DZRLYjOJ1oIjyxtRcdTIojCVj+KLCF2Z/xl36eRjY5AwOT7EuGJrboyk4UhIZn/Ons=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NN+SrqTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NN+SrqTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D42C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752970193;
	bh=v17DkhbvQE+xOI3plqCDhyL0SDRbtPUgoQQbm5J3SUs=;
	h=To:Subject:From:Date:From;
	b=NN+SrqTE5NO2IOE14ATu73HuU6FnB62L2BhtJlzW8zupgQkRONDmB/oBr8+WHWcHm
	 8/nRjtVjfw+Q6yRdfWbucC+Z7blRYhB5y6ba2ahavwEogXcIShvVq6EoWtIrCn7b1I
	 5M3qhI7XbN5o/XBM0tFR/MyJcRstiJqGlza2y52OeubDgj/qT5HkgQwfx8AgM4qBSJ
	 0GdILBz0WhYFapAAuspNogfxpUMwCisl5ay4LWU4+fNReko+NezvFfMCKROcNexM0m
	 bmFuWofKM/x1v25xWZMCaJgo+GtaXhgaX/I1Dzok8f87allBsPnMETlvhBJ+G2NWaU
	 d1dww+C9TS1Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC95C83F34
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175297019357.30177.12581596732883495814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a059547db60364cc1fdc8e0b5ee407f1c46b999ce7448c5066acce470d5c9a6e
Date: Sun, 20 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752970193
