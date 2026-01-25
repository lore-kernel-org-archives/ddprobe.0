Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2883EBF1B
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769378034; cv=none; b=SW0RDn9gGtO9Ih3j6HjmgaMNE44H0cKFZb2a4u4GImQEG1J1bQwWfTImPYq2vcmB/IlRfiX2b2J+CmWGp7CuzYEjzCiwA4NM1v9f0Q3oHt+K29kkA1ymq3I7quf3zYOxlf6Qc1hMMC0dzPbaWZHlrDu1weYKGfBgL+ZgdyY4hnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769378034; c=relaxed/simple;
	bh=Z6Vr0SUVxuFKlu2XoPAZz/zxyaQPPlYtToMmw1csY4E=;
	h=To:Subject:From:Message-Id:Date; b=qbGjyjWt4koruURXkqwa014UabZCHlJn5q4BUQzE5fHjlpjRSEIw2NgnlRXgP0eu5RlaUXodiseXD4LiohOyDeWLCRFeOfTIfH5brB32wMin9gxgWeDffnUc0riykXtGKYjrez7mLJObstWXrtT5bscjYsl+YSsSZIPFmRFZnZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sayjb2UE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sayjb2UE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60A3C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769378033;
	bh=Z6Vr0SUVxuFKlu2XoPAZz/zxyaQPPlYtToMmw1csY4E=;
	h=To:Subject:From:Date:From;
	b=Sayjb2UEkXD5OMpwJIYR/DM5aEtLdBsKo5hC31PM+kYLFkIgQM/6CQsAH3u8KLTwm
	 urxrUNGe5vSG9kS4ncLIZTIraV6Cs1QJrb/BKsmEO/QPANs778qZV87Fb9gu51NnMa
	 VF+mp4CufCrBziStHJOoBOL8LV9ZNyNahNzwNBvjhdvVGKprin+kCdN+QjcWl3EAXl
	 3qVoKs5N8m8a+unGWFukJ3y7QtjGeaabufPcTqu+DGJMRZYVCob9cshKuxQ/ZjfF2z
	 RRQkwh0xn5sdSVejaEOV9/bPVgyLRTHxm9wq+x/kkk1ZHKA4KJQtwu43m/mLxdePlk
	 VTxJktcJ1Fd9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9F2D7237B
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176937803357.27245.12031699531007773317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd32f6e2c7de51c7b40c6fa228a156a3fe09011a63eb64d67de14c57824880c
Date: Sun, 25 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769378033
