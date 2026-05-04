Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5E5F37C909
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777888053; cv=none; b=G4qIM2vhNc+eWAVsnrjg6LyKbMy10sc87MmBDMeAmEMsApfJJl1L3ntk16baAr4ZL+wYvyXefljEdqVRl8ftFvWgQUuMFFsuIxEZJHl/qZsdUmEAMv9vjbuFdCyagC9SnmWySjJRcmQBqkvrk4KeNR3Ha7SgTTRdq12ZmLZX/44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777888053; c=relaxed/simple;
	bh=u9hnJTqI0v6kE7SBOmKOh3uABNoQh6DjtYes/60B/to=;
	h=To:Subject:From:Message-Id:Date; b=gmNk8nElhb8xClSRX+s/o/hep/RN3biBrDDT6WLqKJcn6V3OPRdxEnKkqnKkUTKyga4df9p/NVNUk7REwPq5ptdIQ/E+pTeUmB1qcKeSd+CbGGU7NBWaceHFaNZtUjjsH2zRsSKK3s944bW0bw6zwxjuv9Vf2eTyXEr9nBTEgCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aj53Hl05; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aj53Hl05"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B755BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777888053;
	bh=u9hnJTqI0v6kE7SBOmKOh3uABNoQh6DjtYes/60B/to=;
	h=To:Subject:From:Date:From;
	b=aj53Hl05zsa4rFCSGFuDSsCtCTKY9u8oUQEh2rEiVYQTuLXrDW8Ghc8nrp7DzuNo/
	 wZf/eSFCIKLt9Dk5sMLwcks7j016EwuYeb6p/Q2sd7K152umF7HW7cHxkHZ2mOHMdI
	 F6mbxbHPHwHGtV4hOz1lskheyr+2MzVeVa0gWVNBmy6514K1hmgQl8NLmoXdgNdSEg
	 N+Zti97GDlUeAMKYqkaokr47v7nuQUGXyqC6ltm2TIvCaLIdrNH7B2P0R429evl/dY
	 6nsbNDe8oVCv9IFjwWkCTwt3AQ92u8zz0IvCV+MMt6h3OF7Go5g6LJYrT1pG+l0lOD
	 8FrBZBxL20OIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DC5FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177788805368.3826.17947883587042342748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37681a1ae551c7594dce361a21fa2cc951c2d0bf8e1cd86b665bdb96f317ec1a
Date: Mon, 04 May 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777888053
