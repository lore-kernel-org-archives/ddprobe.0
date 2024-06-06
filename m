Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD7819AD68
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 16:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717690643; cv=none; b=Wp7szsBbEb3o+m9IbZ8CjtFiaMmPUAdQdWxsRQB70KbFDRBeaMP8t3cutWJ+mNy7LXYRXXSsvjSJhLpkEdjC8mT1fTUPi3YbttXFOw4qlIctNiV2ABm5JpotVT505SoYJW8LxNBkGIbpmd8Fz1zB3Xd4EG87WJLdJLJRNgFYW3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717690643; c=relaxed/simple;
	bh=uU/5KoymOauWnkBFz2zMY64YDVNkcI5oE1hs62OUeYQ=;
	h=To:Subject:From:Message-Id:Date; b=exOjdiGhuluDDRjIj+CO648a73m52NXc58dEPi2R85CB4Uh4yy2J6NeAIVKMKfitJ/fhugHZFC2V58gbVW30lY1aE2Rdpx5S/omfDoixsMOxCRZPPCb6SyhMJ4n81afmT2FFpPOHR+lU+GSbHxTQwfeT8FeK5FnyRHNRFKbDDuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnfTa+tt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnfTa+tt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB7AFC32786
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 16:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717690642;
	bh=uU/5KoymOauWnkBFz2zMY64YDVNkcI5oE1hs62OUeYQ=;
	h=To:Subject:From:Date:From;
	b=CnfTa+ttFDd5XQttiKUBNoMu5X5HdxND8BEjPWXRe+nk5T097/vfV+SZozcLRh5xw
	 0ZXdVxE6jm6ImUkTT8i0u58l8aKKjWYoj+R54oNlsuwUzyowQHQBAw4MFLP5pGjHhB
	 q1p5vriopAylTPCIIzbTfOlQyhjc+vIKp7rA3vs8a0iyLOQyVAmKU1XOQgfvu38+5B
	 wPdeNI6ugggT6pondnzKib4mc4jydlI66HJBdTl7SL3kPIo9w9ArFy6hl49vvTC1P5
	 R3KR/h1nEWFhBPM5jIidvyXrCeWow3A8UT43yzW37DLQp1aU2DL8ebdCXkZgkzHEkZ
	 CURajmngRjbhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C93A1C27C54
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 16:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171769064281.13421.6712576096014210040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff226dcc44a5e41d5b3d34372c8ef3808a3d489f8c05447914e8cff22f738ad6
Date: Thu, 06 Jun 2024 16:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717690642
