Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE582AE84
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735405554; cv=none; b=If03IUoIAPOLxDn0/+p8YSetaD0HqPZWgek9fG2utqPWgH6aHhpObmFDtsaDPzeD9ke38/Ao3Ad9L6/1NMPpkvsUXmihxmqfPpGi/qXT9U5Ee8VDKQwyV+KHB/+4XpWnD7rYI2pFkSwf/HX4NZoN4v98XDlxCHGSbzLTAnaIoQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735405554; c=relaxed/simple;
	bh=k23v1YRPPGKUC0GA3k4XCDRIyI4dlKKqSeGZF+LQyuo=;
	h=To:Subject:From:Message-Id:Date; b=lO/ZjyyqtXYE3zb6W34DdiJ9G1cXGoGc8UTqvEuG1d0lFD3BtzGbqpSgkhrbnVVGhDfB1B1LWTj2+F3ffnzE1IYLy7+osyPixOrTHp2xzYAja/Pr6USp9jXVnkJAGjsgs8rQOVrkko2AKFn6gHiDkfHANJJ23poj0S/u60fMkDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGYfxErR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGYfxErR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF26C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735405553;
	bh=k23v1YRPPGKUC0GA3k4XCDRIyI4dlKKqSeGZF+LQyuo=;
	h=To:Subject:From:Date:From;
	b=lGYfxErRXyHYXR8ggAQGbc2bO/oRJ8RhodNbV0BnJVZuK+qiDXV5G9BQ6kmO4B/PM
	 FD6M7pKHSLrVbGuRfKEOs4DzGFnDGg4YUr7FEwNWxiI7xMjMc9h4yGEo52ir+ArYcf
	 XSvqQi52HcP8Vfgc0FNhpWwP1LLcLBGxhjdSRmqIWVuXn8htIMsLf1SJJlTLwFpPQZ
	 DMvvI6+g1AoSeTOfxooCLOqEwgR5tT8crXun9dRavFByu+SqvWsedqVVeFXpO9CjhV
	 +RQbFpgOdxFpQ+PCzp5Hrd5qF3imWHHMukrVmUWrs7YToJMwMscn4ZkmuqGLmMNEdo
	 z0w6rUq0ytbtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9881EE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173540555361.2206.11192566076319849866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68542129cfff258a463551c6c03a15512d2bbc8a0aa2a7e1535100268cbe96b4
Date: Sat, 28 Dec 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735405553
