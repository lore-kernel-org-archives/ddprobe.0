Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B998C22D9ED
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 23:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762384794; cv=none; b=hL4nfvMHCZUz5QvWaJN8mTB8pGUAjc63xvEwzfSzZBDz+SXhACLrC9Vfuxhd4pLNfLkr36vK9XFGAlH5IHwyaYj2OgrqQWtqavLVOSZNnNawu3oaz6exTtDNTl0LOu3cdxYOaVMFBdbR2D8p1s9w/Qd8ahB0+RVH6P2f2Ooa3iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762384794; c=relaxed/simple;
	bh=PdH5wB73GtN6rlHmkdmiBfnM7BPodqdWubyJAE0e7Eo=;
	h=To:Subject:From:Message-Id:Date; b=gQvoUg9B9WASbOk+BRaDwyevm/zxMa5gm612cgzAGYv25N+8DOtExCJqD1nWpawhGWYxdz3hH1HoLonBFFuOFLXQ45mjYYxJnqGxXHmaRoQyKTS9JHABDFE3z44Nyj0239DkfuXlqRz1sGHL1y15bZYUXe16fk5E2zKxgccp0w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9S61DZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9S61DZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 48549C16AAE
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 23:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762384794;
	bh=PdH5wB73GtN6rlHmkdmiBfnM7BPodqdWubyJAE0e7Eo=;
	h=To:Subject:From:Date:From;
	b=f9S61DZm8sW/rGzr1/gCxtvt16YipwoiESSE7/f2qFL0xle9eN08exyt0+3a+b/LA
	 aI8pDqWA/r0c+yqIbfzEPUf/DdJhNIY3D1XTrBMeh+B12f2YXlb2udZUCH8qIIBZsQ
	 c7n/+LEUr0gqqDs/InDzIVqEB+PvHi3YMAqzeL9DA1Z6Ekub5deVrxwg67WYiI1U/D
	 POsc3vWx26YCE+TMquIFIooPFXiukI0zbMzXJ08N0qS2Pu1mBIpix49LD3yj0IK3x0
	 GM2SMlpGhzf3VShffIvReNJlA/f5N70v+AMSATDfG4zZsbYYZcmoRPwdoeWkdOMOo0
	 BsjdLyPJnTpPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 016AACCFA1F
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 23:19:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176238479392.400.5542114001349010697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a27c3c56b3c9f3ba1a4fbcc724d2ffe98c1357df0e5a9ffb94ec49546a28c1e
Date: Wed, 05 Nov 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762384793
