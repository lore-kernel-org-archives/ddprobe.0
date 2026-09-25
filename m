Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A0533F599
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790314834; cv=none; b=fERhQtfpNS16v7H1l8BCXGwH+huhEe7QFcxxEQIOMSfsVSb7RfZjE3i+v1TNwNog4RQa3emUVjagCVvI/JfJ+T2FivehTqJ/lMzm1iYDTukIcD3lQQrCHjRN9j8bKPPTnzSGSA4vg3RKCBU7Ar+8CziyZ5oS509nhshjgBJDXp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790314834; c=relaxed/simple;
	bh=7lQvl+HR4jd3TXmc1EMJsFww4z5mkX5wOoThljIbhFE=;
	h=To:Subject:From:Message-Id:Date; b=RtHB2/NfeNYb9KLnLbzdO0khWlIZzhVtlmKbliAdlRfIm9Q20zbjCVq3zKsKKCcP9WZnI9oeXvO2LIfdgzVu7SqrH5ZV5LOSGGBdngGINkanHfctFAyPbLAARcyc6ZCSx42KIL3IbUrdd89Nn90jbX9+EdhJRU8oSS/imtjJAqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7EiZxGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7EiZxGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC81C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790314833;
	bh=7lQvl+HR4jd3TXmc1EMJsFww4z5mkX5wOoThljIbhFE=;
	h=To:Subject:From:Date:From;
	b=k7EiZxGCfw4lw0TkYVE/XYuCVfthLAdvGdjo1aIF5w/RaIzflhiPxhuV6PGGknpDZ
	 3vsQLRJNXaA4ONR55HydzfZo0fsVkSk++RFwGPUz+JYEFAgX2yIdB44I6K+byWpuKt
	 UauRQwNFdMO7JeF7nRD39JLOm1UCkiW/+lb8BRX2/QY2DPq3ZYQYNJxk1xUMxG8MiQ
	 M58y2R7q4mwU7KRMMUZ1fEIJeDjG1F0NlW/F8zRbuISpdj3POVbO+WVeo8tRQZby2G
	 5LwqqHG7Bf/ho1ubzR5mVsAdaIQRUjzb2V6Tc2zTNWWHY5bpnEJEWq8PHySGRtdU2h
	 L4mikqpntbqlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA39EC98306
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179031483368.5543.1828596619775884315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3f552b2c7c6de6115d53a02f11c15f2aef73f33bbe5fed3d4260206b3f6345b
Date: Fri, 25 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790314833
