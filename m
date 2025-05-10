Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D51B1DC985
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746869994; cv=none; b=OGsAA7VHkokO8PLVYmqG796Iql49qJNa+izD2QMXzAnj/RHjGcr2iiC36aCzDO0ddZKy6xjBMOeFlnWrfjjQ3P1mKSiESZjs0VyAd8ZxJTbGiFe9Wm8l0sfJtZqHajBJyh25VZUySpVnNOlfSfxukj3eekik4utZco/TrrgY8io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746869994; c=relaxed/simple;
	bh=9bOkdE67uEkrNtujpANwBbX8veS4GRvSG6lsONXuRPg=;
	h=To:Subject:From:Message-Id:Date; b=H42nKxm7XE9RN3GM9G1mSvHla3ADhYpvSzrmNgJMSBNB0m2NmfH3+vy4HzCiVtoNCjXtkpIH+lvsMa0RSFwXPjD9FQI9bmvPsZD7khGbswnUX7I0QI/L1tTJXc3FzAjVfWcQMiKx2qxY+IePpxQ8ymp2/h/LsgafyDQoVVBW/eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FB3Qlykl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FB3Qlykl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA15BC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746869993;
	bh=9bOkdE67uEkrNtujpANwBbX8veS4GRvSG6lsONXuRPg=;
	h=To:Subject:From:Date:From;
	b=FB3QlyklzdxZJITUHSa4AiuuB/49cFQiWltP6bgj0CxmDAgxugYM5vD4fp/K9pAvC
	 1Qefj31jFIw7W6ZtK1c+Hwv6OMTEKXn4FW1Iyw5l8Pmn5NmF0v2xa8JKbj3KA5WSbv
	 umGP8NNHKPJDssy6gUgYZy1P9KlJOYhUZz3ISPbcS2S+35vudSsD7GooAJqeYTEhZL
	 nX3C4vkdSPUInaAU+feW4s+AWzopEnWYOcGlbiHOVvUlvOuFP6n14+uUbMkGW+zH//
	 0EJxp+YGfSBJAK+JWGTNzq0XOSLw4S/tNFOI5kPVIXsZWy3oUrOnXzyYXWVlYiOj/I
	 dHq/Hyfm9/kLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C0DC3ABCB
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174686999357.21389.2819855417995449231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a4f7a2de8a56f56a7e004b0a4ce4e2300be0a2ea8b6f6c255693b8f4c17c01
Date: Sat, 10 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746869993
