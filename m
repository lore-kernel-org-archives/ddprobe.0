Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E96D5284895
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770289434; cv=none; b=ejcpxVwtCpE/iFx3XzP6XjAxYjp0WqAC2hSwmMOONStOG6UdpBqxN+NLKk7dzbb2vLBZK6WNlfwdpfBpZF//5n03VX7RtMjQPHLW7FcyePI850F51nyKTD0qu0ZwCJPI/arkxiSwyD3NQ+Xim0Le9CocPJolE4R1NWZP9yOodsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770289434; c=relaxed/simple;
	bh=UcNaYYU9chgxIpM4S/hMKjN7TudTqElzVW7bNnxBQds=;
	h=To:Subject:From:Message-Id:Date; b=JTXMJJO2cBBg5YMPrzaunfGBRilqs84BgIxl4dfhkYE1B6gf2n2KizYuEYFyg8npvGxpTwh0j+pdhHyf0EZ1Z3BD5Z1PSJ6NiA6rGmJGQRzbntvg+kpUFMyfDqiKL2jMjC9Josmyt4P/x74izNQ07uC1uo382PMu2pGEC6+BRPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDG7p+VO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDG7p+VO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21B3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770289433;
	bh=UcNaYYU9chgxIpM4S/hMKjN7TudTqElzVW7bNnxBQds=;
	h=To:Subject:From:Date:From;
	b=bDG7p+VOjlz7R246lGXJvvKr7MDvI/vH4abr5UdcwNXNLY3IXzZNghXPa/2yPFM20
	 jFlj+kMUARd11deObM5j8cVw3IVInXSr8+HMh+DtoVdxjs530vknMNkhH0HeqO+eyE
	 6opHH8f+PBRpRw72yz1wYRO3SwWCFdnbZy+EWTxkMaOSGAsRfFHEEjsv9h4GwHN28h
	 etE1Uhs5S9wtMLRtbhZfCbvfZs/CtNKV9xgU+a4VXOPaARGMstehQ7woLJfkvcorCk
	 O7VQy1mO9GzSCzy6dOYD3Z8aYkn6FB/+R1rfhnGnaDq0eEVKBE6tpOjkrt5zVLaV5U
	 yy9zlh5Z6UXEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7844EC1E9A
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177028943364.10759.9828467056223790906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64551bc21e67f4c05bf22378617ed36db9ad58cd769feb485166d6d3e9323302
Date: Thu, 05 Feb 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770289433
