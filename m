Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB4536B906
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789798834; cv=none; b=Iz8JCkwe2DBznKUluZ8Jav0/STWKisPpraddHwZsDm0SNUDfeRfuHz0S/n+3C81+LAh8ig7k9B7q0YB1vmNxOnxiad5E7TSUmMTMGXHA/y+u6uMDYmW4x0jYKA1JodSBXQ5SmJ3746y4rxOYMF9HGn/J2tnCUB8RAu5yKPAajG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789798834; c=relaxed/simple;
	bh=DfxxoRKaKvavjUqQUI5aaAvNG44A8ce4+mSkA9SKQek=;
	h=To:Subject:From:Message-Id:Date; b=TgagDgzt0XWZDFxd1BsFUhCCe3ESH1LcmOEhtyCm+INLwURhvD+Fl6xjxTjuhJs4oUf0KhcJUEh1QelE+o06xKwliNwdjYh5jVUM0GzkOIjdQeKY1YD+O/hkEwVdgFO/q7L/RoYRWyeQiigS6Mv83lRF7HZ680IJWRXsXGMhQbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHkF6032; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHkF6032"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CCDC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789798833;
	bh=DfxxoRKaKvavjUqQUI5aaAvNG44A8ce4+mSkA9SKQek=;
	h=To:Subject:From:Date:From;
	b=DHkF603290L2ERvabqm8If4zCx2cpTGl3RVRkKE+XwGqYke8jilGH/3/H8grk4cWP
	 nsBEq+J9Bw1nSrf4tEd8kOEwFaXrAe/k5Z+2saZ9XTMu1YTiPJXC+I9OPVO40ySPiW
	 1PEB/2UzUt+WAHv0u8QAZCeV/noKcUv4hw+ANi/UtL32uMW9gmoJReBL/5oHExMTtX
	 MJ92ej6xO3GOKIUjG4e0i3ZrwjzrDFDrgHsY/bi4GX2velIrxZ8m3RSKtuWuAgK8/C
	 9u/mO2Br8p0iwZ9fpVdI9v4YqkAbF/nz7C21W1VWRVVie/1yUsZp2C/UQmV0DxxYql
	 xi3ggLJTgx1hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4DEC982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178979883368.31015.7782416623311665608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee17ebb425a0a530a74d10bb23732bfa7c499b6ff942c4bc0ea138ec0f8d09f
Date: Sat, 19 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789798833
