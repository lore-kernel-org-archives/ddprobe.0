Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F0B1DDCE
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 19:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717960643; cv=none; b=NvLhrJ805FYUwttVmvdy5fLQaOFr3f37Sku18ZmAuejU9rqqyX0Qu7NSsKoW2SXdKq6qTPlfRv6fJIBB7KbhOOGmsta5jf3xq9o2m+WrLjuOU/3US0sAO8HNZeop2a/YPCv8DSdj/4kPTh3Rzpuq3iM5s02kwXQW7dvMlT9hT8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717960643; c=relaxed/simple;
	bh=FR85RqC4+f6DZk8mdtxuRV3xG9p5h8qjKvL9EzbltpU=;
	h=To:Subject:From:Message-Id:Date; b=bipNZKEQeBvvjvvS33a0RqW4rdACQUt6/cHwKCj250gGepQZwD8CLTLG/JEB13YFBJBLZPEX/wUVae1WSt4/pbyidl19JqeYy5uD0fzwiGJstFxCx7dW03HrUhaCK9gwIy1x+Bxj3Iv+eDXJDKW2/BFLlYnBIYE5I9V8S3pgxZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvoVqKxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvoVqKxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65BDC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 19:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717960642;
	bh=FR85RqC4+f6DZk8mdtxuRV3xG9p5h8qjKvL9EzbltpU=;
	h=To:Subject:From:Date:From;
	b=bvoVqKxiApepxeoDc7n1wKxq+GFLs1w01INYj/uOdZrlvVWd3xaR0wnCVQ9ICNHUd
	 4kF3c0gxC6tXO5tAc8s3znCo7EbyjKZzf05Wfukl+mO8spc10uY6S2KdI2AOfMzXbT
	 pZpw0dZIeoiN8EXMkHN+nlT0G98aFcSEB+I4rR0x/7iG0xvBpeXjgWW+X2b2hVOXYu
	 bUmYQ/FI+ZDIGYUPP4WyJLwOf5mMUEmtCjwHQA1TA41ty8QZ1i37yHCRoMZTKlWE8K
	 lcU0NvCDVU58Frtp8lg9KwywRnxbX4DF0yAM+AuCYX6bjDDNiNQgqI97qaAXEAO3S0
	 uqx2vy9mOMzgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECCEC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 19:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171796064275.18972.18108160040742545146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bc0462d9d5bd1946c4d02536155501ff36e9c3bdc912ffbfa72a2092d2d5463
Date: Sun, 09 Jun 2024 19:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717960642
