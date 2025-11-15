Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C482FBE05
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763215794; cv=none; b=U5kNXVnT1hd3PQZHEdq2k8247Kn2Dvkc6PK1pUoIVVsP2FWXKTuZxy5uuJ8p7/aakAxanZQ+gbZKzqMCtvibkJKwlUGJItjPo88oiNja1Aqyodz/wIkcf5JJFfkpGDweAV3BUdaySTDAWyTaqUnaEfnH4mMJUeJJYTEEZaZZ4ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763215794; c=relaxed/simple;
	bh=DRzyE1EDWOJn+t4VHFcPRK2zyQAfcWPSl3CEyIl22vs=;
	h=To:Subject:From:Message-Id:Date; b=Nh82SP6NRpMRae3AassuEJuSJFNkLUKSe/6g05S1Pe50ZGtrKTWF6iq4Z8K/P2TMEngoQtIl/pqcNqo8Ay3FkPZGmvW9EQ0Tal+2wPXosnLqBbjJl30ogc1DG21V6DHNeJOQC4MmumeyQCTmN59tD1f+e2TmnHH2w62CPtZnbWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmbIPMh1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmbIPMh1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3536C113D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763215793;
	bh=DRzyE1EDWOJn+t4VHFcPRK2zyQAfcWPSl3CEyIl22vs=;
	h=To:Subject:From:Date:From;
	b=AmbIPMh1wRUbGSFK6kTYyp+IDO8ww4QPz6sSWzr8Eh6VCUN/mI/yIpGxYGG9SFNvu
	 2kZaTyi4GssuBjlfdXKKMDEYGV+xj21UEk6TXySWPQ8VnlhlkkvxMw8SINeNP/TUE0
	 JEEOi1weRHzvGH+XiI4lbRCQxWrYbaLwpQ8SH0LNYRvWKSorGOnQOC1MazH28YM3Dz
	 634hcsRmAjKzzryTUo/wLl/nV5hl85YPbJLwLdaWPs5DKiZ3vii3pKb55QQdEN83OI
	 rvQ3c2DidY6lPvv6A8eby2/lAGNW9OvmoTG7PkqWnOWri19KNXnn5mJhYktRB1VywZ
	 kV+xmZEdlzQmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90541CEB2D8
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176321579358.916.18412449160567706968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba5f17df997c4a8c80ef60ab4a4b87695297831b68bb4fbe7c3dc9884f41f479
Date: Sat, 15 Nov 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763215793
