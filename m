Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E942D38F80
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705874897; cv=none; b=abKvsHzOVvcs8Ve5r36YNnwWFh6o049YOYzdq+Uvyd7e3WQa1HR5Ocek5NvLRK4bDRWsk/iLXejIKOojs8J0OFg2jrHOyq1wS2fKzABlqCz+RzFCHq4Eou6mWCtzJtm7XU7yQWJL1qVBZqc1QMMayTVPcPvMrORs688eTG61r+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705874897; c=relaxed/simple;
	bh=DoPQUcP5x/nM0iSOUbMcVYIXK6r9OzJvLAH4GCatX0E=;
	h=To:Subject:From:Message-Id:Date; b=u4876o6Q74zV2piHqC2ePbjUDe4j+0pAwLrQj3ce/ZR3AVqiCjkcBBlvqG8LKpwGid/nsUOevEah3cty8fsjRHP9dCs1M0txb02/jV2xdzFSkQiNmkrAb0MSGVRqpN/KriR40SWXRdpx217SWLOO3VVIFw8iiiZOrpI5CFB7Wc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYFdpBmN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYFdpBmN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CD9CC433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705874896;
	bh=DoPQUcP5x/nM0iSOUbMcVYIXK6r9OzJvLAH4GCatX0E=;
	h=To:Subject:From:Date:From;
	b=dYFdpBmNOAPxELaNqmL2T3H3v3XIsja9u5Yc870V/P2earAGdIUQS5lmqmHuV5cia
	 RrJUuVqxl/0rfK7GXwzv2V0oCH2TmrXDWbJp1bmV80UkqBlMUPbiPurDhJ5BXv50IV
	 suvIRwERjSmWkxOa5N0VG7vIozo4ea9jGmtolfEiPAE9g++LsOs65CPqv09hz04Fn8
	 MSpOLpvNy8mMZfPjfdB7kHMYmP88ADxkjfYu+nfbhjLP8t97h26awyYAQUDS/Qg8Bj
	 J6cA3Teaq9FTPuNthbyvEicy3ctpEX9dVtY0REq4i9E0zBkpNVmTqRB3N4PVhMJRoM
	 exwCn2ia0OUzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B94DC47DB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170587489636.12813.18421249941205401576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab07e3e964c352a53f6e006e7f049c2fc76ffbbc446c2658e073eca828b5d07
Date: Sun, 21 Jan 2024 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705874896
