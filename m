Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3750E679E5
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 08:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717403123; cv=none; b=jHSq4GJcc6Z3jX/coFWjuNniQTGOKd0b+VEj2IAHrdFDqUfvsmqiPLxLYIzMvrKc2cp53ZzPMwnjzbNTfU+GzBwWKEjrC4sxXp0PvpbHKCN8MnLe3BnwLwoA5PWwdNSiakpn/NFX9kQZtXHUcCbhl8YuButTiHNqTO9zRN0FBsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717403123; c=relaxed/simple;
	bh=FyU+n/9Q9TWWhbx2f42gUmfLlbP3n0cja8yn1rMTxMc=;
	h=To:Subject:From:Message-Id:Date; b=O9rV+h8Abspyk9xgi6hnNVTW6EAIgyxsNv1myCJQ6NodSexJB2GUwIs06mLyUw74K/HIhGkSZ7iHUSEzUT3QUDpezb3kq+dJAU2Ms94RyBdsMvl8+6AAVqfpGXz1L2sD9vx6Rnqr7p3BPMTpkkvPfyEglgUnsan1R4uQ3gjHsB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGylFpDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGylFpDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44DFC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 08:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717403122;
	bh=FyU+n/9Q9TWWhbx2f42gUmfLlbP3n0cja8yn1rMTxMc=;
	h=To:Subject:From:Date:From;
	b=oGylFpDiq1xTRmiBJPP5Mi9ZDEghEdLA8y+2NYi3cZ0UDc6k+wmg8sUNXcg9WJYR/
	 Uq9GrJxRHPtFSnAozeNq353fcg1H4rsCcPRdlMvKQsp2xh8F0jNYUA9Ye/gka5ikN1
	 NEOsMsrzHT2L3Ew3tnbwK6A+qAUUFc08S6tI1wTQGbmrpauaDOXBGr+54hT73yoph5
	 bnUaxZ03wGXI+WV6WNSAijEn+Pvw3ZRfxyvTiwygJ0afLG1zFJNLmxmg14/hcxOwQg
	 nL6ZcOBASst+FDXrLRMInCPndlKWXQpB8FTnnnoBW12UrhFtgSRApi/gNNV6o9OXUn
	 zz2tkl2GMnCyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15BFC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 08:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171740312277.2330.11453901833296836517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb76d42dea0dc1419b56585224611b75728b471d6fc7c1d17a26cc0ee7bfbdd
Date: Mon, 03 Jun 2024 08:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717403122
