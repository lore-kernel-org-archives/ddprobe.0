Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15202946A
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755233394; cv=none; b=RdSxt4TlZ2n5c62Rd4J0NrMaH/SYz1O5AaHiVSvlvK2k5roQQpV1EeqCVdhKRNs9///2aRAjCrqh1OEf2ZsinKYEaBFB4qMmz5ZlqWUv6BNJGknzbGnypApFA7Z/5mADqc95Z5upxJj0aywZs6C67teHtclmHnHBYLP9j3y12+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755233394; c=relaxed/simple;
	bh=C/fRmJhz8V76oiSdcIxMOavq3s1q/7SxyfCvLmY62vc=;
	h=To:Subject:From:Message-Id:Date; b=lnLiNBCjffoza2sFh838L9/frV2AtnrWczDKWk2I4x7aBwNRH8d4i7nx+DQ+0LE1DHAktCcOkC8yBp6FKTRzLjuuA2WuCyGd0719U4CrPaUp95Rj3SQoUtSMyJzfBdZmStlSUfbyre45NJbnfCOQOWAiT3mUiZPlODCdbh6WcBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0eRJL22; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0eRJL22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1665C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755233393;
	bh=C/fRmJhz8V76oiSdcIxMOavq3s1q/7SxyfCvLmY62vc=;
	h=To:Subject:From:Date:From;
	b=g0eRJL223iaIcfrPAEhL30kKzZB7vr5KdiMa2x4jpyEAihpbq4bd+jYUdE2S792Bb
	 QtPaCLeS7cPmn0rpkVKmsgP8PTJPj+QfTy9aCXkbFKo73p55QYdr0dNTnxpFwK+BfF
	 wVnhIE5iGDQyT0lOd7MZ41ot5GNn3e4TowFIdNF4dn/2dRc//KWfHtrOSiaCgTe4rw
	 FTzxQei2EExk4A8+iuVwdwiJAxURc8QLbze45WFX+Ejibmzbn2Zlnfk4rygS4cnwb7
	 sPGOC5Aglu+O/nzOHOHwIi1AtA0CoeLUrd/RIi+WAsDU1ipLZn7BOfedg7xLsi0IS0
	 E7lNawexpME3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9178CCA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175523339357.11930.13019826433027223418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d0d7c8727148b61aab575d81edb1929ec8989f90e46ca501a19bac0409a5e02
Date: Fri, 15 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755233393
