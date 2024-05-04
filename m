Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7040C84FAF
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 21:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714858343; cv=none; b=oSOsMP/8icuBmvYyLfdCBCBJCGIq7Islv43VtA9lLjkyWyUtyBBFwAxpAJWIMUjDOvCY3FBrb4RcnVWZU8faCwL67I9HMGSh/ohtLBl4Qol8xn6qsun7fPD1p1o1TTJdOpx4HBHoOmMoHLppe8KqKAOkUr4KOR5AvoQrFMPzgu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714858343; c=relaxed/simple;
	bh=6ebsrsyKay8N66wVVdBRHCrd/2D5WQgun8G85pzW2ic=;
	h=To:Subject:From:Message-Id:Date; b=EB+bx1bGzJ4kt+IOGPdDE14Nd3n36/EMXJSVLod4B4tCr28ys3X66gP1WuYZuwAbhZMRCMpW4FaNWFJIEg2Lnhh8GWP7g4+Ceg62u3vXH88UasHe60fyYSm2rzJaXSWTdiMW2fKBntelYPgs8ylIG7sJdYxPDddgdC7/Lcmve0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADsEB17w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADsEB17w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D612AC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714858342;
	bh=6ebsrsyKay8N66wVVdBRHCrd/2D5WQgun8G85pzW2ic=;
	h=To:Subject:From:Date:From;
	b=ADsEB17wvbO5uFrWgpcHfcgtOll97zi0XKYhAWhRjtkMGtY6BUHcv60lpSul0Rsd+
	 8QWiQvKEHd/7nS+6D9FckeLrbQzjhctSdsK1nAJ93Cfwrx7g00BQeIk0z0WK0/srZ8
	 JOjDCrhy4nYBA19trQHqkI6PBqvHhJ+ljtbhaByAF6NTlTq7Kfr0lI8BMJOhNmUIwz
	 LXqi2rYWMUkax6t1Y99ni3wTeWFA9jV6Oz1KPKlYPKKTp5lsUke7cFKr/e4W3x16zK
	 UufQNTZndVUn6ia0NLkp7KwCWDG8AaZgaiuo5LR0XmIyfq9V44fbpTCqMoNWs/vvkU
	 YpxYT9JEXgveg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4838C10F1A
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171485834277.32108.11824862362453614992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f921faf5a8ea5b2a10b43b450e125eb0a3a640569297a70fa3645f843e628ce
Date: Sat, 04 May 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714858342
