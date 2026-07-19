Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A9C0395D99
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 18:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784485114; cv=none; b=g2Ifwe3uYMgAFoqkG76U+GPMh+M1LqUjt3ZrpaJegJ7Zt15+2VCmX+Ccbsbp9jnAT5VVZzTt9F1HaMJ/n84UySHQ0fRmn535ySG37fs/gDwVuxDoH51nKjpXo9Gl36zBkCwYT0xxubdArRah3ydfo3eEm8fXY+dWtAeiGwm27bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784485114; c=relaxed/simple;
	bh=MWpMly4O1n4lAX/uA2mjZY9drGe4cnq0RMqgl7Ts/ZA=;
	h=To:Subject:From:Message-Id:Date; b=fOiXR8QZTW71qG7OtMIjA3NatjYQLYtx7meKUTcHmQy7XySjZRpOc6gScjiDjzIwQ/EKFsHh9jaGrdJObYWQL7jRgN5W65+9FbU9nOkOkTzF5V+mzkGC7pXvbLxSWfLz9DfIXstKqgTCdMLnp1peX47xtcbscDyx0OnEXNqIRkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkCJs4e2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkCJs4e2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8606C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784485113;
	bh=MWpMly4O1n4lAX/uA2mjZY9drGe4cnq0RMqgl7Ts/ZA=;
	h=To:Subject:From:Date:From;
	b=LkCJs4e2eS03otWJdEa6P3bYbvw9sk5mHX65o9rGkWB/bF4cD/9tjeHz660ySllqz
	 1vFieLIEgLljz8pSS7kKFUW6f1meqePSIippIDoqaDj+wDvvQpXsIP+RorjIBlLy8f
	 P0jBnXpqnQhax1NX2YoXeE4f9BbS7QbBWqcuDzHIv1nnZFNaemQyB4gQ6ytnEOahjW
	 SWGpKtQ1o8Oskn2sDo/dcF8dhv/zz3BtdOFeNJ/jeKQ1Zs1Xmjiq9xRGJfGjBJSDdI
	 g7XA0x/TUSXQNwG/87zGLN5iq6RrYR01CDv5ZMlHu1M+RlbEWzbIkpBwkiLT3pBWxt
	 H3hz22rqkVIfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF706C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178448511368.13944.1560414627387436914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 677eeb5a2daf522c088c9ee4abb9b75b7491eed33692a29eb34a1afa3ac72aaf
Date: Sun, 19 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784485113
