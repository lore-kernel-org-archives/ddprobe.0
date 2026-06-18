Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D2330C153
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 16:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781800594; cv=none; b=VAhx/25AxiLlt6+70vedK9Z+105p8xyCQQawEFmyqQ3O23w1UZAK6RW5P4J7bCk3soDgBxvxQLcrfKyW2kpVGffl2NWcWuYjXQEix3aTjyepjt94DnH1TWNxh5CfubLi4qogsBGQXZ/IIJrzjA3g/nmCk58zeJ6+NoeTc6EBmnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781800594; c=relaxed/simple;
	bh=PvZgBlg9KR4Fq4nQI8CohG/G1qWOG0Covmde6vRuFDU=;
	h=To:Subject:From:Message-Id:Date; b=RZR6rfi2O6CKo4lzbCW6zYz1hAwGIR+wpxPPTi0SKK3oZcQMLjf3tSZ/iBsC4npUM165NTrAdYCNpEjZv2wlX2bbfHCt0K4uyfjqzzkflgb4+k562F13a2J9MrYGDBGgg/zIIwEhLvArEyTU1MRHed52Zadv1mmOZjf3X34i5wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ah+DVWr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ah+DVWr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1908C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 16:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781800593;
	bh=PvZgBlg9KR4Fq4nQI8CohG/G1qWOG0Covmde6vRuFDU=;
	h=To:Subject:From:Date:From;
	b=Ah+DVWr71lHuMVJiNHlczzHDLCZHjihggiDkzO5nOOCLNTDZwFy3Lmqmem54Wo+CX
	 8GdREGGHKSVAF1DCQVsYjFgJnYHCU+k3W+cpUw4hktI9l3YLh6xuGeXzsco3CAWw6v
	 qLIb8ASuAhpTl1R9TO8pEzo/ohGjNPVviPlh4sknyvpWbFq9kgXoOxW0ou1M+dDf/U
	 hkEnmNFy4Zume8z7TpwFOmtihe2YymrWdgd/F2wEuXY567DtW+j0DDbtJX+SpMC3i7
	 ysC3R7nsPJzZ6NnOQiyd90ACniqwI++rgQxOzfu0c5WCIQHLXH4G4HAipd0/JTJO0z
	 6rCHpqAT4iEBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BAFCD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 16:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178180059372.13133.13909331282500821372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab8526edf72709e4eca83c7f97c6e78d48cacfd02ee1d5592d059cd1f5e5d20
Date: Thu, 18 Jun 2026 16:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781800593
