Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2D217C211
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766826834; cv=none; b=u/cbC9+TrlehUa64Y7xRcm/ITa2DbJtIABfz5bK1IN8DwJ74AlwSPlUtmL/tjGBvovCfkLvEihHHujbP4Q51vThMyMWC9MZRBMDqhMjdWcOjPWuq5D/lgYW1XOQFVZiuTqvyVZLcLU6+8AweLh5Lg4OuPPNot/vqfZVsHlOXyzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766826834; c=relaxed/simple;
	bh=EfyPnZzqvDhRaHRa+5qiH6rCcl7OnDwAElo5Sw0imMc=;
	h=To:Subject:From:Message-Id:Date; b=AUmGTkZGS7Xq5cS5A32y+6ljUKh1qvSHklD/M91ux1KF0V6JzawgKETP+Jn+hC13S5ej/pPBL9zEsxJB4AiEWgbqxLsIkn0V33PCRIIhy6qKjnD+94v3ey18kvo7q4EzP21V4ce2AJlIvOQyIdJ7pVthjUKRl6qwSbz8Z33JR9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilDHz6mA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilDHz6mA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2804C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766826833;
	bh=EfyPnZzqvDhRaHRa+5qiH6rCcl7OnDwAElo5Sw0imMc=;
	h=To:Subject:From:Date:From;
	b=ilDHz6mAKqQ4/uXUrbNblDDJGc8VW2VYluEEqqk22lyuLh3WCpvY893uNcdPHAhXl
	 BbkwVQ/CmGKRKFFhr0wZi7oM4FxGj6ltEvabF9CgHWFLR1NgKN2FHVJckPTBjxkWFK
	 Qx3S4/vu0gcXJXERCZBTyb/txAK6ydOiA+DpRKFxZanQO6qqOyQQGomZhKk3PWlP8T
	 zd1QjwtkhAKksC7ZcnhbXWxtxMIYqDUBaFr+qbvrh7ODyL80TBbZJxk8u/8mFSGWfM
	 n16C2rVlQo5QSQU27EtSJMls1VXdklIFjE7qfipiCIVDHdAcSV96CYG7COgwP0T9cH
	 jQzR32kSmgdJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A126CE8FDD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176682683362.9139.17794292218186599652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12e44aa4cd1abd9ebfec8a6a1a508aa602fbd354179c95d3a0e7ef374749fc5c
Date: Sat, 27 Dec 2025 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766826833
