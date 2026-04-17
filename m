Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDC73793B0
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776427054; cv=none; b=jnSnAjwXAr9Ys3NvnOrYSzki8qhBkZIP1du7upBfn2ZTqk6DENJ//GKyKaMaAGd8iCJRsEPSxIEiCyd6ygINDudMGrwaArHfFnYXcpN0/BLyREFtzY4HzXtpKUi4IWm1I2PjwiLaXqFP3sZUFbmRgZMwEq64Jl0ffhVct6Qs/jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776427054; c=relaxed/simple;
	bh=8zA8YemznZEYMjpzIlFb8ltY6nxIaK2yURr2vo3wMWA=;
	h=To:Subject:From:Message-Id:Date; b=otR0W0W5W+osim4VP4knwT9yyjV6IcHeVPjY3RJd/IklKODVLuo13gTFIEG0ZJe9AveyYu/nlb22ZUYJ+K0RxjDQOceuL7LbRyXA3ueS9eCwXcvW4eB0nYx8YD68UODiZ23VIrSnGLeJHulHMIMPq5/H7WYhwhafvhoLuZp5G0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGGaRvjx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGGaRvjx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B595FC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776427053;
	bh=8zA8YemznZEYMjpzIlFb8ltY6nxIaK2yURr2vo3wMWA=;
	h=To:Subject:From:Date:From;
	b=IGGaRvjxG+opgyzNS6bIHVBv50FHBeu7CgcZaZA3QoVXV88jFPwAoKbaIq6SOPXd/
	 sZcABqQtaibe/Rm2JHfk1tLxvyoNgSoQrk+R+S6Ak5+hCpXZKUxW3cUVA6tQBRfzDq
	 +1yueMZOw9vRqIiqBZiAEv6aiYLr1c7OT51Bu/VT9c7c8jqeWoiAY4dmR1XRDEicw3
	 VIxty8v89r/i4uRJlvBywd4pDLJF2RESrtQkgu+WNHavY35CN9gHrcWnQfq7qp1H1G
	 TF1W0pHSoxH3bVGSW8U9Om8470xk1wjysx5ecLvHp/FmBsm9sLpwvS48oCkBdHbTqB
	 V2hstgPUYu+oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92D7F43693
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177642705368.2162.12273155122359180467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0784012c266c103deb06e4b6a307cfc52b10edb3df97896750d8e4bf1593cbdd
Date: Fri, 17 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776427053
