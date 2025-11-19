Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 924B2239E6F
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 12:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763556714; cv=none; b=J0mwyuuY1MIacenZzcDY70icbzM0n+RCqHs3tJnqFENEEqNndlH1y6tlqI1ES6FNmipKF0Rj/QOmkRGGlqyDD7nvs9MfxSRLfVS52nIE51i+26Q7rgvNwmdC/aHoqGx8RUjr9OlcDjGE+CYRT0PPAwAhBKo9Syz8imM+ojsXljM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763556714; c=relaxed/simple;
	bh=Sf8hVC+aTDN7MU0ttMrnjHR1wpbN+qQyXrI643QooIk=;
	h=To:Subject:From:Message-Id:Date; b=blxuRVIda3dzoB7z79V46jxpOLIs9AtQo7HSeI3C7KYUrzx6LtynjzmAk+RedYCPXuZKa8WKxabgQ80xZu8+EjKJj59jt+sV1kwDmxSqC6A1X/rNbEC/Yy8V3YosYCYIbnw2566Gte9gQ0Mnq+80muVo927AtdRKgKM3NYl14P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ih0k/Z3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ih0k/Z3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A1B1C4AF0F
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 12:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763556714;
	bh=Sf8hVC+aTDN7MU0ttMrnjHR1wpbN+qQyXrI643QooIk=;
	h=To:Subject:From:Date:From;
	b=Ih0k/Z3/7wd1Xyd8YT+5gRRtIJScSq52CZx4yTccrjR7TQ5NzAk/evkl6GZGYIUjd
	 9dUI1R0YWzIQ0ZCYTYrP2RecpNOczHHh3UBX6X5hJc3e14tFzo35fw/q6aGe0GXlR4
	 PftcXUlugliNHbLktjtJV9gilK8QAJPhlxdvJDk5xFobKrqx+et94LCCzE9cM0wRBQ
	 PD/7HcOlUam8tLxsXaQhmWRyfIqsH0a4Qo01LuCUzxb9c58RwZPCz6Cn4JWUuRa8ud
	 U71Hi/wsXS0IMOTHdkWsILTp+9e5/8FuEbxf+Gq6OWcluS5+J3w18qyeXV/WHavMz+
	 Ih68iQeIvPt0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9393CCF34AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 12:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176355671359.8380.885451019862656257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22e54b6af2f9758a4b830abe8cd518228a76c322b1a56aebcb9bb24b2311fd9c
Date: Wed, 19 Nov 2025 12:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763556713
