Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F6017B506
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759271994; cv=none; b=d/h3wKfsBKBPAiMZ5Pl85IV1cYzc49cYl8Xy5ZyGz2asZOujNZED8DTxGSd2RSjedPqf5jcwcJR0fYhEc7gFnH3LVzIcKjxggK/hQxhQRI79mlCbHZc4WDhpDne9aizIsJiuMDcZbb0SnAPOKqS3yWunE7iufngDAZYdwU2gZuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759271994; c=relaxed/simple;
	bh=F12ADOy4Q1qNnpsHtN1z+L9MGVQ1NqMeVksIfhSSu4I=;
	h=To:Subject:From:Message-Id:Date; b=KfzK3pySRbtTc3wPHp8dJrgHEDbBiVO+4fXBil4o/wgzk7PZjWWJF/tthQ3Tmnkawpabg80rMqnZ9xlOUaXAjd/WayXDkU+zuVtTsO3uXn4X0GK8iFme3pvTI2XP/zcOGbB90GeEGvBgVNDqU8LvqU9MQUDqCIR52LPsQvTegDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKoOVhiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKoOVhiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE88C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759271993;
	bh=F12ADOy4Q1qNnpsHtN1z+L9MGVQ1NqMeVksIfhSSu4I=;
	h=To:Subject:From:Date:From;
	b=eKoOVhiIEuJkg1IM1SJ0zP/a7rsuLvWEM6PKoQpWuswZIlwenb7QyOqML1F35RsRp
	 D3xuUr6czhQZlsUoJx5OIkH8I00xIpXEzq+rAB72arDNGOHZXdY/t1fPfVfb9nSQDk
	 d/2n069kPkPvNdPfxxxEgIYypyT32bQhbH1IboCi5n2UbtMHHjflcuLhp1Ace0orO0
	 f/caHC200e48WG7JbwBnT4SZFP1pRbX73diI+Fe882KUQJIIcqeN6p6JB7fSRm1fA1
	 SFGidV8OztTmepZf6DEBAFoDlI9/v0vQONfRcDN2J1rbzb0YnE6jADTGSMtzgVBICZ
	 dutzipfd1XEfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97532CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175927199358.5191.9409694634908763676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707255488fe3b90a156301f23ad43f148eb5190bfa200308c3ef3773893097da
Date: Tue, 30 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759271993
