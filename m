Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AC5D530
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 01:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741917536; cv=none; b=kiOmI5ikAxMeByM6596IMov0dtMGfIPlDlvq2YQRahqw9dpdvZvqNHsc39bVFg2ewBvZuomkA5Ksz/zPcPkIkN42Fl2aHwAMmoBklDr8ICiyVruB3x9ntLzGbpn+/Z3TrjvfkD7fDs1ECSWsZrhct0/i0eIi1uYQWqAGkLwEj0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741917536; c=relaxed/simple;
	bh=qhmlXkA9ggb36x4OFNakZTgbFVoND3qbi9jB4XyxQZU=;
	h=To:Subject:From:Message-Id:Date; b=Dxgf00H3tRNDL7VmPzi1IHAi8xB5CFUCfYcNCeB1oO1wVbpJTsLfh68C4qY/dj1EKeegHwLksBcFXRnnAmeF0qSB0TAwBCdZcUA2NSpTjO5kLn3hYhqMCSoQ9R+CFHZkuIDSb2e/E0ZnfV3L7GHSVNEjZm10YOSfE0oTysvUDxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hOBljdBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hOBljdBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B48C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 01:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741917533;
	bh=qhmlXkA9ggb36x4OFNakZTgbFVoND3qbi9jB4XyxQZU=;
	h=To:Subject:From:Date:From;
	b=hOBljdBHSPjvSHphwzCq1b+0Plu8TU6/Qz+ROhBKeG0CXR9DB75zuplJ3N0TnoT8T
	 cFYr/az+b8YmLAlk8lWnDyyiJyBys7zBOMC1/jPhFawapjPxYyJ3oUSavSinLSNSex
	 q8rhy8Daaet8aZJEaUk2RZBHYtHKkre7GZEO5X8evBYvmgIruvCympF8BhxOup0ozL
	 vaOAS4JHemC0Fp0uQ12V/WO+ZpLUzWIvpHY2keof0lLKtGeVG57/J8bluBQMBpyh+q
	 KV5I9li3P0xamaABxWObTgm+4enql5p7EvHWhig3GGpf6O0t0c3oZqgnRn/WLY7tDz
	 e5MLfoj0EpPOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A312BC282DE
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 01:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174191753365.21876.16500696536966412700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 785787f2c8abf2424c0d63d37bf813773db1dda1df16714983dfd539dd49bb07
Date: Fri, 14 Mar 2025 01:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741917533
