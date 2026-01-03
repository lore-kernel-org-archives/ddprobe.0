Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295D520299B
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767480834; cv=none; b=oWv2tcZAZCcwDfcAMRyCL1LcDjSSTnJL215BZ1c//eiVwTSWVaeEI+e8sXNrFB3Nz9tLCz5r/ZNtlqfl6IZppFAU/2CVuZsNJsgmSdm1UF0sNjsraIusIKADc2TYIZEN+Dov9gIbsB73sebnZH75oual5F5NOTyZ7fN0tjrT6ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767480834; c=relaxed/simple;
	bh=Pqcd6rjDbH2whL0GXiLo5mD3mGncrOGiZUbAXLn4m1U=;
	h=To:Subject:From:Message-Id:Date; b=pEbg2TAfl4D7nwsnoh64ueR9/lGZnAE325HtUoLPCPfusPZVqXg2w22ginnpXzUtqvvITmrSJVwWPtb60DsCm/g1k4XfGFvMWshMGanxOQX4KGaQE52s30Fr+FiMMVBVwdu4svjR22pufrk65v7N78vuNU/ePcQgGsX1LDjD2w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1BESXgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1BESXgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25FDC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767480833;
	bh=Pqcd6rjDbH2whL0GXiLo5mD3mGncrOGiZUbAXLn4m1U=;
	h=To:Subject:From:Date:From;
	b=L1BESXgFep4SCBWZgqs5dPhZblwOTxfA8KamL59Y8YDLY5j0NHaCstwKyoYJYNIKC
	 ktzBm18TT0xHc7cF59y2UTakaS0o1YApxlAmdrGCfFqAUZ0mIBiHCYV4woqmgNdC1d
	 8SeZsHPR365+e/U4Vna9RLf3Wvlkld9o5AgNfOqQ9cc6oU6TqCuhQ/5d1mU7fosiuU
	 IAwJARTrv80ETAJlS+TWKvJr//3cWCVE6pLR4PfXEnTW3Nxt3JnX95Mh9H8ekRlL/S
	 LHQabttw/IsUt5eBkTBYiD3jzZeMo9nySmzj9qrzCyJpvQNafQTHZ5ho4wL1jro9GT
	 8wWWOEJy7S/rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92171C2A060
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176748083357.6208.17514861739075044431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8342434f2dd72d963204d1da9d2727db623abd60fd04c8b9f896df0aa76690b
Date: Sat, 03 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767480833
