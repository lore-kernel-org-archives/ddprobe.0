Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A0B3EA69
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732637154; cv=none; b=TeZAsMcXmJXFpv9mnY5Y/IUebZrYqf6NNfCwC1eAza6jGftJIJg9MJ28ZwyYKsNheApT0KiLUCdsYtm4UxNEnIwLOC0aq3HKXGRdyNeGbLV0Ym4jxZjiJuBXC/zaCCQcTbZ75qtql6pxiJhafgxnMk3D0iSaAECMaPtd3t5WfJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732637154; c=relaxed/simple;
	bh=hdDSg/zUUQibyh7yshCmXlCfgjy0M3QoeYvc5H1BjQw=;
	h=To:Subject:From:Message-Id:Date; b=aNRUHCSO5/NjlyvdFV1eJxMx9s6y9A0nTYCqTYkLHmnGr6fFtiQ3PPpLtnQ4QuHAtdQoKhUg9IVdWpWs7oX1pPgGi7fyi4NKeswvv5OiCGSYJaQX+zfjlAgZOmPLAEdm6b2p35HA8lanWU9sEJGtRwpf+nXoKHTKVxe3dKTYWHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FigknxbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FigknxbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC886C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732637153;
	bh=hdDSg/zUUQibyh7yshCmXlCfgjy0M3QoeYvc5H1BjQw=;
	h=To:Subject:From:Date:From;
	b=FigknxbDXWqIeLFe+1p5cTZXp/8kJfQR2DbPTnGr+7I+60tDYDy6D4tUkslGzE+V0
	 2V7wSP74/AElSke24Jp9sgTaCmbjqyjoUOVCFX2tIxLmknkvGQNLaArW+juhifVVvf
	 TaKHSpeS2TPFd+jdBltbJBcA+0lrZDpI7BFtwCOythK0giBP01axalHiYa6D/0oBHv
	 qyjugOqyztJNqHR+tXp96xkKIo879KBw73SASTM4VMqaLRj/GEaEuCgiQ/wj1LS7mL
	 29ohEtbn1/hPn/ZkBISN8rL+JywVg1n8XV6lNDTv9yuWdN/btxr+Kc21lCPU0NzGxx
	 oLspbreTkRdfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944D6D3B9B6
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173263715359.3690.11294417701713293144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f38e646c0b8f2a5abb6ac2ffe454b73fbb3b433797507445e579f0a09882ea99
Date: Tue, 26 Nov 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732637153
