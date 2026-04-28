Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1171928313D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777408654; cv=none; b=bZtnrtpH2/oc+e2sDKxZYNpE61yW4Ug17vAQIOPYqYEEzpbQvL+gjSulBmOezHRHfSOtxa8zmMMNYq7BPfi4nA9znxl3U4/lhNZPWhXccc3ykM9oo5F0gTS4fSHUzdjIap8o1HddK+FByQGEJuiGbXjBeRyeY+9W+mPYc5vxchY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777408654; c=relaxed/simple;
	bh=3RBs3S9JuR3CEWmROs5wbbe34qL9P1v+VMNPufuivCU=;
	h=To:Subject:From:Message-Id:Date; b=m7ZYybj2lr95CAKDlB6ev4J7kohVGpcqPTsby1173+/ueVVY7lM2NsJk09eyfk79XerID+vckvl6FtfgrTwEU9nRMjo1HSZyUhiFEa1hcCzYJH0NH6jzJ6VbwBWPq9TE6YyRmx4B/s2/RdC7XazNiS21sPy7+wKEBvugjUh8YVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FF9+QBPU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FF9+QBPU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC993C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777408653;
	bh=3RBs3S9JuR3CEWmROs5wbbe34qL9P1v+VMNPufuivCU=;
	h=To:Subject:From:Date:From;
	b=FF9+QBPUJJKirg26X8ApYl4cQP9PeKLVJ78ZP1MylfpvuOwbp7OW++zxksFuqF/aK
	 ix/mDdQ/82gc57LlydvOmX1/al5mR9q5n/DQy5SLZqL8qnrFtLqt+z3n8s1am32z6Z
	 TUx7m5F1C4WHm7fuVPtnjKMDWxdDbMvv/TClDvKf21YuDlsVOKX5XJxvdNZCUy0Sn3
	 KhiSq9gPQ8PF/hSJKA9A4QdCkW8aA9kMf6K4Cix5RA5vy0EH72hXuaHcZdvzFejRtm
	 +yCUd1RbcbyFOeoHePdlALsM2Vqa+WdUrxXDRjprvKiRP/v7Skd9NUIYcaYSk3zS0A
	 Lhx/E4lrhM/Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4BFFF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177740865368.2233.10006853808147828568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a534c2bb1082ac3793256b0c99b1b708463aa9635f8436a49ab325be86e9a0bc
Date: Tue, 28 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777408653
