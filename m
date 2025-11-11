Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95544C97
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762822193; cv=none; b=O6gBsn/0pVxwAF4R/fly3XupbdChUOMNU4ELkwCNQfon6LeffaYkgxn8QOV202V9lcXLC1CeNVISw2N5b3a9Wa2cKC60XTZ76jF2/HMddyosHs4LAAq+xpA6lDwxEycJSVlmBC6bkEiRRU+I2JMFy7/JCOt7MmsPGMjtQ7SX4qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762822193; c=relaxed/simple;
	bh=HKGpS5dnafwYfVRL/s1jst/o2HGz4uqCIodflyH24tU=;
	h=To:Subject:From:Message-Id:Date; b=D6CZG0Ec9tDKSKUnx4VDrrS6ERyBJ/nc7mRUwvmWmzvlftRMGq3OAouNx5i/7PBSxrrdO+ii0o4e9mjV0qsTkGj/h84OJCwDJrQpSgwVgk/L2ny/c9rYvjvymSdi73AH0/bcTMOgiFE9uia8n2cwMghssbOPoJ7g4VAzy4cfgXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJEnFgXz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJEnFgXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8545C19421
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762822193;
	bh=HKGpS5dnafwYfVRL/s1jst/o2HGz4uqCIodflyH24tU=;
	h=To:Subject:From:Date:From;
	b=YJEnFgXzVFx3MBK2dmJmAbwRHXZ7HmoEuoZxb/HnsaBSChGgOP7qkwLEokft8hVC0
	 64EKhEXaR0BlJalfLdPZ+GIcRdV0zdPhvUoKCXukDXw1KLe/mHDlAh8AdeS/0WzWLp
	 rLplYfKy+T+7WJ/5BUssNbxDrenz1fIsKewLTOKtAAdEUwitcVJ3UKTOoAomtEM8Hd
	 lwsamOiJHIPJKACw1dEddCKy/kfUlZS29WBWzkLRelk70NPXN80VpjAOxuoBDHtLEL
	 HaT/ISojai8sOeBiYXYUexJBCO3/7+3CuwpaXvx7oFrZnwL9Jg7xca+optTdaIrwnA
	 uJUOtfUF6QDWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DD6CCFA13
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176282219358.9087.8738279606403306774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09d4b6e4f8fb70eb9fdb5b097fcd5e6d73595294da18437d8c1c57e1b71abf48
Date: Tue, 11 Nov 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762822193
