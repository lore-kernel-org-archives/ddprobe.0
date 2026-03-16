Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDAB36828B
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773698094; cv=none; b=Jmxf6c+JtbtobveXwZQZdvSu1V1Kfhjyc0AXmL17nRdbqWlBxtkEEIfU1ZTU4WWyCLCyAUmQzSNGBM2vAYh2BymboK2i335V7Qo3DGEsIJkr6ltkszimVDfXGnsgbHwmRNl0xup3GXeeir6zrvwSFesnCIjyYqwfycVnL7TUo20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773698094; c=relaxed/simple;
	bh=hyCBjv5WNfig/MCLJUC7JbEM4chnYyjXVxx6AfLxVDU=;
	h=To:Subject:From:Message-Id:Date; b=kYyt/6bZwHlO9nLotGU87aWWUAM159avpIUYuuJFjRWC/ubvhiYGYO923T8cGfL6Pzj8yMXXHCJyTOWDZS2iBK5csD/fAAWf1dRVkZpFp8jfz1yeFY9i3mVWetWYb97KLsIPtH0Lr89vFI17Yjd2OaHkMGSOLdWatVQiF7WQ9C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEm6M57E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEm6M57E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E334C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773698093;
	bh=hyCBjv5WNfig/MCLJUC7JbEM4chnYyjXVxx6AfLxVDU=;
	h=To:Subject:From:Date:From;
	b=ZEm6M57Ejw85jWoxf+nvo45u6xEC3acXzCf7ZFIUg0BQ/oFFKv+wYYvarHjR7ql3N
	 Bb7WRvXDQzFXPPryQFlIaxNUzsxczrOBx74BTsObASRwS1lAJNgpuDniFpUcCz84wF
	 ddbX36/weMlRuPjS9RyhJrfOjGnRjetanGEOgfSf70t+9cX49OLFTXjes1hPSMCtyT
	 26HCXN8pjA/z1A9+ouIZBCi7yqA1lRTxEO4GT/yF/47bI7riq53ICKVKYgsfw5IYE/
	 S5ij/mK6iugzEIJVr364hW/OURxdMxHFA+Ct0erHUCeQP1SmRpuPsMUGqVZi9lv/1c
	 7OszcqB3cYMtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9038BF53D6C
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177369809358.8398.5450650615241437058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97fe329fdbbb470e5cf37ba12d981b929c132f93b7ca2e9620ce030f24b3c113
Date: Mon, 16 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773698093
