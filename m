Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6F73F9F44
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786146034; cv=none; b=cpEoouAt0zoUTChbqwedavQt+CFXMOPIVWAsXvGABlWWqgWQbjPLbn9s2imwHU6KyM4/q+vetwDfxLnAQaosBKR4qKUxKAMeE2IFQBpB/KbUyONB4eKCn92nV0ctiUCGcGe3WtmwevSCUuVWLn7nj4vh1zWcMogoO9Qch1KGpig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786146034; c=relaxed/simple;
	bh=8WC+CRRUHova8HGnR6bNyAgMoHyIZG0uycd2rF4zPN8=;
	h=To:Subject:From:Message-Id:Date; b=iHX6uHi8Ebz5cH9ShXdGUXCZZrsvYckEekxNk5W1gZRyWQYu8vUlK7Vndp8oqRRsOwMzzUncS+GuDYOQxM+nE1rAPKM5EtyfMv9bmMGcB8E4kwsymIo3wJXaAH5/O6ZwD/68ia4xFzJt+TSHtapmFK9mkL+vbHUbzEkdNGmoN7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyGvqJP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyGvqJP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4450C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786146033;
	bh=8WC+CRRUHova8HGnR6bNyAgMoHyIZG0uycd2rF4zPN8=;
	h=To:Subject:From:Date:From;
	b=CyGvqJP1L6dZpAZSjGhVm1rUWdE4WAq4cYSiwaJWxqRvoYtkvfS58mDWT5SeZB1st
	 Gngl/YbMbixQG57i98FzLfueYpV8dAfgZScfvsEaOh46GfAba9XwqbgptgjakxBrzr
	 X7YpPGpsMivoP0p+hWQJVw+LewBx3tJMAE7aOxla+8EOKAcTsUI7Y8Ow72bhRei0vi
	 HRHYAgfOUDRuDigr8hVrhA0Qp2M4mCjrhzpgrTAVrWNXZITG+nLv9i6Wb1OxkzQIJS
	 LgF2BU7DDxr4MX3QlfTiJQDqmW1MTzaUpKH6bAJExtgrglrzW17sXZlr6pxFeOZNOA
	 bMuIWRzHe1pAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B129CC5AD05
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178614603368.3980.3991493727490933374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90a169a88a5e18ae3b1d8aaf6e1ac19e0cf10fb532917433fa9fe9b3481b683
Date: Fri, 07 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786146033
