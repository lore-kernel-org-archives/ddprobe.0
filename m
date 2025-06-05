Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274072749D9
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749153594; cv=none; b=tt5Z2/S67j8lueDfU4iLkVHgsXo60WKE9h/OyMFftJyHe7nDJDJQHM7bgnAGK5Gja09dqt9w/pOqW1JOCfJWnqQTeJrmr7JSZLHW0Jm/9q8Hs3Rfg/GhE7Pgq9PDN6QbkA8LzO4Z967P4n/YjtCQIXvBkoByV4roLn7dWt1yPUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749153594; c=relaxed/simple;
	bh=uZgL3/RGJXKWJZSX6PznmStDqKttvrgfixdVvNHF9Ts=;
	h=To:Subject:From:Message-Id:Date; b=tMEAbE6EZw8JwfSsSnRKsNsGRafo/cSB/yrhZlXRzbPnlJS/zJJUSQRwoSp6XmcGWWmUO8oRCbDuI6jmmP3x7oB7f1XZrPyJs7/prwCNkgYlduAJAg5lN1/9woOlasMSpFviR13Wl0S12IylrmOgyVL7R4RC+bPr81GlL5RKKOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1sMHi3F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1sMHi3F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7F3C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749153593;
	bh=uZgL3/RGJXKWJZSX6PznmStDqKttvrgfixdVvNHF9Ts=;
	h=To:Subject:From:Date:From;
	b=Y1sMHi3FyTLEGmyBnKnb340Ys2fLIQN0+9djgJRHUpt4qyLwZ/rIwXucbVN/7ZXJb
	 snodgmcvfMldPpN+HPJDPl1UlJjnzb7nfZVXT4ApWmEV0N9yaFh2bufihZhz03cWjj
	 Rd0FWa4SEF37lK0eLOOU62Gn+1tZA7p4dSzgDadgoDssx3nFNnzydaTspSnRVRnTtU
	 +VlK6K0URq7OxyN7ZWnY4gm282Fje+4vueyh4AWsg+G5q6CA2TklYcGrcCU3by4CEY
	 u3dUduYD0RV2rr5N10Qd3+8DpMpvYEY75a1Xm36Wff/bEpfrztcqqJc9ZzmWj1u+rx
	 VQ9BNB1W+feJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F52FC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174915359357.5951.5775678292217346135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e5b4294bab71aaf37bcdf6b407abd3dbff2e38bd8d29894a8a00c4f7e2db6da
Date: Thu, 05 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749153593
