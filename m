Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7D68C1E
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735364754; cv=none; b=DCTriSJTdRPtHDcHnEp5DJFwM91Hn8bEmWH+DxcqE+YAUVBkvb3IaA7LUBl0SryYVmhOj9ZtGO0YMbL7EKdaPxwEaR02IzA0pPhVkcIKox/NUU8Df+y+/eEVplIpsoPX1fB8j8sWlQ3F2gJ9oaCeSh7OchcVkb5FiQJoLG7+rIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735364754; c=relaxed/simple;
	bh=v8HSqqLL2VGeoPiBGOs30KkgI5YDMLGIRV9YwQghue8=;
	h=To:Subject:From:Message-Id:Date; b=lAUCnEhQbATSrDoUWdh1Ncp/Zge3bs4lJiIjqj6bm5tsY4x+8jBoZu8pGBoHDDhVZt1BTPy/bb0iYoFp07wA918f3oNZflSyAyRvByZDEOVx9bWRxIILGS4Zbc99HvAaApiUjCUAA1WzeqJsksiPLVeF0VjcjpjhreDO1e6CMyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnJ2fuKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnJ2fuKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DE9C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735364753;
	bh=v8HSqqLL2VGeoPiBGOs30KkgI5YDMLGIRV9YwQghue8=;
	h=To:Subject:From:Date:From;
	b=GnJ2fuKLfIyyDMo7QbcHsG9HDSskbvtOyD2POzBX3BUdhQrnQr2+XkA77Fj7KlcYF
	 EIP1Z+qztxKFRb3aYnr0hRnonBpRlSlaKFg9h2sAIrX9qZu1f2+V3E8JD4hLrrZu8n
	 NuNeWcsOaIu8Z+sSVc+Gj3u+QWyalQvs4jVXJRTo7Yu7MUQf4CcRD+L9CAa0P6utQw
	 k087IoOJqFKbi4tQSpHfT0FPx9IRQE6706yiFSCPiOdp8Q6FxGtIy53p/nCwDnxgvE
	 fOQI1rY04zCChInwAZky9MbJEeEDw8xH1FUQJZ1RyeEGAPQsyz235y/pgu3ZQgvrby
	 zJ00mSkvXGx/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97711E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173536475359.17054.3861079667059086751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 869064be84cc60aab48f3ab844c2fc53b90eff0646a3e4785331d78c33d6424e
Date: Sat, 28 Dec 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735364753
