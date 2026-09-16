Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B914C14E2
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 11:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789557636; cv=none; b=C/lahRDSpHPuq/fSOttYRxIVukcF30mJgWkZVd/Upvq6xU7bA49KmwRfG5IYBnGd8G1auyak+Az1/7WLsRcfgoH9PP7niMSVx96qsBmz30SEb4PIX+eI8VHU/tp12bOUoC6fVj7LaPKy9DTA6u878QNrX9j6rB/o27HhV2c818U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789557636; c=relaxed/simple;
	bh=+3kCG2FjRD7Gy0QHUoQHV4aKcI8TaNkaGkJZbmPbjnw=;
	h=To:Subject:From:Message-Id:Date; b=kiCXOajKLKVRJAM0zTdVrzC7TVCE1tWHUJhK6B2B+Kdfg4m9zzYQEMwS4oMBVskeEuJ+aekL1gzs6E87O2NbFQ7lXrSqs1ObF+8vMyOUPE2Dk/7HKdWch/cNGl0RII4Q39MmqK9Dkjn+0L7WSCcuX4nFtpVpu63MmAX4ND9tPjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dy4KAvLT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dy4KAvLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8784C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789557633;
	bh=+3kCG2FjRD7Gy0QHUoQHV4aKcI8TaNkaGkJZbmPbjnw=;
	h=To:Subject:From:Date:From;
	b=dy4KAvLTj2I6WgVhaL2AfUpCfw3tJ3qd4go6R0NKffJwjfTWPml05Cn0glzFLRf2p
	 cSykmgioKF0tg/pdX85vP38lmMlLccGBUlNrJNAv/XaOGHiW0SA1ff7EAkpGaNQZcX
	 YiOn8gsD8tnr0Zj6aRrzAIeBBX93Ldjmr0DUFYKqCpqS3Zl/d0JQ9BGPKbVupRVC7Z
	 7H5KCMmZcWEa80lkh6yRZ+0RgWVZOwphddK9OTA6t3VTrDj9lDq/FerDUIc6Kfxpsn
	 zuSs6QnALcN9PgYwPh8QafucKhhgsXD+P4vK80QX+EAblssmLPuYY/2XMNQ3RE3JdD
	 9sak+tJ49FdFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4183C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178955763372.8662.1843743065454978665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de92f262a5be5102671f6368255e70cc3ee64e972a3cb6b5cedca70247e1571d
Date: Wed, 16 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789557633
