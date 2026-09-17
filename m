Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C27054707C
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789669834; cv=none; b=dJfDyaNgf67Ktk3xGeO3Pvndd3IvqyfiERZRZy4Zc8uOKKJju6tgl9pU49XDbpjQCJkJh3mIrLChJZPrX/4uUNhiJfEV3z5Afr0PBW7ygQgI78VyRYzi6/qzACUm0QFljjMo0orUg4PBH5umYLvTvBnMx11hd7/G3cV6+g14wLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789669834; c=relaxed/simple;
	bh=grlPxtEcN0q0IUWw0PZwBeMEqK30IwT51G2nE9f6inI=;
	h=To:Subject:From:Message-Id:Date; b=elnTK+aw3O9klpdQW0vYaNoVN/P9OdqFfuRR0ulNxEf89822eMBuPhmeME8eWtMORywv8JrulyOdzvJv1Io9ewiguaNurhPTjk0P9JP7uIOW3WQXsTIM4NrXJBu0JMorPHA/TJpy9eblGNkSYJYfo7X3CaFC5j1Y/PVFBFi+d0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWN8xU55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWN8xU55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3E5C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789669833;
	bh=grlPxtEcN0q0IUWw0PZwBeMEqK30IwT51G2nE9f6inI=;
	h=To:Subject:From:Date:From;
	b=NWN8xU55434dDVFQB4Q+7WCas7nfvPKhRoR3OEN3CCTiuk8rqASe+JtcpCPA/yb60
	 Xb5HFWJ0LED856uCEsm21O849U6X6zSxA08p3v55oO7t+HLPR0XltrYKxt5oehvonN
	 eD+a4UXJCa/EMiBV2fP98eThbzJ2TtBWvALEyzj/aitPQNMFsPEIH9ww8IT/AUYqo0
	 WWRl0FujxcD77kd2pvc6XdrR45GIw1AQeRBjZxO/M0KGCvnK4gqTqaK9KHegWVfyAR
	 NXWMnWWF8jNK+3OzgOFQo2iS4ty5cGuWr3Jf3GxYmKj3rJjO/SE1CVv/ydyCkf9nBG
	 323X+pqmHosJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA858C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178966983368.1752.5787948698627110540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7366280f4334f105a75cbeb5f0b0fc4d87fb37763d6d3fb0a935dd185eae8744
Date: Thu, 17 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789669833
