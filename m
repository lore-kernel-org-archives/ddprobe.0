Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4EC19DF62
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 12:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778417434; cv=none; b=L3fx62E+NhbWnUKKMBzR4xi7WCmY3MIgDuwjRFHpNAQD+v89hnkW3+qjvCWT18t4y/t+ARwve3oqg8kJzuQ4P35mqA/SY8UUG7qSpp48Mym6nmZTqYyhU7H950GCCEldwHcZd8Dj8r6jpC9uPY13EYIH7o7WowXL0Y+39A8LFXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778417434; c=relaxed/simple;
	bh=Xy3mr00kDJz7fpb0smBkeXPREVYd6bZ6YQR2ovfHnLg=;
	h=To:Subject:From:Message-Id:Date; b=WpuMVpenkpauFvbwQLtxTMHAetdWwL9fhBa9b9H1je5wEkAMz92H6NGWxi3wLPINbxTXA3nALRlIn1bxG2LmstDn3xpm1gkBHPkBzhvcmUJWJhsON3nrFnS0CcSpSjWZblaHFP385v//e9aIqK8zzedDvQ9aDzYNybiGETwEibI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYlxWAK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYlxWAK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4363C2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778417433;
	bh=Xy3mr00kDJz7fpb0smBkeXPREVYd6bZ6YQR2ovfHnLg=;
	h=To:Subject:From:Date:From;
	b=uYlxWAK74+EBdeUVbZ+Am0RWjVvpNLsQyJPoIgVBQy2cwpsl6XEFyQUbz0jeOPyCw
	 ijuBFuW3kfbjkhp00Dtq9v6oAMQB2Dbe2x6NidZzLtxu7+27U9VZXr4wyXTnRKmG7P
	 8FCwnV9WfOdnGfgIEGSIAHpHsb1FwieAP1jlMC9g1uHp5sEcfWNOj63+ZYBCml2eEJ
	 QJBuOwbbAFjI7oGXAggssc/5HFO/1nQtPETK68Bh1jqgDvFSENPOzguJgi8Gq7xr+X
	 KyyLEmK9y1a6uKvrF3K4Y0jENdRkrNTZuHKXhQn5txqIWjGHQLCI+iAcdKhnMd9kVH
	 YSYSS/Zt1rpXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C09CD37B6
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177841743369.11904.13359237710139807471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed0505971c4e9dbdcda3cd29fb9599f9d834085da4f91b67ae4ec77c359b9404
Date: Sun, 10 May 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778417433
