Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2EC339795B
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 18:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787768436; cv=none; b=NuJA+qbgCNXS1JROF3x9DDjFTeIQ2w9y0LIGE5UpkjqHSxhHdCGRmg8+p+/qO03TwJGqf3MjhZOSIPoj6I8D5/2B/p99laj94A6NLTrdK/SrsgvW9uFzixM3BcJFseGV76fR0c7G1JjKzw17G0VrcaT944/l0Gntwodo/ZERG2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787768436; c=relaxed/simple;
	bh=2D2ET30BWHR5ceg5F4qIUpEBRxdsvp27aGbsnUqBhuo=;
	h=To:Subject:From:Message-Id:Date; b=iaGC1TFBTutmz99fIi8uQ6bytKDSmcuRHNa+3UlvaoEAZJwaGvDn1/MK5cVxutALAyNp9xvDlQnHdeXxUSEVRvU25n50yF8VCbZQgfuoTpetOIPTOneseVueeqxseTlGqpet6Nu1fLp8isLz7UgoBreVIncI8YoAlvoZ97qqTr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxMIUG1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxMIUG1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04C1C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787768433;
	bh=2D2ET30BWHR5ceg5F4qIUpEBRxdsvp27aGbsnUqBhuo=;
	h=To:Subject:From:Date:From;
	b=gxMIUG1LleVS4TGAuPxIxRsEYlM8U29I331VCIpNvwn63Qg/0nAusz55vgsvQv2xL
	 5NxTEazpq7XdjzfflD6COoa55o1z8QWMhxi0euFDUJhgZt59IBeIwoYxEUXwgdNblB
	 eArw2bzJvuRp4K+mGhKHGpJcw2zvoW3WojponaIGDYqfZ8UzaQ15Kzaj9X14WilQVC
	 cI+A1wb1JecJ/mWKZHukYrLdRsb2I54WfmGhq1i2v9RiKqB2dsaUxNoTTvCIHpQyTL
	 eH/nMmKo+J27Cg7Z2zshuELGf52mP1xDIrxafdWK2P3+x9UOEGiTy3NjDSq/HeDN58
	 xNlyBa8erucRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD070C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178776843369.24714.15059599742752427244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697050991180443a840a01dfeec050a33ca89c96e37c9fe86f7789602bee1ca1
Date: Wed, 26 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787768433
