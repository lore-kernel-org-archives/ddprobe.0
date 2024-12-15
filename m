Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304E9320E
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734238554; cv=none; b=lsA9dul3tMHtFGOP1YZSFLjiBax9BBBxDHVg5UjdqluFbmFppB9cbHjX+xqOybf4uIQ3B9x1fQH9XH9BqNuHSvUiPKPId5c1KEwcX/65035CD8E2EJHzkM8Z2EgeQGP4LHzl/TP1paQQDF0d6cJR7GDaNf3f5NpxU9KwN3zflnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734238554; c=relaxed/simple;
	bh=QVAKV3ALI0VLQZz4KAgEZGAsHAYLubaMCvjLIPB1mFU=;
	h=To:Subject:From:Message-Id:Date; b=M207oyfecSzGim8xlk67MWhol6DJDsyrm9I/XWFd57tFTKSJmkNbcFpG7SMeWBiBHUvyYEXzrqf3J7Ulgrsp7SCrQ2i64KDMYkhCqavhEn+Y3Gt5M/zWfOM5z+1yJs7lKqVjkfq+/PxrFQxRmyyW4iN9awIDhZeLpDmmfEgY5gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSW+ma8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSW+ma8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE910C4CED4
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734238553;
	bh=QVAKV3ALI0VLQZz4KAgEZGAsHAYLubaMCvjLIPB1mFU=;
	h=To:Subject:From:Date:From;
	b=iSW+ma8xwd98lB0znvG1TboA2Z/ZunOmYXx+lL2eZggHd0pUq10rK6ho4MA7+Bl9k
	 K5/jvWVuds24tRYpJpLKVdCvXer7JS4b6d0/KMLhV5uF+XCscd8RYp1CbupOWgoj5M
	 i1yqvR5ifSirlj255Q/OPDRfcGmln+60gtkLuKIX6bGUhfkUf9WbemdVgRDoEfI2pY
	 MqXFsJ2dP27+GPDuwvsAy/xEdWdlT7zIhYs+NSecPxke+Rivt7xpFfd49VFT3jjte/
	 vbC0r1zoHvF7wOwsKf//+NuB8jz6VznOy07UlVktLUGoe9ND/raMPbotCOOQeLg2uP
	 hckvk3xzby9xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E23E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173423855360.24899.6091958189072711074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 522c7abfdc85eb9a2c4e1a4dd9c66b74725a0422f7f1a171b5d762e9ecd49ce6
Date: Sun, 15 Dec 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734238553
