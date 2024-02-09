Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153F4657CD
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707461297; cv=none; b=ZkuqV+C5Hn2YKxV+jEk5Rz2rvckdnpV9XJBgr+3XPHKVc/OQoa5FFJipbU9shqZ8iJW6nloMTUkiDhKSWpWAtYK4uPIR2ZHWmx0hHJBE5M1VorsSYOiz72Ol6Ydxs+LP8NyqCov0MQdPAcZQvqZtemwpd46vKqqWRlJ9DUIrA/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707461297; c=relaxed/simple;
	bh=zgNbPR0tftFx9kPhPYvKaqNWdNXCJa2jgAUUUnptFfo=;
	h=To:Subject:From:Message-Id:Date; b=fa2wg92Ad9CGcuedeY06T0b5zxPNsqrF6LtDRv40ZLaZVwtCI3QlhDZitLArEWKuxLPAM/Yf6wFhxFRl3+kDmXEjj2wImh17pXgOmuCU+m015o2TUNH+yf3ARrFZDatsO8JOkwzm0aSldAgyy4HHBcavIbpmVb3aYpGlA6/FU9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pa2XMd6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pa2XMd6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81CA4C43399
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707461296;
	bh=zgNbPR0tftFx9kPhPYvKaqNWdNXCJa2jgAUUUnptFfo=;
	h=To:Subject:From:Date:From;
	b=Pa2XMd6WBAE0Cyh+dkPJiwOJrwVM5P4yB6eFLj9S7A2I+RR+Ro5asNWsAA+3R46Ty
	 Ri7uPzZwXJqQM4U+VyvrumWbBWd8NCkE29s34o0B0oZzfy+kV2SVaZogM2peLyau0n
	 pkhTvhfDRswLxOgxJqhapSTyL73CVXuyjbiiHarsUxsLkbA55ST/ZOVJ4Ak4HI9oaO
	 lKbdS9jbuvZWM8cHbIO+oqnE/pOCHxYBZ5+QprxRivf9ZD++NGu0T1LhB8gb4Q2dBw
	 pRvcyq2INfDDXEkyBON+LwknvAFy/+1D26BpClhSI9L6quxMiVEYPW2stXc87NiVJy
	 p69ufCaRhVX6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 637A8C48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170746129638.30285.1419745776860934585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca53edd10b984421cf30df838dd118164df455bb489eb6c8d160bf248c4dfd1b
Date: Fri, 09 Feb 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707461296
