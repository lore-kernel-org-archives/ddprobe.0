Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337FD23817F
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 08:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765615974; cv=none; b=OlwBAKu1FEyCUTxmJhgURn7QymR7jhC736Xuj2nKHILM8zh/DYZx0CpE8T30+Wkb4PfRrPS3Xn1KFF8KYPS7BSnucevaEdR9tqRcDOSerrqoCE4kFhz1k2Fn1zbrxBDwmLVABYLAdX7ohLAH+F4qNL8liEK+zBKyiwENjSpPaD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765615974; c=relaxed/simple;
	bh=vdsv21HKL2rePsrK7aHWxrJb5p/YG53tIxP8SoDTiWc=;
	h=To:Subject:From:Message-Id:Date; b=ZBip7PpruGfzNPSJ6ryrmLMNhu0ERthyOTsdKQEqt3v9X/FYEvZmKm+o0kS5bSAnVekLfqtBA9gDnfqGbhzOXvBFoeYcmGLMM4YNAvWEWoyyOQ3zI5WLA/C7VvHddg26+me4RVqxZmWHt2bw6l3IkK0LQKymKXx2WZhddQN+Sbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=liTuIzrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="liTuIzrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AFAC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765615973;
	bh=vdsv21HKL2rePsrK7aHWxrJb5p/YG53tIxP8SoDTiWc=;
	h=To:Subject:From:Date:From;
	b=liTuIzrp2im+JE2Ka3TEpeCBAohVuKnJ0dFCrZ+ZzZ/YjXOVKP9trfYRT+Xmmcnv2
	 V3m82tSS7Bvtc+beBLz9tJ5XOpaAIudRXjpDI53HPZkffqC37isqtyH+74VIhUtyGJ
	 6neLFeogp+CQM/K2PPoxX4MjBwJtZBv/IHvO+kmSznAon9GwH0JoEO60IHVlEuBx9N
	 p22CLJhu02GS4CY9gqqk2Y60EuSJHsIZTmDzFcHwvPenmJDWOTMmeQ2NHAlympIn2d
	 nDldc2CA4fAKwXibCW4Cg1r+Z643KbMdAmA3sFg53G2Crc0jj0PGIpxI56rIetSBl/
	 X60cetTxgOQNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC2D59F7D
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176561597358.21967.5944288753564871557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b21a617395d3c444ec6c6b32646af3759a5bf234f98a4b84eecea49f583c8c4
Date: Sat, 13 Dec 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765615973
