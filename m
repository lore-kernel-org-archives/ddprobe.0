Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BED82BCFC
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770458034; cv=none; b=Bn+nWhVNj0bAzscMHRcbjdH2i4dGk0qBbzjwGQhd+5ulzpv+jSEmTEKDWTGqCPS3ubcw1tQWKFZSjv3/mr+r34g3rL2mos+D3GPomxA52AGYZGUhH280FFX98rluPzfQOqzf37AuGCpC2QG8wvCboUZRF26UK0sULS/geNYsrZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770458034; c=relaxed/simple;
	bh=U/y0AnPkfqTyxtdQmmTAeBJl92teJSai2clwiOJFMDc=;
	h=To:Subject:From:Message-Id:Date; b=aB9KR1QPL0Rggwphbqo/GmSlKx8ofmgr+pWOJxEUeaWpjotDNu9pcq+Cge47XT0S3xXMUudPjWNgpRBvPwyNnU90NiIhe5Zjw2KJW73A4VUl+nVsLJntmNRN0eVl+zjyBXBn97cujNplDJKa13IjuROLFyJUD2lEXxS5VmlcoK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVVYUW5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVVYUW5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91FDC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770458033;
	bh=U/y0AnPkfqTyxtdQmmTAeBJl92teJSai2clwiOJFMDc=;
	h=To:Subject:From:Date:From;
	b=NVVYUW5zhrKwwoqaN2t6sJMbgUuulSflQK3M6iPMPielDgoImHVgIXUWHB8ihnCbH
	 s/z8cUveE7wTVaOYNkUvTsWEm5+64bWAdHPHOddSYSCf5iE00bYv540+NBlZeYk0Da
	 SsAGjOasWbksRqJqyB8/2TQArT2MzDaoOMCKeRs3xggTECM6jf5J0Qg7VcUcbj8/EA
	 QzhJLa9cZe8t9Ft8cPg24C3EPwcK1dwQIp6SlkCfhuBPdwpNtar50qRDcpYjicDP8R
	 2RfIJQhEc74cF1eyDbWooTMx707pnRu10vCxpEoUPZkE9kxWyRWQrRmlQPPzCCDM/N
	 SHOIMXLROXjzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9672BEE20A9
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177045803358.5866.4038213025205852617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85597e1f7e5f55bb71821e334843d6de1c0d88780f2f3596b4d51e1e8a3c1eab
Date: Sat, 07 Feb 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770458033
