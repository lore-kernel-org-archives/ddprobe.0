Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418711A3029
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787715034; cv=none; b=ATJTWvBL4SBpLF5gna7R00eM6dHOvSRdpDNCKcA19EBuacPk1pVsqAorj8HYYqDawCv0i1eTJHGiMDLNLR+pzjPspdOHxenSYn27Vg+02vVT719HyDL98/PLfiFz2un6N3RDKULiZnOqUY7ynD5Kk2/m/DNVQrsTbDRYyCP/OkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787715034; c=relaxed/simple;
	bh=myi+UxxmKfPET4ZorjN7N+QybDNEohHZnUZm/0qbcAQ=;
	h=To:Subject:From:Message-Id:Date; b=SNDJ+fQ4c6V8aaPV3enrBT6kyd4iHsIujGLjjz6pEAacgHIym5uSZFcR465PzdP/FIYd6A03qjDM7pWhEv74mKBT401dewuTzlioyAuRigHGVzbRrAjbYv2O9ZPX+3i4a1/zcv/Y3UBVIP4ctKnAWfFygAeOfHq1gbXvAsfn+mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mp60dDF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mp60dDF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9FCC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787715033;
	bh=myi+UxxmKfPET4ZorjN7N+QybDNEohHZnUZm/0qbcAQ=;
	h=To:Subject:From:Date:From;
	b=mp60dDF1Zu+mi4gVwQR1r8hTqQKFSPhNfX+UeRKHbml8sE8W7YTeWYI4INbVExZVy
	 ABQuwPIKR9YsQ+l42RP6HJqcGB8Pt3LoAG47JWFNBw15Lni6azf2LY+4pu/6tUpSwq
	 kN3/P9/06W6UwqjWgmp2ZBuzr9lykhVY+IdoBJfwXZxoYhKngMZhKrtHfPiaRXBAQj
	 vq5pylRsXlllzf0Oez9kTh9mIWRi4eEgxhfIh8luVOQ1XbCeTvI9JZdhvX8GGTbSau
	 z3PiCyMP2CtUa37HjrNnN3S9Ck6ua+aLBLpkU3N9s+4wkFDN8Yg4Blck4HYHAHNAAa
	 DBh3In4kE2wXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC49C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178771503368.25815.5079993463178442010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af202e1e31f3008d0317ec43d42686a9004d41af90af2b414c7b43f745905f3b
Date: Wed, 26 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787715033
