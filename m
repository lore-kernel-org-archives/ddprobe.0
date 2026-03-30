Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04DE63A8730
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774857294; cv=none; b=PwhhilbbPtBSFLmYWyD75GIQqAdl5q9izK+8fztteAH3pESMaxnl4INDB6L3lY6vfHWwxEAZVti7Fcc6wCr396g0fhBlC6b4ukA1uCPRGCgfq5Wcp3GdmscZd8KkVknAmxzX6dndjGYWsYhizeCwWeT5ImEGG5sHx72GhfbEYCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774857294; c=relaxed/simple;
	bh=p09CBqvN5xsW3PTMJPLxcxlpDqdOxZDC4Idi/KaziYI=;
	h=To:Subject:From:Message-Id:Date; b=tw1z1L8zRhR7GIOZWpgYKWGvAXK0vEGhAu05yG4NyoqzXuHoO8gj0aRN9maP/AQnsLCC//KJqyEF+/8jNA/L/uq4EIzMu5TenACSLILDFK8xMc95g8EZyFwACAmhMgyx08k14qAzCIyUGs43g/ZYPnxQSYehZYu2cWvR3VEUQlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAZGFe4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAZGFe4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1059C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774857293;
	bh=p09CBqvN5xsW3PTMJPLxcxlpDqdOxZDC4Idi/KaziYI=;
	h=To:Subject:From:Date:From;
	b=jAZGFe4RU72NInF50Pw40Qvd74SIvxA9Z/cLsSn5oKaXOSkAbsDUUoDEAKNWaI8xY
	 qrcLNg0qw8IS0884SumO/8/w5HS2Qhai3JEob5nM2MWacAptiGXrIpKtGhMl6u+feQ
	 xCnkfn/IWiWStUm0vjCmxCdEZmqX7QAqV5FYYcpDv/2PgXAt+m3hLk70ZJXxqOJ1iU
	 jsjc0G0pr1vB7hEWLtTO8XUmVVW8Kp9h/Ga9fBqYaTF2iyx1GOHiMl2CstK2O3vkKo
	 vHr4ImTjfCiH8La6XIiWVj9OPWRX6DAR5W0qhLjZlwUNfHb/PSYjW4ru1sXuwLYyB0
	 4+gmrvjPoKlJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91381FF4956
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177485729358.1166.3108771072432464178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd6fcec5252626b791c24783db049aa6dac06a446a13f2435fb62df6aa85819
Date: Mon, 30 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774857293
