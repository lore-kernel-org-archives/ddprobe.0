Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D54D13DDCB
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 13:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716383603; cv=none; b=GpJoSvROt3SsxXStNqcneKaA5NRca7IN6Hby0EPsaI9Sz8DfmrEKzlp97T7CbJKcAI4H6J1K+93/qtLYUXZ8zmPPvjhaUeecixcuBf+ZjLDXlXTkxJss9xeS9QWtiEpAnDSFSyhuO5v/rV8G2ZrDapIdHa693QMQDFOjX0YGeqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716383603; c=relaxed/simple;
	bh=qpWpWr8hXLaPvrEhEJta708dosFxE0G/Ea2Ns+K7+8k=;
	h=To:Subject:From:Message-Id:Date; b=AnvmzOyRBWZkg3pRCnPU+sEeOqlGIGjgkwbFF5fGr/tkweWoHGMbOtFIRAYupgDtxhwP53BahQwjA2WyB2k3ixEk4CrKQJzP/UIGKCiIsqWQt5HlFX7m9aFZLjpwo+D/cfE4bk6Ncmvej/sPR+g3R81SZs8fvQgJfCrplZFfyq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0i1IW9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0i1IW9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8D25C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 13:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716383602;
	bh=qpWpWr8hXLaPvrEhEJta708dosFxE0G/Ea2Ns+K7+8k=;
	h=To:Subject:From:Date:From;
	b=M0i1IW9Vrd33pHiStsdh/J50tiRlEB0ZFtqa5G1FhHXzzCPipKpLu4KWpNemjCSyR
	 00aIQQfsBitkzGA1DUb3kBHtd/XCRiUhIirPEIDAuPn0D/xLR6d26ySt+thfkY1e1b
	 nYGoCYyZbqK0OX4ey82j8XAc8dPLoLNTgW6oaHHgfO3dzDGCsyrdgaARjWeS69D3Qh
	 rUV/aEHR9tjf7KjUKtCKpPiVQYVmm3KrV1bj9bnzET1viFP7uiJv+bJgzrdF7XCVBC
	 T9LRkXLa5z8oxRj3IpSvZIotgZ//IZS9ALe9NNlvnhOXRiT8j8DzhTKehLyuZKmVCX
	 L6Od8eenKTyMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9BF6C25B7A
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 13:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171638360288.30120.13132072711668753032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee610718076c2c790058eb7c3758eaed922739163ade41e47c1aea7c60c10b0
Date: Wed, 22 May 2024 13:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716383602
