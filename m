Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BF247276E
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791139234; cv=none; b=emOdJXpXewjkshaDuYcWIh7H9ILQY9TUlGY4/HUvyEPeugi3y8a1kHQ5e0xD00kSsp+uNRXt5gLh2f99b8QmImepQaeLvpZeS0tcuRGvVbpHa89g3VPEyFdZCVlheamk1VragWaOhmCI1SiH0ezjaf45hZJeib7YP1DbAuJ+ubE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791139234; c=relaxed/simple;
	bh=giy4cqsqA7pXXQSJVmq2gCm2DKTvy6t1nFGC0ecvXRo=;
	h=To:Subject:From:Message-Id:Date; b=fDPFMC65PIDUvdKv6sSZT9O7X/aO3FX+gIrAI1Fi1o1Rs3RUHRut+WfX5jUvSb8Wtab84Zcv4aJVEw+lD18zoaHbDj6eJAN+mgGbQjBIGbXs4jXQsVVbPf3pKdbU8u47ie48BcndLak5vr4WOflvdPInuJDYEm8zRSuc3P4O7kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJnLg9ja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJnLg9ja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E0DC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791139233;
	bh=giy4cqsqA7pXXQSJVmq2gCm2DKTvy6t1nFGC0ecvXRo=;
	h=To:Subject:From:Date:From;
	b=OJnLg9jardkOfGLE/x3QmdO2sfY4r+7S9lItK38ogZ9C7R8/t5KsAKBcRXRwPuRWS
	 FaEA9SubX35ecLJyaYFQVTzdTqlsmFBtOWG5PrhIOvQ2CqileuLquPIdw2LhwP2hn3
	 /vuxOz7vMJSmS2dI+mRtq1Opgt/9e1ImiHfPItMRaLt7vxEpk3QdFNH+MaMXvNYbN4
	 xks07nNwPwP8J+zHhcnXa2Ffm7OMynwkojqOjdjCvl7a9gA/zr+iw6HsNcKRQiGTrk
	 7UxfrIFvZIc9RtfNEMRJkXsNwHL/UH39OzoCVIatP9eW5fXPYJKh1Ftb0KaKzNAvSe
	 lPp1aEK270yYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFC7CA5FF0
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179113923369.19426.5698230865676284635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bf6e35b43c42d5bfe487c6a66248df9093c27d82f006e850bdfd34174d1063d
Date: Sun, 04 Oct 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791139233
