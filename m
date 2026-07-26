Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4137A12FF69
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785049234; cv=none; b=JkiLGWqbztj8R98GOVUUGAax3iZITY5bZtoF0u87kytoU43miqpWYM9HRdnIcaLfsqbJttk5Ap+4kmfhnjTbU+/H4Mm4RdATXPWOsI+W8G91PBjY99uY4T1se9TdH2/v2NsjsQYia7Sm/TkyxdTogjmLjl9mBWxulhpv+o120VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785049234; c=relaxed/simple;
	bh=V4JxmwIVxOlpFUBdzQjZzRKLHA+Avkk7kSDQb//z4l0=;
	h=To:Subject:From:Message-Id:Date; b=QmLX8Dkvozx6Z57mGTKqG0XW7fYt9R9PrEVCNQGHsRNQApvcDaCJdAiW87088w83oMv39xET0YZoWzzVx1zisGXuBt7tCurcT1LcSlOxkJTkA/soKviisanFenFlAX8DOYwiAEO5hVwd92iKZS1XpT8OZKtSkeZ3q46nK8gCer4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAUzrb31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAUzrb31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72BEC2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785049233;
	bh=V4JxmwIVxOlpFUBdzQjZzRKLHA+Avkk7kSDQb//z4l0=;
	h=To:Subject:From:Date:From;
	b=NAUzrb31Jsfm7KL71KYUiYt/DaGXv2MsIT+Uhut4Jn/BGd4Rfhy2zZw3TCY4CRrrB
	 Aw+U9Lr0G/Wadjk0XW6XSklTqL3tFObNxXrGR5I6ok76QXJ1/NxDqGDrEuDFwXJjaw
	 zAxGm2aUcPBm7udzXsQNApeg6BGrCmozl72i1nAyWxqwDVNS5wlSnw3ld3Qqkudywn
	 lLFntJrjCASp5Z7UIk6pcPOMoVwPgQ/GVwubWNCgLNoHmAVn20rF8m3SBgKYv1BxcY
	 Tby4MmXH/4im5CfW1360UqAygGx9Z2x4boh2U289PVpjVSA2JTskn7ug3fP2DOr2BM
	 en3qrtKwbwpsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4EBC531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178504923368.4278.2906344446428696675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d074c500ce974a7165bc7ed8c0f79c019c9fb9c30328b34321aa74581f0666
Date: Sun, 26 Jul 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785049233
