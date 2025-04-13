Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315DDEEBB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744579194; cv=none; b=ndgricht5LDrgCZcSh5gwPi/x6S6vHxgz+aVGysCFFB+hTe/i9hnBGhzgeBcMHhZ9mgqywvG1fQUaG5LwnD/4B33N1BcUdBAd14KsaEaz5jJVxB1W01eVGJMfh1YqW1mX7q3EwuVCP2UacC3soN8GWBAXnVUv032M3RHoppkmUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744579194; c=relaxed/simple;
	bh=kKtyXUI4vIPLBQfIbgV+O1pHl2X6b+XxNZqzIEbCsdw=;
	h=To:Subject:From:Message-Id:Date; b=he58tAX23n1IPuX6R151HeNqyIZgSALK8UengJbJiPq+OomFJqywLVfcnM8hOr1hhIRWb3EyQg+OIzBljSksFdhuOf8yOuaRDONwG0zEQSZ+gHWnkaxy2k5BpqvxWf8ELRvdcX0aSLUB1G8AFhQiDlyEtnZqtEx4Kk8LU0Jztgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swX6W0pI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swX6W0pI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5901C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744579193;
	bh=kKtyXUI4vIPLBQfIbgV+O1pHl2X6b+XxNZqzIEbCsdw=;
	h=To:Subject:From:Date:From;
	b=swX6W0pIvywFe2Q9G53m4LxTGNIXjUPlxJfYpItrIxjW90nLfbDfzI9+abSeyh2Qy
	 5oWiycqlK8NV6wOYn/QdifX0w6HM7oOzej/rc2SJancNEvlGWv3Fe6rywsfIzrxofY
	 3sw0S/+HKnnC7VYUcsx38FIE7yz+n2NOBb66Tc2S2vMl61g38nJzkCumHszw+YNVGr
	 PFlgLUDDEzbmxITnsmOrcqUq9bVHlAMScjl6W49YIj1IL+iOrFELSPHck0h6H2OrDA
	 b8jE3IdaP5Cnaw97wEGxI7xn88bfvAN/4obE+/9e4Zw/DaeG6sxE0T9PJcvtYFsm1g
	 BWELJPzxtEf4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9062FC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174457919358.1513.2206530209711203865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a4eb3ad697bd818f2360bbab9b208c2d64c8198a22e132123399f82cab62f01
Date: Sun, 13 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744579193
