Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E57F1DF27D
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 23:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763595114; cv=none; b=Z2UFTem55d5x6srDeIdj3ZYiKnI14nJTk4oJzUtp9l6VWtmokmlfYAr613SVsRERIgOqFXfP+jNs9UVvIbLyaU8nVJzg6Asc5o1Z9BDDL89dKSdpA0d2tLkw8cN9mlCfzhGpmm0hGzPnBC+AsrHECe/6lnr8+LGg6ucJWQwzKzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763595114; c=relaxed/simple;
	bh=JUF1/nsW2Eo5IRXxegzhGhCSAzqTPZugbrLAT0eCD9M=;
	h=To:Subject:From:Message-Id:Date; b=NbaXzRJDSyB3EXA9tsKeB6KeM3itZm4fBQluDU9yfmUXH6eW47FFJz5a8cFiq4qnbm5P8+iUhQq7K5fK+06qujUyx2VVcvO7JeYwlIZEy2T0vAX1zycO3Lc6Gzv8BCu2Ruq2JRJXglYfT70XOoR6/UxqKY9dlr2WgKM4YiA3aFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPXg69xG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPXg69xG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60B9C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 23:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763595113;
	bh=JUF1/nsW2Eo5IRXxegzhGhCSAzqTPZugbrLAT0eCD9M=;
	h=To:Subject:From:Date:From;
	b=TPXg69xGtY/t3pOjlCDr7/xzQo4g1hvwElVE2T9c2fhya7O1+93yXjMVhCxyj30GR
	 L7lds6VBEi3d+yRZXP07jFUk2b1FTv/GMKj8spi6KnEA4yAa8yPPkfFh6AQ3Q9Lr0F
	 JW2J1uW2RF584h30hEXiHcCOXRDU6yyoxZILp1+hNBndwwQkpqWSnT1I8Y7zfm/7+L
	 QHM4iLEUk7xvmp83f7S8LVejceikHRAWPAC3lbwfkE1CnzJGoNswqX0N+szogL1hXD
	 rrQ8bdzeXewYHvCr5PZAQkU8N/XtP3WLmTXKPB8fp7bS7RItD+BM+f6/mK+XpEb+RY
	 sggg3/sZMbK/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E4ACF648C
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 23:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176359511358.32060.10855384693701685693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa5579de788fbdd1254927362f1d9e5c64a0aa5d413838c2e6edf3e2d12c968e
Date: Wed, 19 Nov 2025 23:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763595113
