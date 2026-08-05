Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B15F5A79B
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785973834; cv=none; b=tftKq1ZFpf8RIjeP9ozeY+ORLBpzLfJOaYxdITiKHQxRkYzzpkvyTpI/oTsEfC0yg2rIvb/y4wwXnkxcpgAONU4zVKwMpLzkFdKNlKb8D6cH4HdzisI/az6dtsi5xRA0mQRasiFUA0ADzAENoBXVP5nyR9gpSFGYM8XL6Nw20Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785973834; c=relaxed/simple;
	bh=ADf24S/SbS5MvycxR03Fl45xrLPG13YZEzR20uJXelI=;
	h=To:Subject:From:Message-Id:Date; b=met5q8ZzhwRfmtpZfG40189IZ5vv+OpbjdLDhV1GUV8Sn3bIcytyyFYiyR+m5DGMLpEKjpu2LyCWSZ+LT6XgOroAtI0TCF6ZywvFf9pYAxy7mKC2jRNqvx86Pr9KON0S4BEWu8pBWBjQw7jzvRwZBB2TWUFmPBz2MrMsRf0bIsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjhG74HP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjhG74HP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D0AC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785973833;
	bh=ADf24S/SbS5MvycxR03Fl45xrLPG13YZEzR20uJXelI=;
	h=To:Subject:From:Date:From;
	b=RjhG74HP2cX/ixx8t7A//J6Q4zaMSBFxhJCO12ZI+qhnfeDC6RyDuVTpdlaegMU+W
	 i5ZfyyiwAsEfW7jPImkVzFAd98dTJb+py/GZWk5AJwOzk4pt4hZBgu1PgNE0kAsEEz
	 Mpf5laClo8PMR8IdXQsYuAjjj0yuC/9FYPdYfcdX1UhtlGlkfo33o6cDtiV3VHMrZI
	 JfC8Vi3rUiYpx69bRCVjGGgVeZnRgkuULHGdb/iZwfMFYTeIyPymbuc4s8Qmwk0ack
	 /lhcjoNlrzuflpGu6hI7+yyj3D8aDCxIrMi2w8y8W5KJW/XIAEs6CoCe+4z89VMT/D
	 4eRS/IZDi7NpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB56C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178597383368.430.15038371003018065321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea68193a0a9394bb255322044263a97a2df8245fa872db0a1c620e8982eeeb5
Date: Wed, 05 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785973833
