Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414381E8356
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746885594; cv=none; b=sl12VCSen8Je9W428NBiS/jspGlZpzRC96u/bIKinE9KKyzwhjPt3xpSug681LJIJlEbvR9eH2L7PvOGwxKo4ze3d0ObtqFTr9/NgTuz3Y+YdIrDDm1thmEvzWf0muhB7UptVk0omt+POnR7GCZwlQSrbILFDr6TgTLD+mFFRhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746885594; c=relaxed/simple;
	bh=z+v6eNOEIannI3yk7oKRor72m70dbAVoPEJq9Zd/j14=;
	h=To:Subject:From:Message-Id:Date; b=qPmIuh3QIvPpw+2TrhSoSo/XYI36pJwnaxYwkGSCKK/KF7ek6FFE7o/0diUXGYgYCgnnYxnF6EjXdA7QOpHP3somBhFuCUae+64BOOj/LJ/rRTMWNnSNVtgOQvoTliOhuKKwLzpOfbfYEYg2qe9N0iXwwF7kUZDYBzuApB3x0cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNvlYVmb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNvlYVmb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33BCC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746885593;
	bh=z+v6eNOEIannI3yk7oKRor72m70dbAVoPEJq9Zd/j14=;
	h=To:Subject:From:Date:From;
	b=gNvlYVmbxdOzUGgve13NkDi/kaWA3akEVpR2euqn7IQSTB+AnFbWBOGv2famGbcmE
	 cpe6Fcal9VvicZnEFioDIeFOxNnmI8OellsBkZuIgI47N1QUQIQTSX4hkg4URP+Ncz
	 stcPPsuNCIE+KB9XcawqEMzPhn+srmA3Lqerkl+4N0tBCj4TPX6fkiYLc5WmIRVN8n
	 mFLO2pUhQ1jPPmCV3/wFYMo7YVs7oP8PTZJTwoM7ygvCvx/ZWe4WLZqI8/zJ1LIcRp
	 ot3d1dL1D1v4xF3XLvcFw39nxwRYbvIMTcucm+FsdsCeiEbRdavp8bypByxOFnNyGf
	 yn40Ch6CUjWAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C20C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174688559357.11760.3896804558071610966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c280ef56d7f5ea7443821717b62035a17790125dd18cba71b4e0ee27555eb7f
Date: Sat, 10 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746885593
