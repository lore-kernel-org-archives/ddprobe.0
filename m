Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E48D4A32
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 02:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778379634; cv=none; b=X2CYeDENy9/sk/zdDUWOmbi5eL7TFS75BkUOkC5D5VS9jLc4NjlrE1I4lYj1xRy7VXjr/ukuFo+7TWkR4hTYnXfoke0TbJz4FQjVW1+kASW62Uidi0jgHGNsckF2UP3a/kIXCenmUbis7A5AGf8+Alb8cpGHAKRMRhovpHAdRcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778379634; c=relaxed/simple;
	bh=Syygsf4RGxrFFdQvSc7rpgeH8nyIGzzMUWHYqmWHPYQ=;
	h=To:Subject:From:Message-Id:Date; b=kWEadhBsiARH8me6YEvWxiDnhdz7azUIyuG7pmddkBf20uAFEKyoIEzD4CmvTzbRRJwJqiuoNAw6euW27Cfm2Yokdn2WP8XYu4WR0yRM0Mc7wtMLhP4qTwDvC2zBLCreRU7kyN6VNLFFvT9tDz2FycOqYslIcnzFRl5pn+1DH2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drORn7ye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drORn7ye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C51D1C2BCB2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778379633;
	bh=Syygsf4RGxrFFdQvSc7rpgeH8nyIGzzMUWHYqmWHPYQ=;
	h=To:Subject:From:Date:From;
	b=drORn7ye7Ubk/H8bfwritdTOTq7mWCzMLKwjXV1ZgwoLmxZWwmfjleg9YG4nt3ATH
	 v1jSqMEjP0sa3UJ02nd7YdlsZVsrMS9JVGKtwyYW39rIlj8gt04yil33ta8cGJcEh2
	 BzWL8bIieQVgBXnYfM6chJ8mKdnD3P8/Dam7pF496qZ45Zg2KqVlDIkUMPmT63Fxmo
	 y4i6WbFYYs64EihHn0SiVZ7ptPYkifSHgJbymCV0kNk8HmmmxAkWUl7dGWBMCFgsMd
	 rROHHCpOaZNBvginQ8QtkeYfInHJA8P62QKUrsyIv5t2XqSMCh9qIp0PhpCL7VBBPF
	 4r53DHNqp8h3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6D0CD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177837963368.29474.11193653829533331037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1303833579518bef47bea0e4b334c957d80dda4aab723443df9dbc65b2a30bcd
Date: Sun, 10 May 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778379633
