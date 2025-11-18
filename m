Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6287F2D978D
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 05:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763443314; cv=none; b=UOrt6aVV8RUQ0rQzkCceoob735Hjd8B0ewWom6i2BLuolW9mGs02d3iiZucwRJSeq5fozGV7uFO6N/+XR4RJWwfcs0i5ryXJxmOA/k4p7bGpx65ahLLpIkm6TpQmrlkaI9Q43zotBu1EKAUvNMrYE83E3Nsm98Mnl0G+otGrflk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763443314; c=relaxed/simple;
	bh=qEVMcR07brozgmFdtK+h0vZ1xurTB1tSuPI6SZWyTxc=;
	h=To:Subject:From:Message-Id:Date; b=ajvZH4Twv4gu9+iMAMpDuFDydTbbrq9LMjZIPCkMNnfoCW8J/S2+h1YOrC+Japld2QZZC2EHKS2fTRSLSIXmCGHSy34jpJwqLYNa626fB/ym4ERsv9Gib/tKZ6YtzUENYKTlf2mcbs59ivcF+zep+fO54VAgSPci8jYtkkznsfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMzuwQMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMzuwQMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F6AC2BC87
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 05:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763443313;
	bh=qEVMcR07brozgmFdtK+h0vZ1xurTB1tSuPI6SZWyTxc=;
	h=To:Subject:From:Date:From;
	b=IMzuwQMz8/63FfQ/lLogTmXeQbFM12twIJ0/dHH7r6TV/kGJ2n/mAopCAs485qyfG
	 WJ6sRz6oA8iWkp0ZV3c7O18ei+wkym57CZiBrt73nIS6PGGpRJ7bY6BeJckw2OHlcX
	 vPgwy6nDbRL/dYoXIk5+ZUnuXhVeffoYPcfJBXStHsv4Vl9lnkJahAoLEE5Iq6MPOV
	 AAQV0ZOe+2siNExlkMn/odg3IKPrVxpH9suBrfD9b2jDYwfDJ2DjyOHlQVcN2AsUNz
	 /CPDnv+FiEd59kxUzflwVRrJ/dMzYJgraSVhgQhdN2c1RKGYOGERVah0ofblANZ/Cr
	 iF7Pu+JfEqIwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A67CED240
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 05:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176344331358.30447.5432405324611971726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00a7fa6ef4986f8672d4926821fae2e509b38d07a956d7b3a3fab8c6656369fb
Date: Tue, 18 Nov 2025 05:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763443313
