Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D9E1F1932
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772384093; cv=none; b=h39mnIcfK6aCcYUkI3RsTqtjs5qR1klkccsyFnAzfhgsn/gSAzL4Xz2VinlMVCJ4d1g2KIdKylP1bR3UniHTarTBudrULySKYHIqfwkIjbxHPmgIs5NmEdVANOOeCJcQQ1NMlfEZvvF2QlBsJHkMQQ2rMESnCfZLWoIQ5oMJYU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772384093; c=relaxed/simple;
	bh=mTG7FpN47G2jd/mn7Ex8CQcbIpIqJQTevs2xNHBgZTQ=;
	h=To:Subject:From:Message-Id:Date; b=GmVvjc77mjbv23wP8ALWy3MEMX9MLNLIbZHQ3kmQsCdTsHtgxMJEvpYQ2QqAWotBycu6nhH6uS8Nj6o5ClhAggKOJqTl2ALpucdltagm4MxO0tqtoMgjUDZB2SAjbwyoguZ+wPpMyZc8qK5T9H1ak1WGG/RTDTFuSGsMgsLrKbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nkPrv3eD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkPrv3eD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8B0C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772384093;
	bh=mTG7FpN47G2jd/mn7Ex8CQcbIpIqJQTevs2xNHBgZTQ=;
	h=To:Subject:From:Date:From;
	b=nkPrv3eDWNS/7yBe+MmzShrvwM8YuzK9Oy8MsqmcSLGd7DOs0pxxo8pIqMQNWYK3+
	 DH1+sBQNaSIwH/TxbBY4NElPwdNmRO3GVD+4NYKZ3xNfrhOkkTPX1zIlotP0PUSbra
	 PIbv4TmecBHTSMZXFlO1fh0ebBNc3Wn9U9a6d4sLo04UUBZW1okpa8wVWvGEe1ytgc
	 70tqkpgb+uJbR8qRmcZ5LUm6WygWjpQhqn2ZStdQZIgAxY3mBBkkHhCfZw3/xCg0LO
	 fPxPklpR9b6E1rt6ImV70xaElS+6RpMWd/qflF8j6Mm6q6xT9PDOG3NiW3dBojW6O8
	 PXq8044V5NlkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EB8FD0058
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177238409360.18435.9418498926010879131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2a191d1f9910690e09c9bd782c5d5ef2956a74241bb4cb27129b1cacb6dfb75
Date: Sun, 01 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772384093
