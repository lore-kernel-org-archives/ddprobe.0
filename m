Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1768213CF86
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722892554; cv=none; b=fxAAa81dHVsedJIyxByQxhFIfc00rnKALnZDkesKzIuFi2kWgXcOnqx6M1veEDqqWoh1/7s6NFPnAwZ5JGC0WekZhgTstIGVbpzbKAmD/1+7itJsWPG1DdA12ZfowwSYf0LhpINDu/9RSUHWqh/zb7hhegazu6kHsCBRT3RjeqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722892554; c=relaxed/simple;
	bh=37eWvv8qjXTBrU3M/lAkIwyKX2QjcDn7Xqzlt96Abyo=;
	h=To:Subject:From:Message-Id:Date; b=nVKk9rCxHI41nh+Gvzs4BoZ1kcYMDHXASgPzmt47dhnboMMRBhXmxhx7GzrfxgqB0MMwWcbDGuKzynZRrKu5nTNCwR6ylW8zSsFrbk+xo+vMrmG7fRxqU8aQLAYFBfFtxbuTSlwABZavbANxFXXMr1l0djqYFd+r0mXLdGVlLtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAF3qX2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAF3qX2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A661AC32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722892553;
	bh=37eWvv8qjXTBrU3M/lAkIwyKX2QjcDn7Xqzlt96Abyo=;
	h=To:Subject:From:Date:From;
	b=jAF3qX2XlpoCTNo4poPc7gnSOt35t4wfq4Lk+5EqdVv4VKvCtPbtJETLF5FYy88gT
	 2b9TSd2dEF8sz8Km+9AXInbndfIO874EKRUiGRWSofGRLuFxSkC5rfqEC8zLV5hsqK
	 lO696+gk4eJEzHZlBrJMFr6zR84+I9zaPF5HXT35bWRkBZMxi2ra8TQwFGR72ZDMAZ
	 3Nd4tqlQZb4hLybLR365VC3NFGpOO0If0gonexXGYALYpYK0orZ9dMMggueuR7LjZp
	 luHveKYyVkNYO3t0zZNQ+6TtE+Li07Jc8YbCMIfJerf5Ntm+FIn8fBEE94KEW3Szco
	 IuoDzjeAMM/nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942EAC3DA4A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172289255359.23785.17864533769314096713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bec0b7a88cb2ae000f4ac2459608379b32a193c58a5fb05357a5d915e15079f
Date: Mon, 05 Aug 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722892553
