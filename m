Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB4979DF
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 10:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719051743; cv=none; b=q+N21n+fzHslqtvKXvjICQAvUldSdISOtHnICkMJ+skpnjo3F5uh4yZ0ot2KirfHwFFnlb8Zse8dfSYuDN8a8+uGY7/73TcNcc0Gm94RqLACNgd0aVgtdVeLGNgEP5eXPQ8WX67cdvtyxb7woboZ2ZEmFu075m+uqlgA3q957xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719051743; c=relaxed/simple;
	bh=zZgJb+QgdP1ffqCUbdBuOq189sIeEMvbT+VisMMiCbI=;
	h=To:Subject:From:Message-Id:Date; b=PFXWyZF62WGNWukAnzjOSF80tkEjet/CDgAiNdMBWHSSMUhbzP/t6GmBd4kTLHP4K765fbz/CseSOWaNmVhJrHq5EyqbL0rcLCm/m4+HslE05k4GcYyLb1RD9neVg5+bBchR63G5rImVrv24Wi+lqUfCEnkySAI7k9XryDPTCUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSz7qDK1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSz7qDK1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8CCC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 10:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719051742;
	bh=zZgJb+QgdP1ffqCUbdBuOq189sIeEMvbT+VisMMiCbI=;
	h=To:Subject:From:Date:From;
	b=tSz7qDK1zdBi/d3zSNaQuW+MXKN82Z6XtkgRmJJTTeA3XPlllUyFi1VlbfmpAmjAp
	 u3Bfq09PgwzA3m4sTRnFCu7p803capD07+3IKWG/X3Ocm0mdiTva/eajtEIy9mQHM7
	 DZj1sdeVaA7ScKytwZXxegJLRH9Xw87J8nFJOzUFEhcEEXTVEmnyZ3dYcK/fm4tlCR
	 NFNMQ8AEZaog6TlAMrgi5YZHiPxLWTac78lRT09gkIJRQWrbxq41UtfpN861sS6pGh
	 j5nydLC7C8K4nAR0zINcaKx5i83p/P1PeQjTxHlFiR+NAcCNmlHlAqDGKfxxN+ATR8
	 P0tZx+7iDJWRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3F4C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 10:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171905174275.14679.12809343921189557291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 684cf0191555be275bf665de489c0a67fcf544107818dc8e07f97fe9322a6f2b
Date: Sat, 22 Jun 2024 10:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719051742
