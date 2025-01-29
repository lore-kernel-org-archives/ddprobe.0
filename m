Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339731ACEC2
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738144554; cv=none; b=E1IPpb94hOxlW6LJbqVpcj0v69QVDPdTsuMdjcqQA7XkAWUMlzMeRuJ5lGWUWxQNRW5Fy5wbO0k7THr6PnrnwCFwG3mHzKopvKWL9toYqVBO0dVwf0c/FcpuTMSdlaiO+TTwFGkCyi4YzljusuLtoxDY6mDc+UcLtMfOlOqahXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738144554; c=relaxed/simple;
	bh=2pNtZmgjI6r0GSceWb64LRIcFxNmKgUFxKid18xKM8s=;
	h=To:Subject:From:Message-Id:Date; b=iXv3JSos2IbW2myHmJkPNbBBH1H7tTruHcvJBWfYGnGJUN70y6H1o4lHRRejqSSBVq6Q9eh42+/o4vtXNvNkWFD8IObmWZ4O+/GtHOzflgIpd9fsEeNl7kzMC08XNAgVz3j5rmrxcxdCKLc3Q3HTcrTT/lqrDkt7qxlSB9VYYd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aM8Uct9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aM8Uct9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18D0C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738144553;
	bh=2pNtZmgjI6r0GSceWb64LRIcFxNmKgUFxKid18xKM8s=;
	h=To:Subject:From:Date:From;
	b=aM8Uct9HEH/8PfuceiQ6I3mqG1xcdVshNirIH2kFXT/NvyxFjHIEidWTi+KHhDsBc
	 JfSwDdYoKh0pvUxxnF9s2fZ04xU2ziGLPJsWZge76GCE0rblU2CjEExCsOeWjUixYP
	 oN3OpYpaWBii9IX4xXnne21AyruahQ3vu9DgSO1jntWwUyVOMOeqIvroBPLIlDyDpC
	 O/5FGL1x4K2l2PvzFK7MI1yKY4zdR3z8ZYjybGaoTm3KSJH2ZaGIx6XlOTfmwy8sNj
	 ZqyZJby0HrAlkMEf4nnjuCtkSoMSldqBZ+atR6pGLIWjzR9Cs1ZfCSJeg0U87ilW4Q
	 lYXPMT+DzggOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923EAC02192
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173814455358.6884.14377658341881581983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3002acb469f9f943dda230859caddbd37a631ea13a4e94735908d3de14607f27
Date: Wed, 29 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738144553
