Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1001322B8CB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761054594; cv=none; b=KTdix6Io08zeP1eHKjOzySrVTEBQlcR77WrhcG7Wj/qeixvp9RTa+qb/VJY6Rl7/wfPsF4KpQNJA0RTl73qROr0U9/k4bZl3+mT6fsVHUw2Kv2roNePRXM9iYbIdeXZwjY3gxu0GIM8R1ovYN4kv3SPdVBvHPGOFKZeNEKuGDig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761054594; c=relaxed/simple;
	bh=hWl53iTHEFrEKXoHKPbDgbrYmKcInR2/q0NnEqXQIDs=;
	h=To:Subject:From:Message-Id:Date; b=H83vEjUhGMvnIgLdyIGAyiR8fBCpch71oWgu1UbgbkLggSe9ViQl5y7H4W2EFFy2mniaYM4REEjrpVcREXk1JGc1fG7xx5G7oQu9f0NNThAvGkRF/X30U0Qm+vj3Z+JDNTuWYiQrHspD2XvbwKdVk9D3BBY8QpAK1+jWVBlTlA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdWOhsb9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdWOhsb9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6ACC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761054593;
	bh=hWl53iTHEFrEKXoHKPbDgbrYmKcInR2/q0NnEqXQIDs=;
	h=To:Subject:From:Date:From;
	b=LdWOhsb9cmW/nTp/9UCElyDEN59UdDLKLkEylROxL+9xuDG9TymBTW2pLjHJZesvl
	 Av860YYI2ZgHSZ8Kcd8cm2f0+D+1XCwBIaiGdsSbMtQ+YBzjHTYVgapm2E7MrrFNpQ
	 jYc4tvTcsC3I7904l5HVI7zKQEjmq+MUiKwO4SsFHei+a/qpSuQCrkSKj9GnhPKVhu
	 e5o6dPW8gD9VWuTBXfxM2RBx7oMdHj7LTEifHNIjLGTErPfTVfTF07sB3SLrOhrfeO
	 A5/pTaL7LZOTnbSqtxJIbnh83yJ+qPuftF3QD9oC846nOT6fPJt6of7xSSA0YNx3uS
	 VIVBUa9g3sZqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB35CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176105459357.23796.8069411986581052720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffbcbc68171c2ac58e1c9f557728ef87168497f2c2400d5a188f3f5d79657cc4
Date: Tue, 21 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761054593
