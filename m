Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C24F221DAD
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768567434; cv=none; b=qZP40j/IyAQ2kdpZAytP7163nxSnrepFPPTwaXM7KOTaT88espYbf73mQFV9ANHUoNRUhzeE0ctcl+gvtwq0FSKzwsoudk0H89qIdY+b+QexGEtWuVgA5dOMwXnVskamGHS6yowt9EejNWAH0PllRT8HhUqQmQ7yNRthYnGbB3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768567434; c=relaxed/simple;
	bh=zA+4Y2dXpoAnLbrRnjf3K4LVWePXnB1gACDhyMbnBzA=;
	h=To:Subject:From:Message-Id:Date; b=AHhimUbw97xC1xlMVacBXECepv5VZOQU7+qW/XPrs0ssScDkRSUtgWFVJ/Y30+D45WAUbURm6/fk0xeojZepGlZtFEa5YucUV3+sDlsCqra9d0fOZ7wCtU6Lnt+DmpZVPpCX3hD1X5GOPF2tZ+7d94xXG6MI1ZjWytALWU0tvnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddmNjO9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddmNjO9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A457AC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768567433;
	bh=zA+4Y2dXpoAnLbrRnjf3K4LVWePXnB1gACDhyMbnBzA=;
	h=To:Subject:From:Date:From;
	b=ddmNjO9c3ZKdeDbjQl0dw7pTnPQBIxrOWBJcSygbP9ecfbZpBBl71A2VozyejEvUx
	 TcId5SrAo0PX1UjzvkUNnS75w8w7XGur+DHlNFTSVadywXEWGC7eRnUPm76+SC37l3
	 /J77f4fCqQA0KPCEev7TcJO7n91kys2goElwr+JsdoFpC9mBplmFNPtYFVixk+Otjn
	 KYFKQ8VS/pwvVyZviUYSFASPx66G2ZfGKVagVKPlWX0ubDhuKY0Rhw2QTqOCeK64M8
	 4PMiFAGKX9Z70WW1NYX6Qth71r/liF9hTqPIOnw1LseC99jcl+Z80Jn6rvY6Hdzw7Y
	 c2Pb02nRpuewQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91990D4899A
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176856743358.27919.13720916531345056639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e8dce5342ba089187e03fc8ad8bb606802c440441c239285909d5b1e4d08d43
Date: Fri, 16 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768567433
