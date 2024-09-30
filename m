Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FE636D
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727659554; cv=none; b=f9QJ0LXklnz7VSHuRZayv+YdXGRHUYh9GbyyLWO/OxQ1he7Y/7/WiLEo20nw9zBWoXnXdISGMKn1q5OwHCOy5Zkm/2ea12NU89rCYMHqUo81SbOa8tx2KbBnqwyfHHtw7aC1Zc0UX6t3PKsJ1myYXiBXoZ8qb299QBQq/If+Kk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727659554; c=relaxed/simple;
	bh=Dzm2N5O4p39Zf14Obj9rdS1GbRY/t7XT2w4PTLs5dw8=;
	h=To:Subject:From:Message-Id:Date; b=IcHogBLBoTKVT88RUOkpWGcAZY8MGuLbXMxc+ZO6Gl1y04LeB49xS5/ODxyIfnJn7rRBqIyl6YF+LAaCCyik1gnUieNloF19dr8ovU8foBGCDabs0Uy5WE1KXbOcA9Bb9WqJayJJV8ueY60Yh67JXiaeKP7hB3PACKfvG/nhs1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qyY0qzrI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qyY0qzrI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11B0C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727659553;
	bh=Dzm2N5O4p39Zf14Obj9rdS1GbRY/t7XT2w4PTLs5dw8=;
	h=To:Subject:From:Date:From;
	b=qyY0qzrI0fQ8Rhz1ECScNwTq3IQNUM8R+fiSYUJtDgh8ZDp7hYy8Dqv8Z0AOqzCrK
	 O9RDCnObqbKxEQezDP3mu24sDGDSm2EoFIN1ztPqd+fZGTmz8CFDVKpwVxAkzPV27Q
	 MV7njySy2g0cs7Rp3NwrhaJcUqHTW7dWgUkhHVNWKIhKtJ80BGFUlQbau/n67k7fhp
	 Fy2YT5dr/PR08g7MO0muEC2bXMaOlakM+d2+9QG4m/Xzlyd/Uo5FRo7dbG6ObbibGw
	 iO5vOH5mmAEh7BDAvxGZtUmrLitD2gXE7KhMRMTpGt82MqHu3l8ZMl4oijhZBGmHNQ
	 8s95v5pCK4vfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960D6CF6495
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172765955358.16285.798185379604213436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adfbca6d1fe0c34c5cc2a2c5e761eeaa83937ee79bfdd50213fdd10033c4346f
Date: Mon, 30 Sep 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727659553
