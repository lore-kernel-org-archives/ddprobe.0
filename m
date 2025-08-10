Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342021922FD
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754835594; cv=none; b=f3w4aUIT2UJ1J17OijQgLr5daF3EJJwjy3xbIndr62VFDnttRNwge90DczmXisEbt6LK6L1DQlpS8nidRpZE2tWUQk2Ypsm8JmCt7xG0O7+EipRfq+H/CeXEpUt+C5/jqV/9Hrfhb9JJxt3l840/mTbF+1X0kbV5FATBxUYnwqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754835594; c=relaxed/simple;
	bh=DPJrs2LQJ7Ut5sHHrMeLE3VUxj/5ce2hNCHKX0RopBI=;
	h=To:Subject:From:Message-Id:Date; b=RUZqx+OSJzBHgnungS5V/SG9Ktuntoh9Qm1EokQw4tnqu/7LXAzlP098gQFE3zBaIHvzt6SrfW5cKeJYQV1s5rUQvL+ph6PZnX9i4gt5iu2ld8AW3ijtW1MSAjlNVHHU4resJmmXpquVpHd/AyQWTzBTiTLjEp38DlY2nV9iUv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVVyuYMg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVVyuYMg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D21C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754835593;
	bh=DPJrs2LQJ7Ut5sHHrMeLE3VUxj/5ce2hNCHKX0RopBI=;
	h=To:Subject:From:Date:From;
	b=SVVyuYMguDYUIHRRxIyL07EFhSpMytCzkQr0523LFPFFwfG+Lf2xBfrOdZaq+oyCM
	 poSR1lUzkbYupiAqAxV/7PqUBRlyyWKD47V1R7W/bss6IlrqSBgnc6tlgVuFjFOGfd
	 ezPSvRhTmxR7UHC0c/KQhhHtO8vGrCehL1nTe0Xcf6ao/hHhLlxEOpLRyDjzGHus2d
	 bX/tYRIwtXxx/gkxrxRPiHxO+1tjN11EDmdMCTfbinD2qVppPx2A+tho699uDqAlIv
	 ct6IUMcRhlMN3b7FgVyAaj2GCHoR2rmHVpGFoKeGJmarI9caImR5Zv66+yQiZPcnEq
	 KhLZ5jjll5ADA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D71C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175483559357.19050.16578011756032199190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b416bc24bee2e0f6294ff6204e78f6d1eb8a0a026925ce2218b502ce3525c3cd
Date: Sun, 10 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754835593
