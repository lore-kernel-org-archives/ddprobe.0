Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11570385500
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770052434; cv=none; b=RwSKGQKcLF1t4i91sg0+hyYB+6IePgEgXVB/cArQohk4x03uYRhiS938aAMycZQWz3Hz13bD1a+BX0/vH0bBL2TY9M7ivHqXU2ABORr4y9SBVtpGgV2EpsfEj9TmEGHZ9AWFePNEhX7jJTaTPux3TCOtLqDyST3rEkO3enk4pk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770052434; c=relaxed/simple;
	bh=379IRQlfOFdWEmQ1byLdh54TbvECpuSqxjKppeqhRM4=;
	h=To:Subject:From:Message-Id:Date; b=Ftd0/NMpjUKODmBaBwQ6CT9YRtwQh6JssOTMTeg5spUhhCDrEUV33UXU/X2xxI3InVY7V42vy6ty5aBT0KswL+QFcVfCXQ3k0fXh4pZy8/y5clcZJSvsRnrvdsuhXyhFIc/gn0GlsoHaM8a/DcKq0xhz390ZHyphyy0dFDN3Vyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axF/HClf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axF/HClf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC446C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770052433;
	bh=379IRQlfOFdWEmQ1byLdh54TbvECpuSqxjKppeqhRM4=;
	h=To:Subject:From:Date:From;
	b=axF/HClfHz09xMCyyDzyLQLlkaaRZcbdOrXoEi2RBDQCk5Ey8NhiP+QOttBKNG3Cn
	 pCjkNqS5eDif0zWn0MgLmJmqIrWm2U2nBo1t1QwXlGuDBphFTznD0ySxh0sClK1kyE
	 GlWywnW7ApiPlx+RynIyhpSSfQlhqDOS8PMj+nlUBqPsk0zABcbT0mc1qIe1vFg7NY
	 i53WsR0le029nHql44/CYCaT1Wu2LpWPxrYM73/Qr1KHauEtcy3RFZz+DcAWZR06ab
	 wzwbvaZbQdpsvWb+IOuWY8Axfi2bWrCbEeidf8gOZbif8PKymI17vUvpGe0Yz8cV0v
	 Hc6z6ZtrqYmZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983E6E7DF0F
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177005243360.4530.8604160754332015784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d75c80c95cbadba1a2fb2f8b852d3d604612a4f314208fc22ff1d6651c340c22
Date: Mon, 02 Feb 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770052433
