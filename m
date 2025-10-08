Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BD6233136
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759917594; cv=none; b=PI+TEpjqvzONGw1ss86WtuZIiDK5qkBQm3zADl/zE917aZ1qbuE+UGrOzlBhwnjobRtADcB8nOW7jl/zQcchcU7wZrVVNKDnYFEGP47Gf1amz0mIIxJFtv7WNE4f9j+opvw+0oefpj/lcLNPU1bcScQD3kS7gO3kxWXigU4biv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759917594; c=relaxed/simple;
	bh=vo8rd2t+lU9r12jo7AkmsMoL+LtGTw5SYhLXQUje6K8=;
	h=To:Subject:From:Message-Id:Date; b=HPNMPyQTYh07FNAdWZTk+QkeUpgA4XO0eR1z6zhy2sDUjahTFWfqUpdmGjFESJhVzYAO58Ip0a2Vj1jmUuzGvwFJQfdxuQhv+ugIsBO53UY6zO8ZPfS+RQoA+CmS3Q8FxLS53HBB0hrcTwlNJFEy5PVbi688sCUsuQMVdizKh0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YitKSH44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YitKSH44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3C3C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759917593;
	bh=vo8rd2t+lU9r12jo7AkmsMoL+LtGTw5SYhLXQUje6K8=;
	h=To:Subject:From:Date:From;
	b=YitKSH44h71PG6V2CPiSteE1jWocgMRfXJ0Yv0LTa88M7wI8dt1jP6NDZOIzicWRJ
	 0ts6L/abPeZkYwJcLeu8k3kOthJq9rj2iBXS29v5/jNYybsoBvbdRoZFRMHcQwX8mv
	 Biv8FL7nhY4GbacmucOgb5EDGsHnuQnucnR3DXIY2bqM/sCI0BtR3JoHe7L7D4wiCr
	 IDZoHTZkP89QggJW2wnxwU1mKT5DGrA81imSNhDjC07iLCQI3+DZLIGM0aTUWERKbX
	 mi2j/B0BOPU5au3f46mWKONc+LfbfNWv27axwGrkfyRQynNF+ZdhA8NRlWvSQrJJ36
	 RxXGg/VMbNrvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B301CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175991759361.23644.4312725439476517065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e571ec7f528e88c5934168cb601bfa2c9fa6374556225fb6ed78ca7bc541098e
Date: Wed, 08 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759917593
