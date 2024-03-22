Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDFE156B78
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711141097; cv=none; b=mQLXX6IyRdvZrV+JGB3xxWyB95qeSOr8RNx5POvPH8iZUbmKkK6VmWd4LfS7Eh5Jv63rajOV+RBi/pUfztaCx+RiM1OnlAZh7FEAoEJNoqHq42em26Tq4y1G6KCuaouaKrzUTANWghRBpxQAwy6g3jgt4xaLpBmwKootobf2nuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711141097; c=relaxed/simple;
	bh=rHyul25plJrx/Dd+dwzolchny24p/jKYZmSOstvmSFY=;
	h=To:Subject:From:Message-Id:Date; b=tya+2eVT6kXyz1MR1kbufXem138DYxdBFGVaT5+z/8UqDID9spnMKCsGlRjvyk/7RZqDaAW5iD3xq2RCtOnx8MKDTD4mgMTpENCFkVAcFZwORGztYWSV+AsAF/YS6M6fbRqdoJBHiuMtblv6XIPnE+MxaNHeKXSYhp6DPoE2Gco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=segtzbf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="segtzbf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72051C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711141096;
	bh=rHyul25plJrx/Dd+dwzolchny24p/jKYZmSOstvmSFY=;
	h=To:Subject:From:Date:From;
	b=segtzbf5L4v1iBYxYTEymFoZ73KAMFyPoCWw4+UzPCs4jLxCipyFsoiof4465arU5
	 5AOWBBjaMGoM6nZEFKo7r4R742tJaYFNlhvIhGUuXDfQnaPWB7NTgEzQ2oBiAfo7nz
	 tOZi4iAXRCXmuOIe5ARylqqwDrvL5jBOcdvsbF+ELIpv+OAH/P49ZjI1yICR6UNAVM
	 itVJY8BFYscm5tx8c6Mh5qwlJQ5hrinLldRLhnafA5YBaMg0ihb0n8FV1Sb6GsCFmX
	 p5S71EpcCyQOqSwN0V77Jui234PKYE2xFb+7DeVjOBqlH0yuzopOfqg64hIEFzLMkx
	 Ys2PxHPUe+7dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D3D0C47DD9
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171114109637.8125.1446132108115790063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 967cc143c1bedee83bb2e5c889f99da2830b9549fa5588100bf1f53d140faf8d
Date: Fri, 22 Mar 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711141096
