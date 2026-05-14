Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08811386C17
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 22:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778797834; cv=none; b=X0V0LfCcEE6tF4Nty+zygmhsb19ASBQqUdhH8Ow7Cpr6PZOWrw3rJ+6xGd+4EC13kk1qBTch1BA+11QODnyqM7uAQOCUwAlsGEFSMuJArCI5t7ZniRh19Oekx+yKqrWMJKYPoxXWaIonkOuMrqFgSEZWc1VeqQ2sqUN34/Gv9ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778797834; c=relaxed/simple;
	bh=ZQBZyYjnXI54c/VHkt4TbgkChflZYu+n0qymJp0Hah4=;
	h=To:Subject:From:Message-Id:Date; b=i6jQXegH6A/fKpi9QnafuzLX9aATPgCAoLeHFGsSsc5DZ4KxNZGUbq5ZWzIqeJAFrI5J+aX/jvf6fYHZHva7i/hN0D0i0/n718Y8Yib/friR/Lje2VZVj1TNWfmRHPJTUoFn8PcIx9GgsaLHcBGYeyMhGY7KJPvUM6ltdmwBVgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbcXTwhr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbcXTwhr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8ED3C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778797833;
	bh=ZQBZyYjnXI54c/VHkt4TbgkChflZYu+n0qymJp0Hah4=;
	h=To:Subject:From:Date:From;
	b=ZbcXTwhr4sTBPIOAECwEj1Pia+0fK7n3pkUPHfZTXhEwC2Oaj3ggFCT0IDGV5raY9
	 JmdwcMRi8As05Lqx1PkgTLXE0ZuX5sLo1P3dl3GkTbwiy17Y+aHcYNEhdsNQVMvURk
	 PRq8Rn9mxxY2rQlxtQvlilZug0uM/8NRTcxxv+02BUHCUgvwBx0FHHwxXMqLPQvqoW
	 Ige9CZNHSy0cMeDTVF+5UgHJOahLaYyFa/t/nxOmLT5HwCBwRSxz+Lr3dc2AM2TH2Z
	 aOEJaBnuu7TD1KyhU6BqVuj+JbR8MJRzAVyfUctKwdKiRfOJG5jP0AFNDBKNiM6ld+
	 UqgFJT9CotLQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2FECD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177879783369.12104.15134143334118761592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94129690ec7d7251aec5da07b2da497e8046065fa94f36f41078752d8eed345b
Date: Thu, 14 May 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778797833
