Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128171D5170
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774919094; cv=none; b=HW8XyrvvsxRZPVzAt8s0Yj13St9AG9rzydFJJox2ODmwn6c4Z3yCbrkl0sykwy3mFsU4cVE3pMddattl2jn66djR4r99Y0wmscUqh5ipWpaXeGzOHzyzr6tVNPfNEZXuEOYP50oNAcHnTnuRgwxbyMnqqI8VcEbEhuvSbu9guKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774919094; c=relaxed/simple;
	bh=tvmQdwHNrNJYRKXuDMLCCTFn4sSRNUHeTFrD5OhhHbw=;
	h=To:Subject:From:Message-Id:Date; b=CTXdWDeuJ5AfOpaA6gv0bW2/W6L307jfuxTDPmS6IDxEYbDcS+crh2sOiVaSFwPnJ9MBxwyOxHXgH+YAWkPLNFdJ6gpypW66FZwfbqRVOzJPSozn1hwAvCf+XkGWhPAB18l9ct4t8C4XQIqw48RGbSzJEW9UYxuXMmekOlFvhdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q79jgcWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q79jgcWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2464C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774919093;
	bh=tvmQdwHNrNJYRKXuDMLCCTFn4sSRNUHeTFrD5OhhHbw=;
	h=To:Subject:From:Date:From;
	b=Q79jgcWx2wG5Q/R6a3NXEvh3L8iCrF7Dgq3NZnarVpv1oKXYrWbSDSvylF2BIz2rX
	 RmExaCNjP98WVxD1BcimdBVbPHLfr8qPGz0BNEt20Nhtc14eqqv68Yx/POhih7hEJ6
	 7hlixZJtTsynB2aqB7VLnBxpZi1RrNSB93h7lBs92qUo5THd1+4qLbf5JM4ocnyjlZ
	 MYequx2RFKiW1GMhLuo56RDQCj+33neJ8wdw9TcyiUSrxaoWIsGiPvfKVcJz4KF96p
	 ydf6aci9IqtmCBFw3PuVfwdkMvejXBe5SBgY1thbnhsqWZQP3OcWO/3W1vAzaelAZ5
	 hTrl45q0ZMwWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D461061B2B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177491909358.14801.8772472658231207741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa05b4466d0c7800f1dc89e882900b43b90a3b384bfdbeb9278b3853c25333d7
Date: Tue, 31 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774919093
