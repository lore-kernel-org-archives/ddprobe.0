Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7C8EC5
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728987354; cv=none; b=mWmRMUSDkIwRRI+i1QlmPC6bd+xblZKDSliS+PYKVHR+jDDacwjQNGjp+87YZbILqC67wU9dVl8fGuvdYM2639hHFdlvBGlroJRSdSXfkx3KXeBU3NENh+ejiCBi612PPA6B4cKTVx51NG31VNfN+gbtGAR7OwmgVG8rEglVK3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728987354; c=relaxed/simple;
	bh=4CswA6QKfPBm2KyRKcGIhbuoy1OxXq2JFno4cmgk5zc=;
	h=To:Subject:From:Message-Id:Date; b=Z0sEokg3F6zNNzJxtBhPCmU7TygdL2mHQ4tBTmt9gOiUSUL51HI1Bcgdgh1n9bsW2VjX1ySIkLxve5owj0KQYiwa/J4NjNI0WWhJ9Q7X9+p8nHmTFm02pYZlO9L05fd7AFqdxJsGXZrEmkpTwNc9nedyt2ZMtnI5Rq49jmTsSIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xa5KsLsV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xa5KsLsV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC277C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728987353;
	bh=4CswA6QKfPBm2KyRKcGIhbuoy1OxXq2JFno4cmgk5zc=;
	h=To:Subject:From:Date:From;
	b=Xa5KsLsVbTVPBKqkE/CNtHaGzbun+N9gQRshTOz/2shfgsXJhYSiLa6IbgvelWZuP
	 af2YrbISeKGpS/OHaUllhmnIN3egzJxRidbPkM2Xqljd+fQqsVl1IMRh2SMK4GX1zm
	 8V7AE+FkFWjahvPTJYtqwBbUJzapBUyOgmN9FJcnRVrMY1yHIhmRmvNA9cToOR8U/I
	 58e6BbJcaabHi0gOi/7Z4t4lfetBMmuuXMGZqWnHDLOLYOSNZnPk90R3SgxzoR5ClN
	 d4mlNxZrhohLiDURaOJrOKlzXFEaMII0kM5X9fm3cB20hKHI73aWAc43IcMx/QNyvh
	 mHJjCrZkYaMmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4D3CFC285
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172898735361.19410.7799995378455194930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b938aa665cc4692bfe9a99201d0f54cc3ad110ec364b3407e473d02777a880ff
Date: Tue, 15 Oct 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728987353
