Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FB6433E79
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 21:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783112914; cv=none; b=trXvIfhK8bMpmjeGW85MfC86sgFkBxgjfxPdNQxzno3U1QTfX16XjdnTBvwdlq1K9kwv6zYdkoizcgzGF/aoBzYOX5DFPm/XETRzX1JfRDNBFLsn9PRgtqZRaxwJJto83TfmOsF2ONBVPlHUOP1h/OIZGAkeNSNPrXWFNZgI2iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783112914; c=relaxed/simple;
	bh=5wbOliVQ0WnKJtbNImzJgx0++pcu+VzdbJNt3tJNeuY=;
	h=To:Subject:From:Message-Id:Date; b=Km2IgYkNaESAeIUPUNX1rVSyyymY8MwYa8aKeD/s+j0+sMNsQJEQn73LH3ly0GJF2xkFIEhNbLxhguIp9/vZtBgSGKJHRtWp/pOGtHHQa13T6c/r9dP3KLkPsZ6Qj9s7ZUU1JmOiQmSSzwAvL15DCr2R0L1iRCff+671/z1pqK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KnPeqaMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KnPeqaMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4C1C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783112913;
	bh=5wbOliVQ0WnKJtbNImzJgx0++pcu+VzdbJNt3tJNeuY=;
	h=To:Subject:From:Date:From;
	b=KnPeqaMxQmViaEq44N+CFOPvHhV2yd3+rov23HEo128VBiBf+zwB/m2wvMI7QiUWD
	 F5VPSJGBHkjswKzgQ0dpunRgjO2UGFMISqSGqS3fbQPO9msnqGjYWTaZnEyU0TK2Cl
	 4Uo5nr0hn1f22jxfBNdkH0mRFL1t9MG02M4TE/VErplIUPHVqsDZLJh88dgIhFUp3O
	 rc9WhH6rHAOCPeNk2tFR44e9+Q2Y+qJqGZYpFG+SaL2A96/PEaC74T+S37YeVtemgb
	 Yo5u9hRsHOmL/fWsgCEbZpsL4RqNwAb3wtJvM0o7ZGoZZgtlpc64i1mdnfMPZrCmIy
	 1LceazX9yHcAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91F6C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178311291368.18558.7182718573406420427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bfb0dedf159eb75a7518b3b807c7db87544e3339c1120de649e6bf652c23408
Date: Fri, 03 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783112913
