Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFC01F9F51
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751718594; cv=none; b=Tag4mvnn9VMgRGqCzS784ZPkhmKfuY2YS33QdfkJmEebQkMMyxnzpVtowuGQZlMsMHUT1U1Msjhvf3FKfcCC3xQtUa9621Gq5U7KbVKCQItxIGZxSqOyXWQbzBYUFN1HSM78zyFLwIPtAnV4dgvxgbey30t8K1gsn7EYVmg/pZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751718594; c=relaxed/simple;
	bh=AhcdBCyMtAajGE9MA20Wg7Tmn01IZ2V4eUyr9Rlezp4=;
	h=To:Subject:From:Message-Id:Date; b=sDr9+PIHKpcTyNoRa5l9TZKHaj0Q7cB1LT+JeJ/eKisb1E3TAvSqjJ5LhkHSL+ynb/Yhjllp0N+B6x9OU2iBcNjn32nMZGUxoUmOpD/0WfBXpL8wX419oZfGcwj8ST8Vj827MZtPSCeozFvo8Ux035uATG+OE2E8AGd3hLMX4ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lW6p2RoS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lW6p2RoS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FF8C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751718593;
	bh=AhcdBCyMtAajGE9MA20Wg7Tmn01IZ2V4eUyr9Rlezp4=;
	h=To:Subject:From:Date:From;
	b=lW6p2RoSMFBXncCtawaoeh3Qzw3FdIy8v/mu0cpZtHrMc+LiacOaMT348++0NvMlu
	 uSIQIc+Lzou/RhnRTVRC2KnAq5JYXfq1ooacIwNaf7BnghM4VIIygkBfD/6r05e68l
	 +evCRiZglu71QAh3aEbDRWv7qxQHvnWW242OzkNyI2Koea80dI5hdhe2dRSbEK7UO5
	 zSmzDlcSKQswWPS8szIinot3P5C5OVqM/SQOe7h2f1xiw+hfmqhVVLgH4nniFNZUAv
	 4YLVNM7g0A3EQ1EzmZp0RuKY1pNxif/0/6NNYTVzPJZGeGJQHNrDBr+qjA+CHbqco9
	 mu1au9U1rUJIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A6FC8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175171859358.6595.12408633645500350453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d983d1d42502d90247838d1c8a3517ec1bd5e2eaffe016487c6fb70956d383e3
Date: Sat, 05 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751718593
