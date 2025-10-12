Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293188F7D
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760247594; cv=none; b=khptxdChkeV64rgPVN9waL4iKpezunSMRwob3KnD3ia3Ko125UkLRS92pAHAuhIJhahQxXuLf0CCUdKUco1JOFeQLRe6/RPI2z4jZ57tknxCPePNPZYJCxfzqwja6+LanpDNJUzYnbtQzlRORUdJAmPwJauaaQ4TjV2TQbhKXfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760247594; c=relaxed/simple;
	bh=69+C96ZMbSyJC1AorFgdKOAmC8MVVv7Tm4eGItF+lHA=;
	h=To:Subject:From:Message-Id:Date; b=dvaoCAlIBSw2nLjJNnSK3k7lT9xB9v1T3EYa6ng2fPEZARGHOQs4Sfs6hO5EBnQDqujOqmu9FhVsiwwDffCIaA6pX1mJFuWwYJhAS8ltifGdCLVjxrHJ+qSr3ANaf6c/30WOEiq+sMnHbW0DZibvSsFpHOIv8YPfBwLtRNw5USA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KkYP1ywJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KkYP1ywJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0F0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760247593;
	bh=69+C96ZMbSyJC1AorFgdKOAmC8MVVv7Tm4eGItF+lHA=;
	h=To:Subject:From:Date:From;
	b=KkYP1ywJ9ktQjtga/xyT8osknFUxRr8gIfGS071jErDRTeP9s3UdnhMKSfLsES6Yk
	 PzEZ6S/1rt7lS9k1H4EVKJlrplkOUMGXeWNOivQVBoNQoinEKK0c1FcfWXmVyn1oB9
	 qQx6ljnU7yqaGJSL37GJgQ+94g4xJ1txZEqMvNtNEIv3BUg8cSI8RJ9wxW0PeD2Llw
	 +1QTLbgKWTSi0vrLM6S4yNxAuTMCmOIrup4S9CPqEkd2/RycP7XvR/pSm/lpEsWDRQ
	 alxRWXFv1/nd93iUV2O2me7JvF53uLzNmmT01duXoGj/ZYP58HaurUAPa1G4crAnHT
	 4xMJJRvzbaNpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4DECCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176024759358.30984.14119311544703215556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6019f9bb3930d1ac2a660d9586231665c3f6a7522d73c669c0bd2c16bc4149f6
Date: Sun, 12 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760247593
