Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B5F79F0
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 02:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718418503; cv=none; b=qAa2nUNY9OxNyhwA6Xk810/5IImyH7/gcUdtv/GD9A1YJzgRjtHNfbX+zdJiawLZvHsr/YpmDeb8x395125f5VZGGeKSUQTUiokZDfpwtEMsw7SXuc4hWb/CtPo0+7KkAz+5Kv8yKJ5BxhE1zKej8GT0Nx1wpA859TvlTg7AlLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718418503; c=relaxed/simple;
	bh=eH5QpmnjeWET4MMFWkaB/UnnTgeqLh6PTd5yTPbxg4w=;
	h=To:Subject:From:Message-Id:Date; b=jv2jA9Z/QrgvENG6joadT6am4u0r6/KHsQIXl7akCkrXt4HteEcykIvx6nfqrY1AC/56P/fnb3Dh9V9iFlgMUAfFiV++c1ugLyEAtLdcH/UIGYfNlQ3IDKlB1ncCPpyO0Kyapeu2Ak3AYfU1q/SuP33zcd4BTB+Ozk3mxGNjBIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PyCzxcM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyCzxcM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E13ADC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 02:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718418502;
	bh=eH5QpmnjeWET4MMFWkaB/UnnTgeqLh6PTd5yTPbxg4w=;
	h=To:Subject:From:Date:From;
	b=PyCzxcM25j8VdiZESXlu1W1KDHwBFJZsxf+09MA490Gv2hAtfprQ24QnGrZDDsQZB
	 ktbsrcY+ak+Bj7/FQwELqehPEifyDfkHUU8SBcpgjy71HdWttCqaL4NpvwomyG1SkH
	 xMNEtjn1LqP+nGB8WFAZf5Wb3jnoDyKsE2LI3ohB1JqUQEAXQfglLfwz1cTs5Nid2M
	 GOPLnUbd/2qsDlIcAYtyrV/m5xUsSdFA8OdnWAO5rF+qRq6BN3RaCoU2jUPwDGjIpk
	 FaEeWVOt/V5GCo30U55C42dc8eutPTm8fsnurzMU+iSRxklXeabOcU5yPOa3/9mejE
	 hTGYbpozZuGGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD6DBC27C6E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 02:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171841850280.23981.12480862580202117776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc188e141a1ddc3ed17e3af9cea950bfbebd2e951a8d245ad94adf1384de2c0e
Date: Sat, 15 Jun 2024 02:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718418502
