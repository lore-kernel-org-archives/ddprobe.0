Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296791EFFB7
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770456234; cv=none; b=UcfZAfydbADHdV+B10j6lny2H8H47XKC01aWcsYWdjACPss+AVw6BF7daVkviOStosmng8XAV88ZvZtr/b6rR/TVjMru8qrrd8dO1E0bCzVzO8UayS3jJICEHH/x5mV9/JsdLQCKmdjKEfrejD5wxZng9188wQ3/e9TqeojIttQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770456234; c=relaxed/simple;
	bh=e8WqYRGtUI5/p5vsvJr8L3t+a8jre4qlplunajL8FzI=;
	h=To:Subject:From:Message-Id:Date; b=FiLH5+3f+qF49VTPBqyfZy2cgW6N9xRpWv8BmRPChU/W715h65hks+a0zXiSZ5zweGhl4pyH50apB3p80kOIcc+cc1qx/81aFF6kCeFxb9WIAWQA+cMFBXjwLIYJp4x4+tv7nAiGIUnLY2YkzDNnRvXVGtT4smFtW+PacqWIB3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGAD/9fs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGAD/9fs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD03C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770456233;
	bh=e8WqYRGtUI5/p5vsvJr8L3t+a8jre4qlplunajL8FzI=;
	h=To:Subject:From:Date:From;
	b=tGAD/9fsMkgcKwkL9tTW9yDcBCALgCP7JMw0lmFtQoEN0awc8iuHiO1EfrtK5CCQn
	 qaN1BT4TbktGy8L2Mxpj1Xthb0WDbA7trrnwIVF5o/bb6bt2GuV2xGIGk1KbVhwxU1
	 Lz8utdrlNYw7G7eDM6aaHyezu/Jok6u5qv1ZTJROhQUbOEmSgo4/T1qMvtxmJhZg0t
	 HGwcCK5h1h0kWrHd6MgSAOkixZKApNjatOoVOTxz3ogNTcBRKgTa9ZTBZJ/05jP4+w
	 uDz6/OD2peBfZYet81ZKo3gSCqlUQMu2mvMspTb91qw6QiE8KjxiZp6lxldHXkD9C5
	 Wv+ZYw9LZ96ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96097EE20B6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177045623359.7037.491331042288201641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61894775aed217fdb1ff3eb14ca83bc38c31cd5193b2867bc0a8aaf7b0b5d2e4
Date: Sat, 07 Feb 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770456233
