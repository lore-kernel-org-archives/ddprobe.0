Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17C112CD96
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747293593; cv=none; b=pCMwnuSBApgZ0Wz+hM3YotIXFX2yyUjQPev7KboEkhKfVGaahzwzFO/q/0Ect8hjlpRaF+3RXuUHBdobhTBCXuiIKWoVJt6osCVINI+L+r9xpuRvPeCAt5z6zMXeJ3MPIdbtMF2r6G4nqvhC7X0lypn3rbVi4X3J7H1ppmmIFtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747293593; c=relaxed/simple;
	bh=VMBbM+70vzwWVYCb6LRFIxYczqc57iKGzr5nhmTCphw=;
	h=To:Subject:From:Message-Id:Date; b=ByMZTYN2+5mC6AFKh7/TvoA2AetYlZLnFRjkrBquav9bNrPtB4yn2qKgxO8w737DtsAAPwZKOsfUuoXUTakQc4fXOeHq9f0TH60+JDD3jsEYuP94xEc87y2CBiWFs3H6Xwjo+8ubbG2PId1SlD6I9vAU30e5WYXylx9nCin5NDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QiCpOrBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QiCpOrBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27BAC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747293593;
	bh=VMBbM+70vzwWVYCb6LRFIxYczqc57iKGzr5nhmTCphw=;
	h=To:Subject:From:Date:From;
	b=QiCpOrBN/XHd+xRyXdnbnYg/5dDNICdRe65/u1UxWYlqHpCGwzdKqvkx4sjnXl7E7
	 slf+nHoJEqNkSEM8DCvJUNrRpzG4bhLROwGeEOT7J3zXqsrTF1+i9ZslUw5DV51JqR
	 PXHbVGCjVBhvwlGiyPZf2bNM5P9s+D6HGKItMOZ3Bo+fvZ/SJX//ZUFQZSQ3GI4CPC
	 fOnNlykOQv48e7m52j4IdcTlm3XTF3Of4kfTajK8WWs+B1e32ZGkK0A80iW8K47BlI
	 W4f/hIL9Z5jprDINzAFvG7NyHLNYICn0Ci1botUDjF6SsRykarg9pgid7TM9GjLP5l
	 mFiaxCunEJkRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90025C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174729359358.11253.2900437380131197170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2bae6d3c1bad053fd7c0d10fd07a570159b25a02057f904deb196de7c0d13e0
Date: Thu, 15 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747293593
