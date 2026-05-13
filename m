Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45545402B99
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778674234; cv=none; b=Bk9yFEg6/H9s8szunhirdWsuesZSgjv52C3TDR/UHfpBSv6IEwC12IBGBtbyqs2yj/vjpMUworyTjNijnlFSdFQeLtTdKL84O0rzZjN/IrUZPoHfRqPofbBeQrgk4EMSAQ9tk6GY2lhe2CX3snTE7QB9lwpvxF/vCBpHC8TUJCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778674234; c=relaxed/simple;
	bh=guMLdFhyguvgRUnwf+HQ5A+X7pVNAZAk/A9TDe2M5og=;
	h=To:Subject:From:Message-Id:Date; b=mwXrk8gczqQyFiMQAkiOuyM3Z8+s91k54qHdfJOhqHd0FnoaIn1pNaQ3z2XNueJZyfj6E+cRiljEOkDRySBXYTnbm+xAd/BBj1yVd0zyN2kgF+00E8ZfiWJCrcW0bt/rkLKhxFvwpyEItO6uTT57Xn8Kx3PBUUTzoneBh+E5GaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQH9icWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQH9icWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBC2C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778674233;
	bh=guMLdFhyguvgRUnwf+HQ5A+X7pVNAZAk/A9TDe2M5og=;
	h=To:Subject:From:Date:From;
	b=dQH9icWAt0Q3824Khi90yV5z//yZa67Lw1VbIqKa8YJUPm4C3euppPLpRm1ldenWV
	 WkeRv7In/NDvuCRC/ZEWbhWAyqEgAtVx0NMeKzunabWLTh+6GiUJz/47gbTglyor+N
	 8WcYA1DNBxCtajkUDmnfXFeXe9Py+5U/8OR7ttKw7lfuYh9ou6ZH9wRgP3lJqmPC0V
	 qLh9SRD5VfCTQwl3v5mvBD0j5Coa6sqR4YI3GGlqzBXYeR1yWoLm+xrEohmyQ1sTBV
	 zZgpxfObVbOeWljO57ZT4JNrNxhAgG1LPifaBJ658VdXNvBk2fOV5TOM2RDbN6H2pK
	 fGi/kMxSQ1+ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4D9CD4F24
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177867423369.10739.10214801171800249292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039a3200c032320b8c3d5dcee4e7537197cc15c0c15841661a3e402b039cf5d2
Date: Wed, 13 May 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778674233
