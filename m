Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F29718EB1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 10:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717150463; cv=none; b=PpEjHaFF7iGtoQcDf2Z9vat4hY/sHnzWHgnV22WqrC0SuyA97P8ca0bjY+CDEbTquRJ043uXt3iRe8OUhX9u/5zzMdjXahjp11GokA6vqnO36Wji49uXCtxorRKMdtGpL/rv6bClRZKKRCm+F7bPdRsqz5o42gH+YJTCcGuwZkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717150463; c=relaxed/simple;
	bh=c2qKesuFBPP+rKudeARqLF95Dm/e1gSNmbRLg5o4+4w=;
	h=To:Subject:From:Message-Id:Date; b=rnTtSKs7fbbMRnxsdVuhp5QSVAY7T8tXBKlnponq48ijTWMQ+yNbgGpOPsPLay1emUKaorrGufAa6jeuv7X+peVHDYBqfO6wav4oeQ+R+4BgueSgQ2ecXh3ITFlYJnSz0itcYpGYYz8K4FkMwumklga0EwuHSIMgPu6NvN0eKBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XaTbnJYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XaTbnJYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA1A3C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 10:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717150462;
	bh=c2qKesuFBPP+rKudeARqLF95Dm/e1gSNmbRLg5o4+4w=;
	h=To:Subject:From:Date:From;
	b=XaTbnJYSIkuENVfb8ub7PrE/TSKUXN5n6MWzCtt/ACW4wSJddFzGEpUxJWC3KmjnB
	 dfXAKB1c/16lKN/M6m7CODZHuk0AdAb2AZ3mCVsMfPluiCNJbf+xLyd0L1L/pPbGPp
	 216moj2bc4UbsS/vZlKj26BJrtcoAzaTsjoxWGw3XSQoqkcKTnwesf0ZTI0FzKEZH6
	 96XA1c7DRUy8cDe1ix4kHJckPknh/e6tWhvZ0mHWKYm0H1lfu9kCwWR5pq+2WBECDm
	 lldNQR6qK4MnbKbfunmglk2OFuxyNrm+doIb92prs0ju6J+2MKQaTr71HUJp7aBeBl
	 r4VKWONot3eXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA175C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 10:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171715046275.15909.13242541573350022600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b3ef2d81ca3e842a861aaf1674295a3446de7e8352863e39b8a98705dbb9e3e
Date: Fri, 31 May 2024 10:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717150462
