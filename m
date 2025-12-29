Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE9E21E082
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766971434; cv=none; b=qCa5jC6jFLxoN3Nekr4WWOIKAI1PXrHaswb1WDHz0w4NY7akMzTB8MFPNrR9UQ/n7WMHhzMFiWroSUmb8Rmr651IpY90aaxjREcx3FU+Fc9JihoZfDQJM69sd6DvgfnFmCxc6M2cJMEwQQGfyowRHeueUgUQuUjjnvyG0kN5ySY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766971434; c=relaxed/simple;
	bh=7zuUmVorG+9jPdZynvWgd17TnE5fa5iGnvXyA86HndQ=;
	h=To:Subject:From:Message-Id:Date; b=PMB3kO2efPk1ZnPN0pmMkXmQSjNcH7Jl8Mmfvi9DgjweoaAMJLBZIiKpxfDO7snzcrhhahHIATP0hy0lF6zswjMAR6ooP7/ZgAgL/EilyDBXF/OPLqJnh5LxT/xJ2jC5rxsZD1K+2peCVdeykaEEN307P0itmMx6vVfOzuIHrsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogFzkA3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogFzkA3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD799C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766971433;
	bh=7zuUmVorG+9jPdZynvWgd17TnE5fa5iGnvXyA86HndQ=;
	h=To:Subject:From:Date:From;
	b=ogFzkA3EKG6PkJiQmtlmWvJCqdyD0/t1Aq8+jGNlZP3sOmslBuZEsG/9xtYUIEQLL
	 onJRy2hC1L08VZ05Is6U144ypspU1+FEXmgTCCWyA21TW2ylZI6JIpd7yH/1OC2Fbg
	 zG3lNZ2pQlBsI6yPlwQHV1bSVU3K7NaqTWSWoAFn/ijxHkVHoQZvWDwrxunE/meqih
	 oOltq8hQ6FFJVoATJdwklBrA8n2PLWoQmMOQBcjmFLvOmWyJMu00+5yPAS61r1jyRt
	 m7YuVtLIjBD3fZj22N+zLzVDZmE5dvAuWRshJbwCgoQvYQ08T6IFad9s5ltOJ9rX5C
	 9vfRl3VnH8Y+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98546E784BE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176697143361.1482.4850092151669666045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e3c59cf6cf6a1adbe6a837cabaf79a43947086c1b1557bb89ccd384454a5672
Date: Mon, 29 Dec 2025 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766971433
