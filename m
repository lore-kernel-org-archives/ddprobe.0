Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1A418B47E
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745231994; cv=none; b=M8EKpiwV3tK88tyUBaD+XLqdO2AkTr/PoLAYYtdvBuPWbSjdFa5fTukABk/ckf2LtZcJLYJ1DwJx7OdShFKhbrEBZOqPqVmI6mAeA/L7ApzZYlz4qTG3QdBp/oz7aTRnt3Q8DDuWxFCMtwLG96eDD00oCPfmR8AgYo+Xapn7R64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745231994; c=relaxed/simple;
	bh=h3akhIGRHr74/T1erRZrb8+gfzGCyaQwZ4rwlzC12vc=;
	h=To:Subject:From:Message-Id:Date; b=XsVMCVekItN5arc7vyi6Yvuq+IRNWxjVLk+xpCKqJ2HoHisNqI3DIhqb9W+aoQlsLCiobe5cEsUOBtk/l029OLFwbKKizysquVZVk+Tn38hknw44Z5VBnZBuLV3y6b2iJR+NK6s+ElwUHimmDaPtj4Qd24VJZGlhyGS0p+GApXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbD2o1wA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbD2o1wA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87DAC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745231993;
	bh=h3akhIGRHr74/T1erRZrb8+gfzGCyaQwZ4rwlzC12vc=;
	h=To:Subject:From:Date:From;
	b=kbD2o1wAotkHJ5Oert2OV8haDDlZ6j4rT+DT0XvOipo3Lik6sSXKNN8kbStbis931
	 gXMobalaAc1KlPLGKR85+q6HZgjSgGhqH3/92Is7wy9Xu32mO8jCZZS6x1+MgO+UH2
	 iOhV4YNSfNyg0nyjye9BKUUz+7xbrTLm80ZybkVJCam6YSr4AlOPD2PJL0NtxT7GWW
	 E8SM4LF1DbFZ9QQtCoJY6kBSDlFJmzJP9CWQK2n84j953Sp7XhWAMPIIpGmBHaNVwm
	 I7kP+RCZSIWAsAsg0UjxksSKgbazfizuCtBfhW9bODWAYNYhRbkiIJ6tIq50LmAs9F
	 lDYiGb/Ri8yGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C75C369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174523199359.10870.13084052558609276219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d71e34fa997cf131a48da4dc2f5c4f0719afb976257cac00ec4daf5f052dc9f
Date: Mon, 21 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745231993
