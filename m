Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EB51C84B2
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755199194; cv=none; b=gnwZeHjx1yi7l0F+iz02eyQ7BcpxUCuoUC/4uRhgfD7NfIYuTWQs9jRDWmtWa9J2uHAi2yjEWX0kJPyL61pIQKV7q6NLccTbrAb6Qo8ji5OaJaLhtXDOTv5W+nz3q5taT1AQ5LLc6Tk9JRXYHR1ZnMfri1jOsDSzfo8XSO+MWaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755199194; c=relaxed/simple;
	bh=JpnkZ9vc5GytTSWtygsnBb4dRkDEgtNZ7pJnQf5g0hU=;
	h=To:Subject:From:Message-Id:Date; b=k9PqTu8ZpQT70XSu9d7LBhoe1ZXBqgWuBhMPSykieIdTyRzzxfLrtHYkonhCItoK8QbXqp8Wv0GCengOrh38XfMysJVRWJQF6Psn/+GKl0R0Oxsmf5L45Kntev6BFBXP4k7ro/gTGLOJmmpcUo99K7wD9MXcKry2RrGflVlsbO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AURcVHIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AURcVHIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BBDC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755199193;
	bh=JpnkZ9vc5GytTSWtygsnBb4dRkDEgtNZ7pJnQf5g0hU=;
	h=To:Subject:From:Date:From;
	b=AURcVHIonGirORYoZim2cdEQkVxZ5vlUumvo3ua7TjDsrFAgrIAJ7pFHFFeqHtLkM
	 78uf/eQNxD1DPRae897j9/c3LN5nCCWbm0jqFgBu3MOr6orth92FsL5LP+nG8gHJ4l
	 X1WwF9D0uMOafV2t6rfxxo3uTvpXW5dw9VuCVKmuQNHEXLSlrU3UNucxukjdHU1y0K
	 tkmYI4jQ2/S1kpqy4g8ulY1yIQ1+5d91NJvdhFX5CCN2T0CXBf409ANZzlMKTxwM+w
	 kiEnqfrAJ6x3GvVvAVqYQpR2xjbncOXpLaHNiiVLd1Mik8dPD5oZTzSUHA0HBOw6F1
	 wrrgigGQvBodg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAA7CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175519919357.14619.2620510570935284177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c2a5cab4e32b0ba48f55144c444f7bfd943679bee09a8b7f6b86e9f58b3877e
Date: Thu, 14 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755199193
