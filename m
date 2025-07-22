Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13605288C97
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753171794; cv=none; b=eC4t0vfx5jVL/eV7G0YtRW5R2qUNeMlaAX94A1vdmH6U6A+FGZwObZ3mSDp8cHgHXwLzyDH4rv7AyUOSVZtGyjMIRc9flG+Vdh9v+abr5KTxzC+bZmn+HF8QTJXTCs8APFT2jD7UxiZh2+lT2BEicrmgn4qXvCG6XIpa0Jbxvbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753171794; c=relaxed/simple;
	bh=kqL9TP5nO1qTFruhlEnkKVkcvkA5vG1PDGW77z9I0So=;
	h=To:Subject:From:Message-Id:Date; b=sgeUPGVskYf3uCTHk8Hx0e9yOYhCBqbfhJgg2H1aIVPdCay5Kmej3OrE95m1XiQwu3bOn233vMCxE1lgzEk0jqbYD9vXr3vXBHRc8LP9vOmx4ZK7BEWRVu2WaHYkBUNvFgyX0e4qSgTOQgLRlOhMiiYjgeFtUDqCeARoLpmMayM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cc1MoCNX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cc1MoCNX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D85C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753171793;
	bh=kqL9TP5nO1qTFruhlEnkKVkcvkA5vG1PDGW77z9I0So=;
	h=To:Subject:From:Date:From;
	b=Cc1MoCNXQVeU1TKG7Q1pHlHU8XhyjF5UDfDj1ywSNkb2a6pyFQ2ZCpKosCokfgJEQ
	 csDxn4yeGqwOXjg1GElQx8tFUs9kMXj2rgOQe/5fNq5vNUJcp3u3ioWcFA5XH3tvxv
	 TAkNLuMUdgkwxgKBNldJgzvQWeDPeCVm/cW3hBqg7o6OQMFiV2QHXjZcsE55svPop/
	 WvacrRA2ydVF8F25JwUMMQUQFoUip/HP03+RVervKrRr56Su5te4D8otJgMDkpqkX9
	 GsZjT2XrFNE5m0rLb/TGOtmUyV69W1Dt+j65ia0sydcuJepGjuSypuCZC6n7Z2bBSE
	 61d7yESL0RYhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECACC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175317179357.21194.15993293570597025096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0a4d3a9c980c717bd09571c244f2e63596f06b334ab0de772745e2ce848f74
Date: Tue, 22 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753171793
