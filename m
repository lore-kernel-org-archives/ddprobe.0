Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390AE35AC01
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 18:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781116594; cv=none; b=G2QjhZvhsYkvPNOjX1ipEuiciGnRv+Am/ezma+dUz5mnlxOrXFqnu6Rw6y3PFw3kFdEBmqm7BgnKjiCGCiL7AAEggEJctBa6VJ2z4nqj+bBfT7h+1n9ruUrhtfWgtnhb0NYh5ITLMvQDFynppf/ebXDYxEMyR0UwCBdcp0yTf1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781116594; c=relaxed/simple;
	bh=1XtTutJto7NY3FYuUG0b99oq3vLSarNkrOC7Q0ewFGA=;
	h=To:Subject:From:Message-Id:Date; b=PzIQ2HZax5NSS+SsdFSYrORZzTTWUwdjxpsbcrgSblJ5V5WZu+Gin74f+a/K2TbL9xXzTFb+z6T1kgGS0F+HyLCmdeoF0W9N4Z/Ef7lmpLKGU8SOdC4KQB4pPjMDve9JtPcPfNvBLmhmwPMaHGzvtyT7gQVJd75rpXjqNg012uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5X5B9Mh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5X5B9Mh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF094C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 18:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781116593;
	bh=1XtTutJto7NY3FYuUG0b99oq3vLSarNkrOC7Q0ewFGA=;
	h=To:Subject:From:Date:From;
	b=U5X5B9Mh5acmQ5zbvcPihAPJMaXTbuWuy5GH127ehkE4d79jjHp2J9DXJqhj3rMCq
	 /dzaAroPTDMnWJz5Y0Jjb6fugK0pZbOle6CRJswfBb8WZ0VlZGo54TyaYl1JAc55WI
	 WnqirGtEgLITA4+26DUhWCKLPcQoxOLqilECXsK2UqpOCt22u9NQ2fN6W8ANySyAhr
	 zYOKCfJOKO/C2Oh4yAyCv9HLKMraenVs734MkIMNo+nRGbWva/CvvTFg+qIivopqTH
	 vncT3mRDCvHxgqCVjpouL+R5UT47mox5zpBCuLFkyq4Hh6Jd52RYjKR27bZP7V8cKv
	 F9czeQ1zj/8Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B4FCD98CC
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 18:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178111659373.27535.16478566000860395326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d96513c13dc8c3f08afb5d6b26c9abac536950c6ffdce9d55b440a154fb52231
Date: Wed, 10 Jun 2026 18:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781116593
