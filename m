Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2994D257420
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747037394; cv=none; b=hbFBA8nV+WwBDCNmZG9xeJ0qS48SRTqssUDW5mS3vn5MK7ZMGDs7b9xHllveOmAPGWnGnQ1byTV+FugNdbZeQVRbCnEIi5J1runz6gqJachNn0b8MxUGRTwNEXypA0iocJgEJPdm0aE5KIBVYHYy1x4/N6TmgORczvjkpBo0WHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747037394; c=relaxed/simple;
	bh=ZjHW127xfuehdf0bbTWLBVbQ7enCKI94ExFDktrt/m8=;
	h=To:Subject:From:Message-Id:Date; b=XVvfNya5w1uQ2Jpg6dp1gWLGvojZbDvjhQDUffJMDwNKq0Y1Teols9ego1SUTsx9yD/t7feiUk+Z1IOssXnXjRQRphUsNjqn2wWV6MtrJGaV2FMnS/CWZuGSFsdC6LilmZo35y90ES3HtBv+QAagqCWEGIkUQ+daLt/IUKaDPQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzoFB1v6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzoFB1v6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB06C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747037393;
	bh=ZjHW127xfuehdf0bbTWLBVbQ7enCKI94ExFDktrt/m8=;
	h=To:Subject:From:Date:From;
	b=TzoFB1v6IC1cU2d7qyobA5sAJ2IOWetdRQdlSi+NkRBuavOPi+G7zhC5shXv4vOLZ
	 2WRYKRlowSCA/hNIn3EzIvKiMPTJPL/uLIy89DJBQS/LK3lqm/Hfg88P3uypKMvyy0
	 rsFSPJtQAfr8BiZajIuBWdmYt5So8uTXyF4B5a9JE2ekvzk0Un7cgKUaJKsVG2V7DM
	 xN8P6y9L9YFAdzajYJP3QS5eZPkaMDUB4gond4nzDIk3suaBZ/gCeKAiPiUiJUvufo
	 b+ZNkkoHLYE4Lzo6aDvZWZQ9Nd+nTGoaTQyISsgNlPpdVsDeIAGoORbkzjOnCvexg5
	 34eSecI2QXLfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F055C3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174703739357.1138.14381511357767392160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d0113901e6bb470a449544d6ef5e376a9dda2ebe353d4f4c2bea34fd93d5770
Date: Mon, 12 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747037393
