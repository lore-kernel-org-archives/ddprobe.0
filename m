Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576B51BDA97
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733485554; cv=none; b=bqMafaa1L0OhCteFXhBW5EPzC5+gMRlw55hGKKXCxbLM3TWEDJieu1HRr3h2vCBYC67SmGtuxIYWXczqywNJxKsTnWQ1O4m7OVLdFxFfEvuA8JGFOn5z3DdGGmx0mWew7cGlgld8Bz6rmlTCLfnEwyQXop4rgtV0BC84lqF3A2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733485554; c=relaxed/simple;
	bh=2uqH/Io9mWmzFRICARzUSozFecm8oyrYleoB6MRVATs=;
	h=To:Subject:From:Message-Id:Date; b=d0iA3vIIAK3S0tb40XM5aBDHF2BEa2Ayfan/4NWRZxlYBB15EEOUA2+R8l7dQrKh7tcqc1YNlCi6ytAZgKZXHF8lMGjwY1xS+gX3fmybxVApdp6gJmiib/xdU1O448eqYl55w0TVg7cZLYPvdXdBbFewm3Jg3k2um5dvq4ya6KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JhL7+ule; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JhL7+ule"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6625C4CEE2
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733485553;
	bh=2uqH/Io9mWmzFRICARzUSozFecm8oyrYleoB6MRVATs=;
	h=To:Subject:From:Date:From;
	b=JhL7+ule9qljKKBdoclZkDaUY590xTS7I/JwG6BINEe0R6Ci+68bQ0088RHnKI35e
	 uioIoIn1AgYjh8urwTyaYnFiQeqaOr3OQVPMIZtoKXqkbKuJ5RR34tXtIVpXtoK7v7
	 fgXjeEQRq3KcZ4PNM0zNO8ma2+vKrCWm8pGm5e6fSsM8OxCL0oF1KS+oq6SkiSEB72
	 GoWB/eXCQNyB9u/PHq88m9wUmhRgxHaAEU0pebh3synegtGGcOW2ZUWvS4EhbZa6eT
	 7TamHcT1a2bMe8xfuxYssz76zTlQVCP0YqQEo8W23cfN6auwcqVQwDS86iPVYsQXxR
	 xRZSzeuwgVkkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3897E7717B
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173348555365.28422.12850921324816730040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc419988cf5a75bb0b4d72a2a13193469c0364c6519fb0f79a3e9a87090b99e6
Date: Fri, 06 Dec 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733485553
