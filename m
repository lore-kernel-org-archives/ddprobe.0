Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DB331B7F4
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 04:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717733243; cv=none; b=bBcONsfBBixZNxn06HplT0bVYKJwPa/oqKtUK+5FrBlNBaqDU+Y3vQemXeOeJO/GlrzpJZaTHHKddLKXWc6V8qta1k+lmm+Qch+AWQoG6NL7xnOj9iam/EL8DWkPUgAHoX6OcQ85Al6TqDUZQEmN7yunZsK9Co6HJZPpYXp/T78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717733243; c=relaxed/simple;
	bh=CIczu76gwgS8END0kkX+QiUUgd8yFS+eAYeltPpMIxc=;
	h=To:Subject:From:Message-Id:Date; b=PlxQKUibaTpAHsHLegv0o+HY+bh7N3DhLBDFvbAoPoD9SA8x5allr/iCQaJFr590IzLUdfAXoCyJ5FqBmlqmqSXXYWj8yzHTLfO8p6NDbRZoY2TJ7IGkaZo2X6Y0fYyUtc8WfHumwvbdJT58010Du6cwrRrXqvcG6N8NNMgiYBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PB06khew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PB06khew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F039DC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 04:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717733243;
	bh=CIczu76gwgS8END0kkX+QiUUgd8yFS+eAYeltPpMIxc=;
	h=To:Subject:From:Date:From;
	b=PB06khewQ70DrZ9ddvCtzUDPQOyQ0EtljsAzJcfBlb/x8WNlaAjV9qaq5dMobQCfP
	 e7abPSLrua2Dj/g/ckQ7OKPCJsNPAZajavQGaLzGxLyL5z/fSXiQbyNjKJ395efyis
	 2klRHK5sK7QSX6wgfQZ39ayRyYcNfKwefVjte6eonzFpPmu/NSnywvTVoJk3fXF1Dr
	 OR+GJ4P7B/Ua4ldCEQuvqsR5/CuXPaeV9muoUrdfznbi1Zz3gWf8HTyOkLVtHNmk1p
	 ob/r17f3IPUU/r6J5Jl3CrumjnBiBcijsL28D2cwCNMhl5Qfqh+bLfgELLEo9SaMfu
	 uFWIGUaqIc24g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D873FC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 04:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171773324283.8636.7249213377392239481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 507d479736e06dcf0b33760185129a69ef114c0288789f67fc85157a7b601105
Date: Fri, 07 Jun 2024 04:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717733242
