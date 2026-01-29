Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36F95733E
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769677434; cv=none; b=h9kfeSk06QQqnPTY2wimMw1EWfZe1Iy+S7aAEwrp8Z1C0+mJwjLO4qTvZM3UsaZo7fTD/hy2LPvGO7SJV70xprenO4J7gzEwiKsqMf1zyHQsAt+iauopJGVLaouW8egunnck7GNwoeEsclHwIZSYjWReA9yygJCeHJ2AdLk9x24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769677434; c=relaxed/simple;
	bh=gJp3t4Qgb5NrOvqLw29MvMEKknSekcJTe5ms1AVYlnA=;
	h=To:Subject:From:Message-Id:Date; b=YNkrArFT8P6jxvEtzCS64hBb44wV/8ugAYnC+xYc7oVirew2PHULTMIUp8sW7wg00otV9oxWFqJH1SX8jMCa9wyGoAYrXF6/zVG9a57rgxyh4rbVc6zKGGce1H0+SOhQ3AVeeT/jUoFqwfC3b70ar/CL/PDkdI523Ybiq/vKWSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecwr/t+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecwr/t+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFC4C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769677433;
	bh=gJp3t4Qgb5NrOvqLw29MvMEKknSekcJTe5ms1AVYlnA=;
	h=To:Subject:From:Date:From;
	b=ecwr/t+rEce7okh654abjMTn0tTrSBlOpc1ukvMyfK4ZIAjcsDNmveasfcD5VjuZR
	 5sdl7VJZM1dHQvNASfot31aPxm/f8Ko+LyIqF7xvTlRuC9820Ye13tfszRGc2HdYPh
	 TK/NT+lqD70J/1KGlhDWuWGgDZsUlH4kDWRBcm4H5gF2lBVw7NAQXwetRIS57d8MMP
	 S+iTB9afSxkxgvBd2yfZFnzmsG0fOpUgKeVUeKWhluNxc65QJ/M60jxS8XZw0vDekl
	 LoE1qf4x4hEz+rKaNuDAVh1SM0smjVileG3luF6ehKtn/wp0CLyKYKxojc829/D1+0
	 qRm4ipui4DSgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6FDD358E5
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176967743357.9056.11367832622297027218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d7346e945ad925cd51f5e26b550349c08be3d361e97054e5f6cfd115be82cde
Date: Thu, 29 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769677433
