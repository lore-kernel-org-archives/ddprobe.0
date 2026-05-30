Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374EC7E0FF
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 05:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780120414; cv=none; b=qZk9ePSyG0Nh7cToa/GGu/76xKwocmjsFanupkqBhOjOpu3cwPA+nepx80ZVRwdppHliUY/D9x5uDE1amVgCyWRjUf60D6N775g0/eWfz0GhrRUIGV9AckJF7TIGtE2P6t/jOA7Aq3dR/qCBa5W9DgfYfcPl6hIJz02OM6dP0S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780120414; c=relaxed/simple;
	bh=ArMRp+MNZpoZqTWUPcj2MX0agSQ4Zav/Z7KGDr8ACek=;
	h=To:Subject:From:Message-Id:Date; b=j0Ycf+2hmgYrQnsppsY9kfoeGQZRSsv67UQZjf7I1t9PXcLk+09rzgxrcsa1g6L1Ow2wuwOQY/QBxJmYUj5nHsUzvj2xJcvTsT6cGMHo6sLxzqGh1+4mdHpRdAM+UQFvt7H4G0MMsRJc7KIc4kGgoxMuQ3Fdl/s99zVHNGxcZWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgDLexUz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgDLexUz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B993BC2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 05:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780120413;
	bh=ArMRp+MNZpoZqTWUPcj2MX0agSQ4Zav/Z7KGDr8ACek=;
	h=To:Subject:From:Date:From;
	b=IgDLexUzT8jbPnX3XZXQFc4wN5keRBD0CfY7UR3bnbo/DPrMeqJsR7z8b/ixAhCLY
	 cwhO5h7o94BAJNu7ce82ZHmO46VT78HRPJTtOmxS02t1Q5cZCHZiHCVf7fSseviflF
	 aZFmw3e34yQLdtTjCVJPsnnPgZ7fVGduSk58BV5IJPi1DWpmNaWrHy/FZMwOy+YjzH
	 y13HwlexlJHj8GD3/cf+viloHNm/ePUFouOTD6RnELVx1Yxvh54958xVkDIEOR/7l7
	 afnK8pIq4+gEprIoCqamxJ5mMdrebcWGvvSTQ9chvExvuaXZnKQjVSKJKc5dEQrcNU
	 SuV306WpZezmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE29CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 05:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178012041368.8864.9464180762335040120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc5c3483b8ffd4987a825578bd25ae57f70eea88eb47201fca783d3e0ac750f8
Date: Sat, 30 May 2026 05:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780120413
