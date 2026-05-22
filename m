Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2EB3D4130
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 10:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779447154; cv=none; b=g6Kx6iE7MngzDhF+Fr8iAJzpB+MV3ZLiRWURuc/XbNG3nFHyhSAfB4fqNleEd9vfSocOxMwp70sfqVfsp5uNICzpF4e7eR+7u5qz08QiGDidP3AcQ4Mpd/ep5HBPBZczKBopQ7rAxdnsmWmjk3VFz5ERpUVvdDppsbF6VdHVHXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779447154; c=relaxed/simple;
	bh=wP/JPo4fizTqsU6dBIhOFuH4dpTut3u1Dee4xNbl/QU=;
	h=To:Subject:From:Message-Id:Date; b=L1GhSrbuCiO+rSPVMfw+lns+hM02XiJIRiC6cWqubDvC8+yzHaSqqfCSp9vYfUY2Jao4HebofML5RF15AvR/p5oMfjfg9ODaccVo/VpWF1SZyUqNyYMtLfmhM016YwPwH4zT5msea47q2pwuXGIUNy/6xENlQSJ2129vd+jLN9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caffy7vD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caffy7vD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A5EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 10:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779447153;
	bh=wP/JPo4fizTqsU6dBIhOFuH4dpTut3u1Dee4xNbl/QU=;
	h=To:Subject:From:Date:From;
	b=caffy7vD6N8J5prgstFMEa9lqrKklWk2JU2F+cRVRnSbGrYgqwu4x/kDGtrAoZOKS
	 mrF2xtkyMslsK+LwBLrPwlkEzwoVim9HUXr3Hot85MQ+YXL4kcQzh9LPnnUqxDrAc6
	 ZtM8ljl0hhPoTXTSxa2imFhES5aYUtfVEV+ztGkzAdyZb2rEOsand/MLrBuXDUNIQ4
	 hXdYta7E0J90zKfcL0fSlRf6v7d2ltXERUGWW8z90ENObzAe/M0LQOh/iVgNyQr8MN
	 ddUtNCRcVcIar7y+tv1Ur4dTNWZfCXHR5tbkHzAhG1n1ycJTVWJgmV92Vcyzhr3F+y
	 PMxmRBRxdj/Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE82FCD4F5B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 10:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177944715368.24925.16632753558397903198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac8d99579e27b1aacb874bb12c3ecdf2fe2392a9f2e6b843efac238b1bd1e7e
Date: Fri, 22 May 2026 10:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779447153
