Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77CAA2F8E8A
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789497634; cv=none; b=ipiCUAJqIDc7U33hYBRTBq2U2NBxWmJB0/cl6NQxwUZltnp8OB39LGAzqB/eKFIpNkJNz+EAv4wP9MuJsAHlhxWxzuluS2dipeGr63YWPLCLN9MnvT1pChrWi0QjoGDnr2L8tvCEqbgssC8XDJlLFC6aVNXVjnpvknxFH/EmD3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789497634; c=relaxed/simple;
	bh=ySd04AnCqv/WPd5Mbrx2F5bsaa2eh8NNuYhE0YXO5/I=;
	h=To:Subject:From:Message-Id:Date; b=TGrcL/Eh9J8mcaeF9tDXnpGbwSFiy7eTQML5mkPPcnTGSFFfOj/3pNCAPs+0GJ+dzatwOYeFb5yetFkj5GKsrp39isNEdHEPbgyl4U/2UjgEd4ourJWwWGadvbADowr1Qa9RMHTlJn+1qteKUl5MgyO8hLAU7nEvqGdM8qunqqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibe9r5sO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibe9r5sO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD198C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789497633;
	bh=ySd04AnCqv/WPd5Mbrx2F5bsaa2eh8NNuYhE0YXO5/I=;
	h=To:Subject:From:Date:From;
	b=ibe9r5sO/wBaOJYS6EJlQr0Fh8fbrPPLbFJCc0S8CCD94xoGz5hCN/CxlyqT827V2
	 H/oNQ3sMV8xuCltBMTTp0/PnrMRxmhYYnyuoMhI0R3HfMXcWB8f6ztgf0JmMysgAYP
	 VzZbZRoDclAyH/GsPWiBSE9Qlvtsx6gUREViPsaVW/QVNXbaIIC4qJs61uKttQdrKE
	 tXYO/ePB4neRlPw4UupsGiMLiDlgATaUEAfk/0Hcq+twus4pbFr96BWXwYGbTZrA7V
	 5bTC6NiDnrjR7+nGtiH0TitumSFo2QRX/EAIau3mLDEw3XMeci+uf1QrELEUqT/waT
	 cuGiytyU52BMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D02C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178949763368.5155.2638513170162267980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e179c6ddfcb1643c597e08e5edf6ab413752e1783b45edd4092902a0edb4c523
Date: Tue, 15 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789497633
