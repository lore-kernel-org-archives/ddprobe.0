Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588B12AD16
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788154234; cv=none; b=L71/S10cVisaYT68UH/9FKhtSLzBleKcsk08ca+pR2DTfq6PkmQ0j+8/cnSWDqooxeihpzFytBGDyas0DWOSoufFHz9uKQPvOh6Y+KvthBP9CzAETZsxgZfyR0kwlILqWJYjKPEkJ2BxQoqLqayTZMiBOqe+KSwOgtQ37Lj0WQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788154234; c=relaxed/simple;
	bh=N5mTx2uFGqMitw8VarFGKLiT0LNKQsRjaoDL5zvDqsU=;
	h=To:Subject:From:Message-Id:Date; b=n2t9vN74/lCC17gLL75LHKtmG472tlJ5tJX/GdFTy3gN/rC0QYB1pcGi19S6xrCUY7LeVMIg+CWqMh2+GZHVHNILTXKxXZr15yiHGjtcVwxuV05fnymW620lO0q5AqfM3cj1fGmQjjl7eUl2gaLGnAzVR2hydRen3Dj6xig7n9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6K0fewB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6K0fewB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD3F9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788154233;
	bh=N5mTx2uFGqMitw8VarFGKLiT0LNKQsRjaoDL5zvDqsU=;
	h=To:Subject:From:Date:From;
	b=r6K0fewBmQAD3N5Ap6IXuh384Q4BRrPRS6ndiRipkUCGGROprTut69SvrMXEbocUr
	 nNYa901hlAiWhvc+YX5SjYXOTRNQpaSBvpxmwSUXDGL962pZgfKlHp6EPfFz+FCOGO
	 shdmwVRXOQrquwMLSJVgM7575zy3/2THCZWxKygBKEMuMMGc1UUzUU2yuWW2/EvNXO
	 ke2BvxGOm01YeYklxmnzo5uhcM49PXbEfFhlBohgx35T9mHQ7uk0v4QNLfgqgvxGfQ
	 zuE3Agvt6CCLqljcADgeO048F0ZbS15OCIiSsE15W+92ZUxXiVzpBr5PV/zQRFLpKZ
	 jWNIXeOTAaHbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BD7C61DE8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178815423374.14592.9503854047102237027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c826b14bbc74b216b0f265f322edf0a91be070edd4cb260de7abff6785af3c
Date: Mon, 31 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788154233
