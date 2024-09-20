Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F4C79D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726793754; cv=none; b=XDRJ/Rf0NGzFC9A9NboNI+pyIqQLvuvgDk/4w/mr3GUk2tzrOp8oYG32GIkb/KblNB+MJDtVCQQXKlXH/sQITlzK9iXWvqHs0xcidscIbcA6ebM7+GFn+vpxEG8YZM/9pl8A9hl50dN/MTs3+Q7eyZ2vSHyN6ZSRPyCyV7rdQn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726793754; c=relaxed/simple;
	bh=3GF3xg08UkqqrFF8VSuIGXYLrqM0ba6L22j2JgQnE0Y=;
	h=To:Subject:From:Message-Id:Date; b=kq8dEuOJCRfv58E/LPmf1lc9q7h5AyClp6n1Pzs//2EspIOSFbjByoQ9M28iymdNidn/qlTb+fLUd9vA1kiCy/G8HNKFjcIw+zsDy7IXthcMN+szwEH+3wlmAvauKdxeRb+c/XHk0XMJHeXL7EGTQPEkrw0QiNwKtDBicxGKFrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dk4aH4eG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dk4aH4eG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C2CC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726793753;
	bh=3GF3xg08UkqqrFF8VSuIGXYLrqM0ba6L22j2JgQnE0Y=;
	h=To:Subject:From:Date:From;
	b=dk4aH4eGUXfTMnNUM6Rl6/MGLIXHYOR/UvFVaNMx8buRtB/G1hbzKKV/214zZo0Vv
	 OlDpbbsRkJkDlDPag3m/Dh6hqcno9HLZB18d2Rb3wpQpnNeoE9iJDJXHUpB0WTpDDl
	 5mILst+fqMoLJSEPX4L8k+XCZew8ERfM/0hFut/X9NOY3+pJAsIfmgYr2ujIbVamBB
	 DMQ4bfZsWRGo2nUuln6nPX4FpMowBk/0qPHmkdus0wqw6H9eNtwc+b08fggDGFjubW
	 dO8Woi+dpDsUTwYzLBEVUfpud7YiEa5EWCuwP9xPBy8WW4gJzNbz/2ak/d65zKqcYa
	 /qTB7laOJwQIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9808DCF397B
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172679375359.27622.6076293903217965711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 255249e99df2431597f75ef3bc758997dc7f7bd85ba27bbf5eea13ecad7fe4f4
Date: Fri, 20 Sep 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726793753
