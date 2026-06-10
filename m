Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5477F231842
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 03:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781062534; cv=none; b=Ao42yMoJ9W1A8GlpVup45CiF1xFK2JM+H1U7hlwW8wSCZtl92jfgRoNDjBTL3xU+6aOg53wrlPub+a7A1yqdVHdeNgF3xAuJs/tUTq6zb9cjpvFYtMD4lzHyLMubgh1IYkR9r4SGUlL+Z6loC/6yzynvxNUxJr9QlpBkgoXFCLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781062534; c=relaxed/simple;
	bh=Yvfz+P3Q19CXnFdYPbwCAlGsG9/eejzMIGVEv/fP57g=;
	h=To:Subject:From:Message-Id:Date; b=Ea2SxiRrZ0IHZW5t8VTRAjnUxI0Ip7CLAhYrUL98t3GHEblAwrUCZO/hLQYdYKgzx90JpkT8iIASUD6uEjW2NYkNC+Lm2+wvoyplMouibSzdeedORs6k9rLqvjlQKRFB/6prqtdXdyl55t01wrSevhKzKdPzgF6BEq2Wr48Ss9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnBWf/BE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnBWf/BE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCD8C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 03:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781062533;
	bh=Yvfz+P3Q19CXnFdYPbwCAlGsG9/eejzMIGVEv/fP57g=;
	h=To:Subject:From:Date:From;
	b=cnBWf/BEcqVxMvyfqwpsfzYEXHDbWPVijoqTA3UDQglmQ9765b2d6LrO9wi4JxPo6
	 vUQnOdYk+CTxgF95F8Abb8el4xldggeMp9awn/1UvJYiQxuBPinAzjAvNwmFOioRNN
	 3E3wqsfhSPTnmgMUuJ3Lar92KAJFr+tI6d1ltlJIDX9O67KbiJsa3Xhf+dskyBxoX0
	 maIT194vvAw1vOt5dgtX/D4YW1Sy1OwgumweMNI62QaeaRJGdtaqUiy3fjXkRwHolm
	 pNgzM66xWowRy0cxCWaJyvlkGQaRn0Epqcw8PFiKId7K9sxQ9wOeFLd1j2k1DznI7n
	 RXjNYlYhxn2Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D4ECD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 03:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178106253369.4665.5180299677547371881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e69e6ac094affffbb5c49a800f222e9c907f5dd96aa4488436382cce7fe5f9f
Date: Wed, 10 Jun 2026 03:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781062533
