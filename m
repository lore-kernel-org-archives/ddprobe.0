Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D85EF9C0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771782894; cv=none; b=SeFP4jzsBJBhVclRnDED9pVKos7gGTKAOXwD1IUYJVilOUb/YbS1/9dCESyNa5SapqUBG6J+r1U9TlqXozZz8sjd4YMr26bK2BgOweLr3URMpQ6dKEs2MplTVj2QCIn6uBQpCZ0AM+Ph6ADdCeK3zqJC7EdqhJB1IVQcZ4bwLGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771782894; c=relaxed/simple;
	bh=TMc1DCwC5F9tkf00hz9rnQdcG4FAtuYUUc849zazp4E=;
	h=To:Subject:From:Message-Id:Date; b=dpRWoQBi/yM9NLSYuwY9LVWOPe1XVguQBtyHQyPpu8PMCgwPag7Um1wzYQZDy8/sIIPbXzeOfokpSKmwk+ZLoAwfa/HPklikLEHfkKAHk2iG5n1Xcl3Ptp5EvIaOy9qNXM1A4j3xdCE7MsQv27xA146fcn3MMeDjM1rwuj1Vsj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkPzaylF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkPzaylF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3934C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771782893;
	bh=TMc1DCwC5F9tkf00hz9rnQdcG4FAtuYUUc849zazp4E=;
	h=To:Subject:From:Date:From;
	b=fkPzaylFwK+TkeRdeSMR999Oxl/KlqlD3lltBSWnFzXqlyttmf8R4mktPxKP50wwx
	 5yFPD+6cU4r3I1gHLPyBOdznf0H9fGU3pRxnPcmRvirP2Oj5dhW5Bay5A9p3x5Uw8A
	 G2JMUKBTq5lG33ObP7VVUA7i6uAIylOP6GP5wZuDwGz1ap+QBljffFInv6/xpzpqEP
	 sL8N3rwpZJjMJI5ezHm+4FUXxv+mOL5xD6zhugbW8n6axKQmcAtjacqiL9insFVWH0
	 CCe3K6ZmtnXz6YdABbfG9A8qi8Jkl0JxoH02vipoHTBo5sA8fA3Gg5X/yy7okJKuVg
	 qu9qr0tBFeO0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D21C624DB
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177178289358.10414.1466496950577031052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1eb1a393c888139664859ec30873a852b492267e5b42af143b94733b848313e
Date: Sun, 22 Feb 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771782893
