Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC0C1A76D4
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762088994; cv=none; b=PmwdBiHszTclMgp/KIZ/LqXibAGP//fExJtjWBbG+5byef0a7ZQcClUo3V7bHpUAbzI4qd1JcqYLMokoV4DRTBKtBCCbRbATrNzdbKoct5Ji1KVKisFhA/awrHyhp5Z6P8olgoDpATBLIWxUN+Nlig5iYHI+gVahAEuOL0zRR2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762088994; c=relaxed/simple;
	bh=y8vITb3QjMGJ0Y5YMMdUjOIOPhPO/1k8JDb1OHt0Vm4=;
	h=To:Subject:From:Message-Id:Date; b=oF7GBYvX+Kv+yNAVwoQZMNx8eXvJuOupi5pukxk/bI8NU6DZW1uUiORtCVjXpc/CnhrezYe2j5u1e4Ioeb1iIo9XFmFVPzPKju7fQrGpcZgCnuzhH/nUk9dLgiSNScoVv30ny/Lt23YBnJHMfAqPQXoIHhSw2RaSP2GweW7moR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVhrLPEN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVhrLPEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AD7C116C6
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762088993;
	bh=y8vITb3QjMGJ0Y5YMMdUjOIOPhPO/1k8JDb1OHt0Vm4=;
	h=To:Subject:From:Date:From;
	b=rVhrLPENyw9U2bFZ9fXyobQVGRz4vEUTdTaH/nA2+iR1Qg6ZJIrd9jC7tjlwPPQ7j
	 TLN2xwBXobijoqtmI3Lc6J3bI6eg3YXyQoVSK42BczlsnbUnoR0pwZWlOQs782/TsD
	 KmS6MPEBi3aD3weyBchwooM4LXMR3pETCsg2QEJ0ZloPfvWWf1SLVZ+zVAqlNKUBr/
	 zyXybDYVurXJqebMnxYSXcdOYkoX5yAFCoQ11dmaOwZlvwWkfrtVzLfh+U16yGrVS3
	 MRKAbhtz3dfY+P/UglKU3trbBX4HoDCIPHS+6z03aDDKVaoOtknDETHTczG//qPrt9
	 snySjBP0k51eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E54CCFA03
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176208899360.9181.11898580912203628657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd494d909ee9a11d7937a62fc5782529462094952eef83a012b2a7ebdb28479
Date: Sun, 02 Nov 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762088993
