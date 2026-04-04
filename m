Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D69142048
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 09:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775294734; cv=none; b=lflFkjxXpSrEj1qxr3HKl7Fn5E1Ksq0nqc3HXDYCA5zWFftC2WPx44m6TibRzvlJPxYOQplFNsrvXSPBoDdxkZT2B2MMK5H80Ok6BuXzYQ4CRIvrAzRRu0MnDgrN2X4J6KdhJCSoZnTs3jUhZIfo8o3QRHbuZW81AcJsgNxeYdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775294734; c=relaxed/simple;
	bh=utBakW/eC6vRYjW0dwryRMENdsFIMhOPpz0Kktgpwz0=;
	h=To:Subject:From:Message-Id:Date; b=IWM29X4wW1kA4quvpHVQhriCdSRkkFcR0rtkx8BwggtiYjit5mLRdh+mN8Ha91AetHkeD9Uj/i5KcN7A36SOyznfNaglr2wbzl3FveSIGNYT2eqjV3rbXDzzJwhdC6+uWtsEzW5NUuZ59fx1/cTkU7hVIO3FCk5vezNs3O0+c+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTRarcv4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTRarcv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C311AC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 09:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775294733;
	bh=utBakW/eC6vRYjW0dwryRMENdsFIMhOPpz0Kktgpwz0=;
	h=To:Subject:From:Date:From;
	b=KTRarcv4/xa1EhHNT6s8ijCBJ3ZQ0Tlo4y4IHowSwNH6G3L1aT8qOgNhg+PyyHxvx
	 4KOaAPEiAWfKPLpxyy3CN/5EC10xlwdPMHjPoOewCtrK0LRKU6V7Xqv8Dr5dVdTdzs
	 JN1dkGdcATRH56yMk9mx03bp/oe+2v63+BbnwEpbtWkJZdxcSYngKiBtcYVLtQOaP5
	 3Gzgixnslzz6cUuwABrh+xXN+qb1Qp3VpuacZrrXhl1KqG1Mq6C59FdEyFPpA4YtrD
	 N4XvHPEYHojOh/FWJbW1nX8UWdsbdZfPRsNcQ6PjpnnmdjPfjo4/EzCKHhvFOVHPs+
	 ND4mFNf8ZCTaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0794E88D8B
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 09:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177529473368.24516.7040693775444213447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09b14c706b4898346aef9be1cccb0a3a5608e2b49520f61bf808c7592e02259
Date: Sat, 04 Apr 2026 09:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775294733
