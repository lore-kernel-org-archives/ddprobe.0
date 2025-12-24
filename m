Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 845FE26560A
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 01:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766538234; cv=none; b=QUR5I4Nco9ycaP4zTBqb/qNhGlSdciEeC1zCo36iqQPirk5UKWmGBDc+s/cO6B8A7EyPa6a2ZBsHXJgCzXQP5fcIb39g1yNlcf30Zl6sp5w0s16bGH2FOrUOb/YAHGNGS3K7Tk3y5Z5pVkow1g92nV0KNJKMDyMzuP0W4CX7HkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766538234; c=relaxed/simple;
	bh=J0gcxPmeu8p3/ijsKx/GyUJu/jc07IjALrUrOZ525B0=;
	h=To:Subject:From:Message-Id:Date; b=BBYe5f7HHLZCf2hTOvzDIRfiYndBq+9LdAAUKbjFbqbyRPkFgJPXDy4afvJXV261LNW+CNB3rvV0vayJQtqYQ3k1//FIbDgc79iV1Rw8BY1wGuJiG/EbBId4QtoUrfRyVMbp4nPd3xwrTGy37qMU8JH2sEKNzm6ycYydVpv0PiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwtFbgel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwtFbgel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7A5C19423
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766538233;
	bh=J0gcxPmeu8p3/ijsKx/GyUJu/jc07IjALrUrOZ525B0=;
	h=To:Subject:From:Date:From;
	b=SwtFbgel68nRjG9cJBuc25HlGBTMbBHDwJIj4GXE9bu5WmnXDftveAjALASC1VTl8
	 5Rz2dmgyUi+rYUXhzH87zD+aIpGaTGpqNVMb9xo409NDJ1fmOHAXaeWh1zafPW6NzP
	 nVo4BY3hegz/QcSUNApQGJqDoPsySeFXsJYEgrGm9A/u64UXIZL83rusJPKEXmlGMz
	 P+baJpkMMQ4p9/O4MD08nZYhaYlUZSM4VVM0hHwWGpDZIBv2s9q3mgduHd93/UiI3D
	 engNFYSSP2uEqFYwCoJ04g6GthlhysSSZcIYfwGMoRx04CQhK3wGGbUv1yOvCYWKNU
	 4HA5lTDXpwaQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90499E74905
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176653823358.19006.1151109709809246638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc6f3608d7e98d26eb2e23e8c5c5ca443571056ccc5d31848b88c9a9622cc88
Date: Wed, 24 Dec 2025 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766538233
