Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FEB73AB5DA
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 23:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781135194; cv=none; b=tHxMcawTztoI0pbZS3shg9nAO9L0asMnRBYoJ3HOkF1kIpNdpvv2EDTcnOH1dF65T6qoJa4AXiVzFrTpFBGpJIaaXpzHeZhyerVE3R8g3TtVxdoPrn6epu7hoT0jpWQINt+LPflBxglkLHM+cHUsMaI/TWuUSrkQn3m5ch4ATb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781135194; c=relaxed/simple;
	bh=rWsxxj0aISBv5+Pc7F21khv582WJEKm6Tllp6vumGo8=;
	h=To:Subject:From:Message-Id:Date; b=kYshXttc3X3lHStdRIaQ3lwgIOPakbf2A7s72IU9qmV+ruOPW63FY5EezgVV8w47BIqURHJvM2toDVugidy/cewwTOTYhYR9zclit/ZsnCjIvqVKNGcuKwN2VVlH4jDWrT4Ehfy4JY/hKMC1FZcYZlQc4cPrzEnLOCNlQsGyUng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5yJ3kpH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5yJ3kpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95D1C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 23:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781135193;
	bh=rWsxxj0aISBv5+Pc7F21khv582WJEKm6Tllp6vumGo8=;
	h=To:Subject:From:Date:From;
	b=g5yJ3kpHds5wqd3+weVsCkEAKk26+Xymyi7e21UV8VyZBnusRWo4QciI6IwwIttU4
	 qN88XvZ0qVeeqc0qAqfr8TCvE0oldTlvU5Oiyt/LRW/uXLw2E3g2sB/5ggCBFWi+Pm
	 zPnlWPa5cud8FwKNPQcYqcWCYZUu9LfTaZR1OcxqmO1ig4wAW4mSmr8/1Xu1fPJLFd
	 a4eA+cGEhI2Hv7T3CClHND57A/mIFzhuY80eoWrc9HCH/yEKAO+AZ1oSIO0Oa2XU3A
	 4KGCQfaYa0efuGfGxfQU8Cujw/k+2lcMdqIfYfxpAAqie6V34+Bx1TI28aLBqEJjqG
	 1aiEqgjDQUyCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9CBCD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 23:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178113519368.4939.16013118846647596649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44284f1ab28378cd9d1c4033cd8aac15e222bbe8f7d2b416255f6651d321f25f
Date: Wed, 10 Jun 2026 23:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781135193
