Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5A54D599
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755946194; cv=none; b=B9Y3yDmkAGB1pHbn36/Tj3b5aPA6JXElsnoY34+9E1xq+++gSIGoJ00fkWKc06EiEviZY3sr3hYI2smZrYMNhoKzqoEff2h+Zd3NDd1bZ/ASYgBISY7n4l3Wj29yWgdmZKeunwrLNInCiYr2BFq/SnVLjPSivoT8IwV46r/m/Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755946194; c=relaxed/simple;
	bh=YejcCBawiXpv5AQF8DO7kNXrWbGOZEEYWbjpm29YWxU=;
	h=To:Subject:From:Message-Id:Date; b=HWtKO9wtxUraAUA91zfFzRQrLgzWXtOEaFeT+KbIyc5uVjuhhrx4KiGz2Yy0xprObiLXOsXXeFx2eQJflRUiKLprX5ifS51dF6LhhpAxldjtZH0ewfdQ0+XsRu5iGo4A//8vSFSn+wDsrF+h11cTEDqPEd0nxeuF9/PuyofVDrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PD/KkpcG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PD/KkpcG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6D3C113D0
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755946193;
	bh=YejcCBawiXpv5AQF8DO7kNXrWbGOZEEYWbjpm29YWxU=;
	h=To:Subject:From:Date:From;
	b=PD/KkpcGjPAid8P+77PLmUIEp0+DJ8NYUCSdu5UPRvpugEOR1oPdwY5nTsE3PPzWY
	 SbuqUH8ALR34C2XT/vV6YdGKF8Kzl1XqkMpJ4GzEi+JKs/QotPSmj8t2ncodBqn8NY
	 UiQUCBm/rFs/Xc/CeDzKTFT+c1zMxjn/qD4jYK0xKUN6SYGc9p+xFDgUu6mOHPmdXC
	 NtJxbjstEjQ5C+vRd6l15KouhVr4bv3q7imMlOZovyjeHwgC+bjOYYRexB4yIv62rT
	 Y5E58p2nsKXNIo9ZoTQBzXSO19xjmVE2w5lrmXHWYqR35U0lMlFDvGfJwTljikaBNy
	 vBN2UAULEb+iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90274CA0FEC
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175594619358.9531.9776307251128928187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57332c9b2bccb9c327d5d9f37bd57b0cbce0fbee66fdd5431f12fc8373d60927
Date: Sat, 23 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755946193
