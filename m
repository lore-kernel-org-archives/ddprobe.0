Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D6D27F4CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758048594; cv=none; b=UHW8lPhfWPCZTLN5TXf/Hsct6ZN2/Z+70wL+F1OGwhjq4Kw9eAIfm4JSelOM6UXoNgd2l+0exXjybR/2p8ZXIkLUtRd1+qff3TcjzF2qu6KhTSc/7p3mGz9S/o9wQJfgTP24Zg+deKjyu9fCgmzTD5OOlEQK7LrH5sBXs8Q6Fnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758048594; c=relaxed/simple;
	bh=3Px7wzPdoR2bkJRDzlzeWRxZziOjPbpEIHiti38o/Bo=;
	h=To:Subject:From:Message-Id:Date; b=ev8gmHAlR2MModLEZFY+ug6Yxka6vx6KluH45k6hFfaDXvq+XdNx+rNDN/4BwuE9J1D5ZlG2Vs06Dki67CKFBSJJYxTCR4Qq5jGe8wxoeFlqJHHZMWb/a3pxwjpjIEUwI52QboxTN1MvPK8Y+r0M4ORQNtox8/F+3YJb8fp8PQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DfKUH5nx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DfKUH5nx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19F7C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758048593;
	bh=3Px7wzPdoR2bkJRDzlzeWRxZziOjPbpEIHiti38o/Bo=;
	h=To:Subject:From:Date:From;
	b=DfKUH5nxWe/jbgg8qgSubnAbn7Dd9/tgb5Rk9NIPBaR0jgGy0YqpzvLR0zqYkaCXU
	 Brm/X/DpoqWc3BGDXK8y5k7qJMClccUq3y7XsU7jmd4oj7Z3z5nH5jvuxnNG1pdcvn
	 42VlWkMdkoWPhk+rUnYfKmavQqtI/zJ+lc2Cb1yk3CWzR3ACbXJy1TQi/OetFkJdVQ
	 DbAPMjOmcZP+HS0efdkhNGVWPdDMuVd0yaOTFd7VTV3TpMfAL4AOsyKpjO/pDowQsR
	 uphHAiqNY3+ecTWVZpOUnCLbl7z+bC4VGqz6LwBlEd2HSvkiPIDJmJFo/WseWN8Eh4
	 WV6O0SzB1CpeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14E5CAC59B
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175804859364.5020.5452800508845205797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49b79b3f1ef260d5c5f29b3d6665a70f78edd0d251c0089899ed0b23e2470997
Date: Tue, 16 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758048593
