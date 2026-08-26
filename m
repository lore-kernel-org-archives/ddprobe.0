Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD0733F5A8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787725834; cv=none; b=YuefhuG4pwIFSm2zaC4BiPqC1W0Ub2klVPSY4maPnPXtdzbsJqcbfnTtNwHsjoPzXraIZrjkzbwSpql2CHGtM5GtevX4FWr6dyDAcvPy9T3Z6zs/AkvJuBTJcS1KNzJk8Ln/I0XyWVjcC06sTnRQcbHtj7CXAR5yLioOpwc7ewY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787725834; c=relaxed/simple;
	bh=0KBlTus58FT6zNSltXnW3tIqbRxYKktIR9JfbOMR5MY=;
	h=To:Subject:From:Message-Id:Date; b=KrY/zfTY4kqGAbmI575KqOO3VrLJLFztCD4vrwLAaNpxcN0IEWzL51C/jFGsia0AD6qm6AMHsen7kG0UT9zmHy5KAOsjvSfsF2rjU5oJV7T2X+J/Bc1hLaK8D4PoWctL4U5tgVmHc9cA67tbKfq9GZrkLmymnc/R17MFG9zPNEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i88wy1qr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i88wy1qr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAB33C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787725834;
	bh=0KBlTus58FT6zNSltXnW3tIqbRxYKktIR9JfbOMR5MY=;
	h=To:Subject:From:Date:From;
	b=i88wy1qrvSUmLL7bUkrTrgaRAF90F+xMcj9ibbjKo8d5PN2FkCsKdeARxTx98Htqh
	 02NdzK96xtvQSNdx5I96PVdwqUizw+68aK9J43JfeNtxbIOpXoIBoGeN/FfBgttvp5
	 zCueOMlV9Dl+BCSm1fLyFAZcl7sUQN2MXXz9kOxmo3wRXUMrmujPB5hdWaKGPvMvpe
	 1cMCWg5HHxQ9WICkerEFBbHL1W9RAijQy+1nkujqmRS4WvuwBSUR+2re7Q6En9k8oQ
	 E9tOIa86pwnlD2n4Ed3S9COMjmnw2l0LVtn3kQSm2Nw3c8zMjrzyyITr8/mr3aWagL
	 ApQO6iXODrvHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC23CC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178772583369.13501.12236883004906944112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c61090952747f8da8f6b65ba5489c075323b96bfec5c03214aa697ab6f357fbf
Date: Wed, 26 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787725833
