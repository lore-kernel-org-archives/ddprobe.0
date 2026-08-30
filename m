Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50626347C6
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788056434; cv=none; b=k91WIkiq7pokxPrVTt1iH0BWwCOGsv3iVEgOJQMq/lVw74y9jjO1IITDkqPtv5qGXhdru3rE9zvxflICz2ZQ/k+JQlQ+kOcQhbkAs+zqpaEvi9bGSkv+Sk51keW75XCjWtf5Gps6HhBM1lMr7V4HcbXoQkAS4pvUCXJ9w4Pwc4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788056434; c=relaxed/simple;
	bh=WS+XO5Iu1mBeymTP28+hmGhuj/cA9OzHCyGC9CpmwX4=;
	h=To:Subject:From:Message-Id:Date; b=YOnC9m3ljXm/P7gNeixzfNrYybL5VrWIWYKsYqtKuwtVFQf6A74jV1WlkBCsz6L0ZeCWXE67+6ZgfPLqS5ZPsR/C/Klpg36bFqxHKUZvYnaZJCa+1NGURZ8VZ+wRRO7s6pUbZZlbuAWrljuxcowrbowpRZj1naseQd1r2Ft390w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRTP46Rk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRTP46Rk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F21C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788056433;
	bh=WS+XO5Iu1mBeymTP28+hmGhuj/cA9OzHCyGC9CpmwX4=;
	h=To:Subject:From:Date:From;
	b=eRTP46RkooWOhDONtGLg4WnGn1zxaj55aEWz6hQp8hNrc+5Wwt8RicUKq+l5E1T+A
	 EzHRwnmzdvuh38Xe/7MkQXBw2RZMFDj3vYYafp53p8fyVhVvKBwzWsRc0olK+KfTjT
	 iPZ3sYjynY8cH0u/xyPEsy+ySXSyD8i6Jcoa44Z+c+Vos/ClkjxhNHUNRVMaU3EyRQ
	 11uCpLZvD5vMb5FChnEiuVTitXy8y2phHDrbeuREein7DBznfgUHS4FAlrh2soLAmX
	 Sn71sZf3p6ipbwDMcB/5IDtXqPD2UxI/p/QBVrxEcZJWhsrX9NWHnYTwfhsMwg9Pwu
	 F4MzRrHcEOJ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B8BC61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178805643368.17835.7270802309240077097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab81fe16ad4bc2715b2a63e4bfed475fae85cf753acad5130223747d16f0f005
Date: Sun, 30 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788056433
