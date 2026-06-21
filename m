Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F895237180
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 00:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782002794; cv=none; b=mHihqg76fDRsNlsd74+gXGO71xw+6A6N7v6v7kNIl874v2yeoH3rW6mKixtqEYUI//p/I/EbK9aJT4hmuyNktX5UGXooBPGHhdNKjbDBlm1hvuFBIxpDIxmyN8gdjjZWMi6sJtOD07GhbwkwKQCDCKgup7SaUqYTxd9fFa+uyB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782002794; c=relaxed/simple;
	bh=ZOaJlQb3iSgxtpSHGKZ9XCeAj92VeWFzt2QIynlYwWc=;
	h=To:Subject:From:Message-Id:Date; b=V5T1n5VTeGxDPCMS/9bM78DttNlLJac/Q2XK6wTYQT6T4CCuFvvcOblyvMEXVci1QVOa9LxUDPKE9g6rGulT99sVsRO2Qx8kNM8luMtsZsjhlze9X2uzdcbBiD1urj+Eu4eOUoMWFxozBys5vxnqeXF6uW8MZkX+8auPliDZVjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOb1v1eE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOb1v1eE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE036C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 00:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782002793;
	bh=ZOaJlQb3iSgxtpSHGKZ9XCeAj92VeWFzt2QIynlYwWc=;
	h=To:Subject:From:Date:From;
	b=gOb1v1eEB848o1cZbNgoLo/p58mQZJc5xN6R9HvwphKotQVu1LNp6MnStmyWlbugh
	 CjK8qeS/B3abmsA8HStE/JKVcP0GAIDGM/LJbsRyvMpJCCKyjL3E+zsWk2YqTpKDYV
	 zNpmTA0lIKK2OOmOMZkSQSQmUJgqb8l7feyPCxCGysJd3qeSMB6hF3T91hS6S6mCMq
	 /FvhHquZc1+0tN5MagVxo0BUCnSgmC/DQ7tHNcrwcsN6PwIu4gPNse0lK9O9ix0GnD
	 4ouR9aWCFjNU8ae2FWmqJtBvwHhD4VjcROhIodttNhDJCXSGZoCe3uouZCYrtXmYCM
	 DF2KYtirtG5JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD45CDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 00:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178200279370.24253.2832946119225350761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322f6ef1d14ff29546a7860cff26f70e0dc1ea8314724278385ca72d4dc1008e
Date: Sun, 21 Jun 2026 00:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782002793
