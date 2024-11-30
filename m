Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4309113AD3F
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732995354; cv=none; b=EAAx2ica4TzBTedALQ+g2KYDvcfCVrHST0U+PRO7hS6AjylH4b129G8oUpNOqBnXGf96YLIV3xyDLh0a8Eg2I/ZOUdPuMAHz+DtSBmK/9XiyW5q2PnLna7gbohqDNDPdAZCVHzK3bbEUglNk5hevFB1wHyZHrIfwsVLwvU7em60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732995354; c=relaxed/simple;
	bh=jW3LYYpNTxvLbZvq6ZDRkkh5ph/4TCpYxJ0gVHY32oU=;
	h=To:Subject:From:Message-Id:Date; b=ANNd0dN1WbSYJmPIofWyvkHg+gonXJ7PSxG8Bp0WJ3m4OgLBcNkUOOkAmn7Z1C0viFv+UQxGlO3YcPV1d0/TENrt0DOTdundyugFBGhc62rzqRcbHMjBg3aVJ/WvxiSzl28K738h/IZf3TWg8FJWlRzDBF5M7jUYOfZ1TWfvSz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqrtCB4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqrtCB4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9244C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732995353;
	bh=jW3LYYpNTxvLbZvq6ZDRkkh5ph/4TCpYxJ0gVHY32oU=;
	h=To:Subject:From:Date:From;
	b=LqrtCB4JkiV+bcfixiHJPBe5vAfsb9JfNL/sDUuiq4F6LxBBy9v58fidEaYpPapH7
	 oxR9KSKlYtsrjrz8ChJFlnw+176zZq+zntOjZeHrMLU5EEr9nf51oQ5WOM9uAWuQoe
	 a+Q5fCIy9QMW22kY/27q1zWF1JdKfvsLb0JQr/GNUdsXs/Mua7XMvRP0UXdKMpzlXg
	 Z+zItcE2f5LLTiOYvJ4qopeiBAZPPso47qqPYKPKtU9V67VibCF8k1Owcc8mI03Net
	 KKK1qsFqc1bT7vvoC1KjuR9/sEOI2x11jpXUiblfT8tSMUsx+gx/shFulWb4BMFWkl
	 Hy2fHLdwhY39g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4685D7360D
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173299535361.9024.13866456969494154709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78c7dd76bb69ea135c2d7b54142e0349f4bac70df9914425ee4bcab97ca17232
Date: Sat, 30 Nov 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732995353
