Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B7539DBC2
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778973634; cv=none; b=omxiLc210OuHwtPnAN2H3uHe5KZrTuSLCnfNi7ePDdsPtP1j8IaG18GZbuJwNQVXyvfl0WCZCXCHru8IuExdnH+e94rxJGFttIVTlRB1XCdwuH67/J95/WVcR+rQw2Ef1+PELd//gZXcGm95DSyn21we2h/sMFwmL6brh9wZFwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778973634; c=relaxed/simple;
	bh=k+CUmXOOO2wCtv6FlTsP2JF4gYeTlgE9a2wzzzvA30Q=;
	h=To:Subject:From:Message-Id:Date; b=mblh4FYOclMeV/Jx6ZN37onz5P3y2q7Nyb+9B5zTeCw+4hMrs7pe58TdFCMH40xzyWvBYuFCkfN385pZ+fJ1Lkgqebos1UfUur1x8EXyWG6Iq/QDVX0KVsdOT6PUZ+gfYXRpUI6YzVTuirzrWb51dc30kRv/JieylPmoX3PHezo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+iJZ6YS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+iJZ6YS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB26C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778973633;
	bh=k+CUmXOOO2wCtv6FlTsP2JF4gYeTlgE9a2wzzzvA30Q=;
	h=To:Subject:From:Date:From;
	b=T+iJZ6YST8fxzABRC2nkeGwNDQgiClN65DmXcANh3FadM+RAzpPprv9JurtofCnkt
	 xTpABiYK3NGLu6PyeCh3oNVb9RXpOPmtuaPPfgiy40gJ/HZnGla7cUC8avNJS7Tuap
	 an7vp5T82GdzWQmWO4xpiwcZq6MoZpDmGhqCvt3ETQeNqq6SgJst9bOyY7LaCgdAca
	 fsmqGZguU4ZEDJO22pySQIZI2p3TorCja2PU0DrVmFDsYzd514INtpNapwR/B9yOMR
	 DG9ZMzjlYCF+AihkGzkt5lgXB0VoGcqd624u/pe9u63ojoa7BExUXBtnGAP1b96p6F
	 ezFufJg2nHCbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA310CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177897363372.6329.8777119597126136297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 283ba848745382bce3fb19d76e8c555477a5dab54b8de385dbe7347b34f0f9ed
Date: Sat, 16 May 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778973633
