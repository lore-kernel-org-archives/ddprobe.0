Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E5628DA0
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 12:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724417754; cv=none; b=qRX4z+grb086n6LrDOKF1WCMWYN0y/zHinSHeqIIT20/vXb8fUxYa3ghPS3bUg9j0jePB65QXQh7gu+xXdYG3nse54Ij+6ICY5ezUbTA559/QGEvNvwi4VdTpWgvyq0YgFOqF36FifEbVbdNnJzi1+Zq0yrciScPGg4tE47/+Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724417754; c=relaxed/simple;
	bh=QsNx9ok3CFGoGJgOsd9weapyByIDrKDQXRTS5bLrZDo=;
	h=To:Subject:From:Message-Id:Date; b=ZB8FFPS6w9RVIv2mKCvBtYq/ojyOQQHw2bLiRxQIwLXCR27eTqy8JM1NJQvi38hLVoRiCkuN4iCj7Znvbpq9xo9c7gh5aJIbFAVdbr7Zcjmn96BI+ziJRhjGK5jv9Z3egRTmG0i/xxbImeDU8LcGiXUlkmOyCBXq0xFLwXBnGQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaX0e1US; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaX0e1US"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06FEC4AF0F
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724417753;
	bh=QsNx9ok3CFGoGJgOsd9weapyByIDrKDQXRTS5bLrZDo=;
	h=To:Subject:From:Date:From;
	b=jaX0e1USjtxOT9w9GRMV+wz85kRvKpz70okDdFuwBWYRyPCGrGifM47HzVcF/ljON
	 wggE8iXGPfRcBDsJlv7uMdOrU+cPanertsMHVpiPFe50TKQU2UtYxDZZekucc4wqiL
	 96PoVERAjxrxyspuuh/rpFLkgjSYupJw0hZpKJQ/Z5Reb1QR1f9CHUq9dhXkqQygwf
	 bADvD1tkzuixCwmmUshq/hICUrwMZ/gPNJ89YDbDPyuKGwHiZsiga4OTV70dZzlCDg
	 74eipz+huoUM5W0F5GMAocHzd+ExJZpjgvanQUydgLG+WFgySK4AOjeK8zsQAU8JfE
	 S+yhpNtH3FZrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A840EC52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172441775364.2691.13816992994884675401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763595c78ddd7f9edf57595aadeefc3f66d5d5ec2c6e4f09d3cf2ae93b21e659
Date: Fri, 23 Aug 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724417753
