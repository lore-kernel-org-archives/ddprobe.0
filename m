Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EFF470421
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791912634; cv=none; b=lG6YV+cS8dvHl4jPnb3IKWz7hcE4Hq4eLd2lAMD10UyA6Bm283+sjn05WD0f8PI5tGvQJRbaDkxjZyE7d7wIGIgkrM9GMvyPCb8GMrPdZa+zIRVpI7B2VgxdHZwFuAVHkgQ5q0ACaIDzg3KfbR1NFZ80kDn5u+uUXd7Qi8/JDLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791912634; c=relaxed/simple;
	bh=w6DxwmQx/7mSl8tNsrlmPtmmreq8IIBO/9uJ+F4aCf8=;
	h=To:Subject:From:Message-Id:Date; b=Uiq8jOpKDhynKU1GQmPf2NFDa2ykRBHyYkbr1SJW5Z/dL5P24W8RI4SFjeOMNyu3VSIRoTX5cMQn8zKulGkRq9YseGBXEEsDrwd710ZZMnZwoKLkvvqy46g4JWN5P/WehQDO6r2bz3EhyWKFeV2vB9h9EsoRT7FnRWU353GqCxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFWvCsuo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFWvCsuo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C70D3C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791912633;
	bh=w6DxwmQx/7mSl8tNsrlmPtmmreq8IIBO/9uJ+F4aCf8=;
	h=To:Subject:From:Date:From;
	b=nFWvCsuoq3d7IJwND8DIMi6gPpGcw4jnKT8UWa8REqWUOKuR2wfBHduf/SKOkjC02
	 8abOHQ1Z3TUE1TURrObNyzWkMAbnH37GIvDyT0NSuxWs1mA4xFzp6ct61mJIGvxLUO
	 cH2bRHqmdZ6yeU2AkKJ22hfktmU7QTjmWAE174cjSR5atVsF1KXFtW9v2U81A5EdVX
	 ogHvt/N0w8RMG5miJ5dRtBo9pYWBeQ8b5p6msVEUZYfVr6hK5g9+hlxdk1vXcNl+za
	 TJ6VWHPRd6QbjpdIl37IZc13RrMLAuGoUN1HflM+hB7Y8qSGG62Xfk1OjANC5AoIZc
	 JW3zYQb1iDmvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9BBCC6B0E
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179191263370.25113.11069205477336746021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0da524476f53ec2090ee49cec951340a2c1ed0f33f044bc51fe7597109b63c9f
Date: Tue, 13 Oct 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791912633
