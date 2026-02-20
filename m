Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFBF345CD3
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771595694; cv=none; b=D2YIhN73ifPytSOy7nBXUI5gfKSIn/k64zEtiIt0rOJF2bgPwasLCTf0nG0aDCEgHTYPC7QqurjX9DR0oplOR398MkLiFl51/HUeYIkNudZke8e6kToN85AVaJzdU/lhLoWrrpLJNB+nM4qz3y7MEJnw+Kpsyh0eB6mMoqUyulw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771595694; c=relaxed/simple;
	bh=Y+PUbDvLiewhT781gpDWG4oPGuwbgqjFZmIlsBUSSks=;
	h=To:Subject:From:Message-Id:Date; b=iYQgeThnw9GvyhwA1pugd1YvVNFS0EU+B6j30dyYV1qGx4IKmepEPj6NkmS0HoLb1qF0SUmMgCsMASvM5AsT/AoqFh1kb2tfJHWVcfn/VGHpX6aVjXN9HAcH/Qnuw/DzEIQtyKN08V2xjPik4BwmYslYaRmpBGhSHtK0c+rSvqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYiAiKfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYiAiKfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFCFC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771595693;
	bh=Y+PUbDvLiewhT781gpDWG4oPGuwbgqjFZmIlsBUSSks=;
	h=To:Subject:From:Date:From;
	b=iYiAiKfS5CBVfLWFQQg5l44n9YPspcBn2GRc0W94BpdJOuyy4ymqyxuKfNHGI5Rgp
	 opRgOCihdf9vzYRDXW6wgMGqCOxh5K7bRbPQDya5WveNI0ISHafqHZU3u5VEjwQ3de
	 quzbAHTOuNOS9BOkYY9OjAjj5usl/AWUGxWvhEg3plwInyAXkpEaxYZH05zapQ2UVS
	 /ZeIpOle5VFWxdvBlUFieAwwEyhRWo0LLvL70h3ctIYXZDWaht/5F3Lq4GIRje8ItX
	 3p8/I/4JO6PgLFLvgg6wmLQGgiyOLaiiClQud5GBhsUGomMdQUT04lEwP8gE33cCoJ
	 wCew+BjZ3wWVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBD0C54FD3
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177159569363.14142.1818891186289094791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a0a2d2b3658fde243d348e0f4b874fce880054aefb60facc4865cd6bee95946
Date: Fri, 20 Feb 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771595693
