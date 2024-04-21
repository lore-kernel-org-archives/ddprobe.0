Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5461D1DDE9
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 23:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713742823; cv=none; b=o9AH0pxQ6tzX7gniXf8WPvqqSPNk3C0YP4VUu2eicRSvxTi1QUuHe8ZRh95FT/M2n2M+39si9Bn3GHdH0eXeYfCbSCJV211yd32VI4wHHW+E0mhZ9zMcTk8AMuDdw+FpwC7nYxkPn0fszlDykTvl4HLVm/Kup4yesRdnasjillw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713742823; c=relaxed/simple;
	bh=Amiey28s86rC1bDom9VMh3NtTUbi+dRTcSu22xLiXd0=;
	h=To:Subject:From:Message-Id:Date; b=FVASRa7D2nIajhEWRC4MDf/CFFua4emA5w5oehwNXUDYLDCm7VcDmrnANXZcOxxAPB2CkEsVx8rkWicdOjJPhiGqQs+FuqO55ufHdAPIndP3xJOfjTy68PDN6a4OGlWJtWYKNMMpxJqh6/7ZkQHLlyLukuuHJWiMYgw2N4af2Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNOpIdBR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNOpIdBR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B80C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 23:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713742822;
	bh=Amiey28s86rC1bDom9VMh3NtTUbi+dRTcSu22xLiXd0=;
	h=To:Subject:From:Date:From;
	b=SNOpIdBR2AkUOCu6gO4BVWFA4idPu8ex+UR+vlve3RuWPy4IDT6YXOXtq5CnRPfZI
	 b+ytaKT4f+QfAnKuk+hLelAYEhIAo6ESFstczQCpjxEpgR1ROQHuWUbo/lMWMFBdGm
	 BtASoJCSGdy2iVggsWHtXZkfPnfRxoXaEcQze1Ga9gSd1U6m+PgPte3C9bD++NFr3X
	 /vvZzWor6+mcJv+jEUJaAr9cmPNoEVk35rmOJw42BfEeu13evIztAfzILHPTaTAckB
	 oow76oUrXxIyV5kumDo9MnOq3Lpl7uM0syjOoI6DZYKj+6d5pPZWpIJMid62qhx9TY
	 EDUjtw6K4Yj1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE018C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 23:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171374282276.20537.4703265414785544737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78fd277510d586f6d643f9cd83f5f71a9b25f01c8407c0862cc805dae1587ad
Date: Sun, 21 Apr 2024 23:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713742822
