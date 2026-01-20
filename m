Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFFA3AE712
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768944234; cv=none; b=WlBbzgNP5H6WV4SXTrW6iy8rgMWzOwVoG2+x2mYbLUfAd4EkanvUqhoEs+MZ6w6G7lyvroBHsVQHNGQHVzBy14o7tutjhuPrEeo5oMUJlkw2ls6bda2/m3J0gPl9qN+uGiHr58bdmXnALiEN5DuJXmcIZmpC16dRrL8elpCUXHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768944234; c=relaxed/simple;
	bh=YsPOJeGj0QkCo2zVlXrrLFwqRCp1PgpWP9mMVYNzlqs=;
	h=To:Subject:From:Message-Id:Date; b=WjAfVeKKBzOhcpSm70cWB/PjibpQao6FyNSdr05DzbjnT8OZlIf3fNYDNzlC7RfDjKldZlhYa0+wxI+1NECl0Xqw5DABOjKPeXanmfpn7RWT98ORVqVcFYW1AmLiK/04cyDyTgW0IR0CJw6VAxl4upFSAu5hZTTVgtzQX9TRFT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UcKjXNBm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UcKjXNBm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42EBC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768944233;
	bh=YsPOJeGj0QkCo2zVlXrrLFwqRCp1PgpWP9mMVYNzlqs=;
	h=To:Subject:From:Date:From;
	b=UcKjXNBm61I+CU7nPbIv9TuSua9XqX+zIvazzsg2GCPSXj297kGu6EttJDN5c5Jbp
	 cV7JZs7rqs1kDoFom2kfEu/dzJBFn4XgRWVVmO+y9s4ETgWPMC+2BmC2g1DrGndOF7
	 CBvxG3eC8aH1GyFS18ML9xqjFeSsxg2j+UaN8GCxWDOiYPdjMvIptPGfQrApu0+G/K
	 t1plaHSVGmJEfRgAMvQ0r5MeyMUqe9i/ua8bZ/emRS1Y8MrxleMyv+dB9WACbM5och
	 9Zoj+lgY0yiIKvcctaUhYu3f/5q0oSRHOw9oEU/SuFjwsIeBgJZfK+cz1BaSFnMvi7
	 Wl7FypQ2fVRjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B43D262A2
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176894423357.30339.1085533043064095936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21959014afcf53a6307f993fd56443442ba1e83dc8f0dc8b0585c47f3d695551
Date: Tue, 20 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768944233
