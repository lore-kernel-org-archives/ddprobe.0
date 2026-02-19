Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F61B34CFBA
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771521894; cv=none; b=JCkqlTljtDZDu5hKOGubH/KPtLYINNvL45jIpIEWbwCjqeLJ0WN/CVKe+m+grwwAOuoh9c8m/sy4Yq2PEhNeBrBQdLG4C7kLAnM+n/guE2yfhkTN0MVmpEbUalB2md0cG0sCGHhhqS2PHryYP6E1ybFzB57KK2siqs1zbzAXnwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771521894; c=relaxed/simple;
	bh=06UDrDv9WxXggyCpAaalpGyG84UCwTPZGvkh4RBDlT0=;
	h=To:Subject:From:Message-Id:Date; b=Kgc0s5TPTgQey4JiiIQ7qM2+MyVwXM8gxiq31pxNZIRX6VIhfzsDigFptGDF55mHHSiPhyEtylO4qyERon0mQl+jBmd0FE4K+Q/8XLP10gXi0WySmmJqU8YIsqq4keE9Nc4W7cVJhA/sovOoEqKxhgciHFdN+5ukc00WEPgLDA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRwqreAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRwqreAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D01C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771521893;
	bh=06UDrDv9WxXggyCpAaalpGyG84UCwTPZGvkh4RBDlT0=;
	h=To:Subject:From:Date:From;
	b=CRwqreAvfTlTmULcOGTncXpPDV/uvLZAmA2/BdfuSQZ3TFV/GuDAwR5NgZ890dDcT
	 1EOgn3yrdEOjjWFa38SW7Lw1OuDjnEOY6sP91yKDVc4IYDymXCiuQdcEC48+hr7BPn
	 HGmbzV4ImQE+humqHcNtXdfGIKH2H3JI8wb+rO1bkavoUGsgSoujQe2z4KWvp8s712
	 wk4Oukbge1/x+GMChw6ZNALmNRH+eK4mxUwx2tUmIfQdop3vo2lH/UiYZF9XmeOKmW
	 u2gAzfCjxft/qowG9C1H++vwe/YhyCTeVSPHGOSqgJDnlKQrJT/Nq9/eTVkL/O1X/U
	 xNesrYQvcpqUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF174E9A053
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177152189370.19871.1964399415940025017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a5fb80f6ef7dae942e42ecc15d3a61ac1135708c21628e91ebfc23192c1ae5
Date: Thu, 19 Feb 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771521893
