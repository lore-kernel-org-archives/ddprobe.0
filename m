Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45120496906
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 15:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784044714; cv=none; b=bzZ6RzkIZx+Fpe/6hyv3EyJadbI5bhbwtQ22kTyPFQY7RXxoOGFIScWi4v4PhRnqSyX48jqwcO6pI9AZhaODwmjIPZ/xdxfwO4mUQGfiAfzlhE0VGDaRRHyy3SzGvZhMxPpjXBnbLG46eGk70SlRed6nJgaCtIhwth/BceAA3hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784044714; c=relaxed/simple;
	bh=9GypC2kRsSuq+A8rmRP6bGIwDOZtEfMN+qAOxkCIxQM=;
	h=To:Subject:From:Message-Id:Date; b=WOi/9o/N4ua7TC2y0qOnSU2k1FYFNQpRbK9TfERofvvhbgHsrpOV1YnaNI3dumtmIrcM7hBpUK+qmcIivLth2r7HzzwdZqZtl9VbB3l8htg21DHGwQbClkH8IZk5R3xqo86sm+4Vby9A8USnYsfK07Zlyohdd1MwBTGSqrK2Dtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=haI1m1mK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="haI1m1mK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF48EC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784044713;
	bh=9GypC2kRsSuq+A8rmRP6bGIwDOZtEfMN+qAOxkCIxQM=;
	h=To:Subject:From:Date:From;
	b=haI1m1mKrHysTqbZH+FoMfWlWr4cYIGNYcI7BzBmq9ZisE8OCofDA3aIq2eO/Mxbq
	 F2YHko/e8zyrkwtkzV4Uo49vWYJszMsGEB2Su4ghcfGHId1EugQwl9S3RfvW/wALOJ
	 pgP2a/KND149t9pWmFUiUQoJtKx/mSz4yHMSON99mmYH4yp7Q67TejKllp/vgJU7K5
	 OANkw8rAeladDVBQ5UzSGFC9BCBGMMKCdSnjwbjHheDD3Cn6Fxdx0cDTsXDKkyuJBB
	 WODJQQlOEhb+mQaaOQN7XOtOEXbp2JjHYXjs74w82B8vCIm1hACkiBArH3le3ZYEfr
	 NqILPn1V6HtlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9504C44501
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178404471374.13890.16770740893155617384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f8f6558a6718aa7441bcaa71b620a0024f910fb30c29a96d234a27bb6f5359
Date: Tue, 14 Jul 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784044713
