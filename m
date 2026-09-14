Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487CE388869
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789416034; cv=none; b=Ihwv0PXKt+XxXv45dZVkG02oA+9UMqckN+yq7uWvxkFVf4BV3y7i+slhEWw+wyw9/h4ZlPX7zpJzYL3rv+PCJs/K2P7P+5WvdbOEHOVwogLUVxixvyqToIylNoT8p0FUFfPB/yzESXf0RWQGpxIwC1Zj2b5f45ItMLCGQBot8Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789416034; c=relaxed/simple;
	bh=kQ/qp9USZ06tbH87DkPXlziCursUS7abLUjhT315ymo=;
	h=To:Subject:From:Message-Id:Date; b=i065zE2sky7CUOt4rA9kS06sHEeaRfdA+e6VLbAA1rVEXGtSCf46yPhwbvru9I0lWLjMGJgTNf85JaXA0+7B06bnRxVR3kLem7z2BbVdG7zfgd9QiQ3IIr6al7Fxt/zfiU7lVQnRrOlTMennO5L2RI0VfJFVlkOlG6wTNyaGQVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTV29jg+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTV29jg+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1409C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789416033;
	bh=kQ/qp9USZ06tbH87DkPXlziCursUS7abLUjhT315ymo=;
	h=To:Subject:From:Date:From;
	b=lTV29jg+wN4RjatdTK9ywk/A6X5T1Wcamjbc160omCXrFG6QuQ8H2D/yW7472n+h/
	 s6wiDk1d9P1blGn+0JiEkSPv4NEFqrrkKWM/ceiKBF9gHzRbUtTV3DFUXn8/pMC/De
	 uCdJGgiDlHbKIc9Zi1KGvYK6n3iGYyzqCByEW3qzjJpdzWSqGL4nkJyN1zXSYQ0A8y
	 3weSTWY9kfRcVstfTXiBipDIPixTXglEHJqDY+XwpNzC6Ibe+gxXEoBEENZoAhEm7s
	 OylncHgYH1YDZ++P1hPNDGoE2Au9512MIaXlzPQAZiP8f++C/sjMvjZXnjcgb/Ky+n
	 BSSRfgH5yqDiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3C2C88E73
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178941603369.25037.9381298675791399136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58f19a41096bbea3b96b01e8bab440c0fc525092a541bd2ba692f0d6e2c2d9d
Date: Mon, 14 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789416033
