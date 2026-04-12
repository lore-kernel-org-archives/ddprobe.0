Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0D2381AFF
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776006454; cv=none; b=VfU3zP6C6RJP4fGEIvMz7udSC1UFwN/IUot0+PRhjPAd3Uo6cmo6sbXmx7y//otS7P6rAaL8xP8qD4EzmyjYu3ZZtmrqfNorpH+TGWhrImPhsK/rHHDVkESGgvAtDXSd+W3LZFd6UrKin1ageBu1DeZcZkYHThz82ht/39FBQcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776006454; c=relaxed/simple;
	bh=DZRqUWIZZcsRb6OMwZGiPjQn/AUaYHhZEpfRKg9sOpQ=;
	h=To:Subject:From:Message-Id:Date; b=mI41SQfdKFgYPhn0fvj0MKH7Z/fjVBQwN0OTfcdvLDDZiq4ZXAmBJPbpDZFrv+ossk3GotDG9yoVaVXw2a5sEOixdXuMxyy0aax/mAUFe+1Xm4VpdfYrF5sbS7JuW3TWau2y6xGc463wTIKZt1N4O4oGaZhvniH09VMAE/R2S1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4Gau6Yy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4Gau6Yy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE8FC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776006453;
	bh=DZRqUWIZZcsRb6OMwZGiPjQn/AUaYHhZEpfRKg9sOpQ=;
	h=To:Subject:From:Date:From;
	b=Z4Gau6YyI2e5Pgzu4lqrkwHzhDzsJOErd/dIv7WpFzxhqCD13l86E5NnVFvPsOjwR
	 FYb+BzlxeWUfPOH32ZBhjdytBcX3c/4gIRIwTwOz2PF5Vx3KL5r3m1R43rBdpzNBCV
	 Qu+hlaxcYtnpdVkl7BdnDWQgc3JEfdTPhIs9D0mnDYOPfNIizSJT053M9czFhiwtKQ
	 a/ILIQzPIi1ol8NytZ6VKPs0vkWehu39kWc0FnskJEG7czrVxEIn3fqW8DdS7TIFw0
	 r3z6wb25GsW5unZKjs63HO+2TTNCgJAl4X8irrd91YGicvqlQrZqXfgX43RfoXa2p7
	 0KixsxZMODXVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8A5E937E4
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177600645368.8976.2885470993812888024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93df714c30d5855cde43d51a02a09493948c6a83755114e4160839940dca410f
Date: Sun, 12 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776006453
