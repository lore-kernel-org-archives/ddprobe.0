Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F745313298
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773272094; cv=none; b=fhScMRhc8coYEwIGL8O6/F6OODcxRuIRZsOfS47WvihIaBilDkI3DL3gUFdm9qfydLvrnF2o14gMeepHj8yJrFjtN+f8seG322GDIW+lMur+q8sAsK2lKNC96IAtnU4e5+1tUxJkO6fqLBg6ryFMXMqWCmRfxNE0j7U9PxgpSu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773272094; c=relaxed/simple;
	bh=9wbsQ58e6LD02ZwboQkKMRsFHjW6d5oRd4DkBNnCP5A=;
	h=To:Subject:From:Message-Id:Date; b=HHKG32iqVgtB4Jc381AKD76Wga/MhHJavMd4ZL5wo6ODQLrCJvqub+Rvha6fd0IbQqMYJ5boXfj3tSC7KNpEwEfN2VLGteFi88iXVi5KlOdCcVYU/Sngnznu2kJRpnJiS4iVV1IWwiJDxlZUaZCk59vBIkfsduor0PGSa/hB0M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UE9l1Qmg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UE9l1Qmg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98D4C19425
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773272093;
	bh=9wbsQ58e6LD02ZwboQkKMRsFHjW6d5oRd4DkBNnCP5A=;
	h=To:Subject:From:Date:From;
	b=UE9l1QmgBx+TE7GrqUVI/NqXZ1Bg86kDSkd3lPqWmkPDrYIkukW4PZcFGo1KvCuDS
	 bYNZGpn+hyJHyeIzHIGbh2ulPN45TQooAPUfjF2BAs46Fy5cND/XHlzV6q/wwJxdwL
	 qu6LqMHOmnNvu0lkRSg8sqollHX9vpdsBTggQYQdlzshOCPu8SPUBDFYXq2+ckp98P
	 bssyEqdHpv6Mm3ICtGN54fb7079vhS/a8lORXN1gnr4dBm71tw3tPE/JeRunhJznR4
	 edYVkBiqnfQbG3uwnzqlbgud8YzsF20DmG8GkzckrMUTdP3blxOXW6mPkwigSIl/an
	 og/6dO/y6nbUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F41103E2F4
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177327209358.31060.17864530060359633099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7406d456f8a73be1519f0a423756b034b01562c6b503ed3097adbf466d606784
Date: Wed, 11 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773272093
