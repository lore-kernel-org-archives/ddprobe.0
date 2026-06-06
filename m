Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8B73B18A
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 20:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780779274; cv=none; b=k2HxIg9ntTmcfzQCE2z8Qv0sB4i1hUa0KybG6bQNll48T/F5Qo2ENjyBkpLrrFprLyqS64Q2kvEqnPJ6AoTtLRkEK2mxPMenw57r8/zM0C1+YfndTnz+jXI12sGduQORAKBlYbv65wn0gq24GhBb5atQQLWnXX8XtENQIC78FaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780779274; c=relaxed/simple;
	bh=sg3JSQYd35zqXUALhX3nJdS70iNGtAouMXpyfwMMLhQ=;
	h=To:Subject:From:Message-Id:Date; b=rmTzOENW3v22Gameaj6/NN+zn8cwMrXOJEDbJGYFGwML9tzIlj1VucOz42Wyw+mQT2SXkYg6EOedXaYVP8gef/nEJnnCmuBu06UOKB1IN8+tbY8pKMNUxwnv+duZvXXFYLxetOWScQEHDxbiKpJ2ZeYRR6pHDQ1yeuPNAFQAsE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DArijSlY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DArijSlY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C53C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 20:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780779273;
	bh=sg3JSQYd35zqXUALhX3nJdS70iNGtAouMXpyfwMMLhQ=;
	h=To:Subject:From:Date:From;
	b=DArijSlYwFm8bRB8OO5o0l0pzNUe0ss9MWobtjExXFtxtXwlaIpU8tMM1QDp1u3P8
	 PDDInh8sjEijsm6xIF0+YATT7fKmwubrK/l6DD19cl5NQ/K2mXAMhWhlHmJ30HxhWu
	 /WqxIi5Nh0Cfc28BkQF0gslO5ujOyPpaM6aBNgQHcdvD/YCi1WTMaB0baOmE+GxvDM
	 nK5YXYYndRZup7CpYOA3tk0dlKlZ3CZqjJSQFZh/rwisvUvWnkJWZSS4IgTZuLWhH4
	 rF5QY8JXdiCTAmS4uxA1LHrYPeK84/SI0j5zkaR3Ie5A9P0nxhGHxtoIWYjYH54oAs
	 XpZfoHjs1AR2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5635CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 20:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178077927371.22768.4604564446830907618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6171ee3d9f4fd9dee3ec3c59a40847fdc2111b77004881ce97a8e19331c35aa
Date: Sat, 06 Jun 2026 20:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780779273
