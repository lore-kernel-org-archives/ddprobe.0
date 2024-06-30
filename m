Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD1112AAC6
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 10:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719744263; cv=none; b=uMcxFmYl931gIoieZ11dMFK7J5oaQ4/A9KpSi97clPyb4p1DET2BB51bLntn05dOFOwjl5r9I6KLzU3hVG+SBIyw5lsuyTYBavNSyR589+zA7oGAC1wgJ+p7sGIZ+0AgUsM+EAd24w45gaxBEJyrBEHdUvHSnpqEYSj184FaIMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719744263; c=relaxed/simple;
	bh=twf3DoeRVO1Edh8EPnpFIyvIE+eL0xm63LuDxhimSvM=;
	h=To:Subject:From:Message-Id:Date; b=tNvpJV5zK4nSt+3hOz1Wp4XEKYPW23Wl0KGoy4Slk+FCfYcqAmSP3NGj/x/v/BxOcmbEG38a1gvEtPvA4VnpIZiWO2F2RDHLw67h7sDqPipHuezMN2FrQz7uXVATRfaNcF7cBPt9+6TBHOtXLhMRtVW6AEda/HI9wpn/PbKkmiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5af7RBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5af7RBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC368C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 10:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719744262;
	bh=twf3DoeRVO1Edh8EPnpFIyvIE+eL0xm63LuDxhimSvM=;
	h=To:Subject:From:Date:From;
	b=k5af7RBf55ZCEweuIoQU+PoSihKXBd4KLAxYvR3j1g4Mjdq3TnrvQxrnQjRn1w78h
	 J2IrIsSk8LtkLMwqMkCR0CdIz0/Y+r7aBxYkxvNsGVlEVdTQwI4ZfFxVzvVLxY3fpI
	 Sf7ynlh6lF9Kjhp/UTxnZadDY2kM4LXR5+iSc2mdb7rtKOdddSLFF1O5U5Phe2GLs0
	 EOwtiLZWsaHluwTXKxRrVhEenm0sOsoH37HHX+NW0qnhK6QLT97KcTug49x+7G8bPD
	 xZSid8ji57bV2pbkElZoNarAwuUJXuQuuoMBOXdV/rPCQtQx3PBefq+bP3PHHrjuoX
	 msm0E0tajeh5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63C3C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 10:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171974426279.12612.10770038463338418213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16c730dcf6d2a6fbb51dd5a98f08c8450808c95deb8458a78b89e209c1e9bd75
Date: Sun, 30 Jun 2024 10:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719744262
