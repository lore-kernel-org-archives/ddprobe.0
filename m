Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669CD182B4
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742526595; cv=none; b=CzBWtcMB0EzCoKUCFIq10a21Mis2db6p8CzoGXNp7DZxtaabPZ5PyGhQsuS98lLev7LLbqaTTTO2Gb92wIyFd/mLhShIAxmcR/xlYKh1zvs3GdBt1h/4VZHW8VWDMgh0veY3e8C0xWjQ52BCxGNoBG3juiCit96vWXYTwuPB7Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742526595; c=relaxed/simple;
	bh=mckzsNOsGfQzpf93Q7mameSARBeKruxQoRxCWtDnu6w=;
	h=To:Subject:From:Message-Id:Date; b=Cw0WUsMcYcm9VHKuJmAcscOU356k3jtOUmp8i7Oa1smM7Qwrf5zTBA0fZ7XP7YqBLYaI4BbMCpeFyGSGE0AA6tVH/FL9AKrlUeYK6xUZRJ95b07s15+CjAeUOy16oJjzR4qhoqLkoGCy3TL0+/Hi3HBy8sYExu2XaX4s+WfOt1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJbu+G7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJbu+G7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5C0C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742526593;
	bh=mckzsNOsGfQzpf93Q7mameSARBeKruxQoRxCWtDnu6w=;
	h=To:Subject:From:Date:From;
	b=JJbu+G7QI3MAgrm58FResGVO4Rfp1He8Uw7yx84DCmU7cFGSOZurbQIyO+rJ4GENh
	 4s2LPp5Ln5WeuYJub6BpyOCG9CuaXXNVlSLKNY2UyHFoLT1JO3K8qTGqQM6APRj3wf
	 d6xGhJeXds3ytpo+QLsXvEyiRfFXniBL72yVyZy5tGkWEyNLdm4jMXFOy0rCBebMfG
	 JAj8rKtj0OqeIyTnjmjixYwDO3JvI5SQ+TV5rORCH/997ah3tgrWvC6sm1dsbHWAdY
	 qunlWq2pbgrlTf9u2EpCKxCWMrRsmXyiVy+giNZ4DdqYpFa0n7EmacGUsp1xKEsJRc
	 BVd3ErwJKnH7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDD7C28B30
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174252659366.16961.6261505918232902685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbe1edd14ba9f1bc6b5c5ba0fbbf5985d91f9fc3c60584cd36faec599a961678
Date: Fri, 21 Mar 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742526593
