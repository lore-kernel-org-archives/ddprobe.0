Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBAA3203B4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 16:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782319054; cv=none; b=C1DhkqgItf/HPZJDLOOqoPwV5GOiiyz9cccjNTrKKD9PFKW6niZqkvsLuel9gmD0gA18W2HXulFKhet6yGWcB2D4LMrU28HivnNqX9Wp7P/gtcNkOViS5bISjQBYC8bky96+9Qr0Bmf6iEvLauHtvdUfv1QDxKZbpCKLNvXsdBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782319054; c=relaxed/simple;
	bh=INpSa/z1ZVmieXzGJmopJBple9T5QgjbAceBesa1wUY=;
	h=To:Subject:From:Message-Id:Date; b=n4XF/bopVAyXAI5sftX4LUChmZGVfKeOkm2PJtIzCWcj5eNc5fO4qFjR5jE6iGf1AuUQxWaWGMSqQkpKnwpPsQk/Nh0AuvaUtRLGjVnV1f/A/1HnQ/rrGYEi2EjqX4Y4vOlqQ4MIdfK1ImIpTPf2hfNzJGxwq9isLfIFiEQx5uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOuq8mCJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOuq8mCJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57AFC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782319053;
	bh=INpSa/z1ZVmieXzGJmopJBple9T5QgjbAceBesa1wUY=;
	h=To:Subject:From:Date:From;
	b=lOuq8mCJQmO1DvCVeY2jmCE31MtJQ9ydwJboI/l8Rd8PA5iU9uceviLxwYpY+hapl
	 nm/LQ2aGj3RhiYbtl8/o6JybkJDFQw7m60A5v/v2u6qZNSDvsHgCrBolyLv5L2Angu
	 l9HvdBUyBYDpl1kuYLVsQ3q/HBtGmYpv96eLnED+XjBDVemf9jeB3fWLQv3ZS2mU5f
	 xVawrEV8s81mKOtXg4MkB1JAmrlyEEwnCC23ru32dc4YPdRhklXhejEpKg6k2H/9PG
	 +8Seg35RQMQBE8qMGfFivPaytHPuc/FWqsduyr+avFotBpLAgOYiKhRmaJapijuWMf
	 smXIhdSrU6Ceg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B718DCDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178231905373.2318.9546090076006495455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1113d942fa810271eb5aea3cee4bcc1651f368d5dc6786217e84eed221a0b9d
Date: Wed, 24 Jun 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782319053
