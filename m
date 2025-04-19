Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCE720ED
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745029194; cv=none; b=i3J72Q63l0oWaBu+AhBOkRKJ5cNjHFo0HyvoYJAongX1tMcEqHQMYCSBuWC9jhRxRiq98PQOIHIoWFBNraG8dUsMgXo3SwicHRTSiZMAR2N3i4Bnx018QmCxUgQE1Sk1r3TdQGWGp4yweMvgVudOTAAmp7RXvGxkWr92dXGWjU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745029194; c=relaxed/simple;
	bh=ku6OLgl6JB94e/puotj2Tssc8vvcwO3WdazMkBFumLI=;
	h=To:Subject:From:Message-Id:Date; b=qlh6Jodvpxgd+KIVQx8++7WbrSMqJRU88lT6yIAiLiJn8brKXIZ5cNE5zI8Hp4+r1HoqWRbRt8irGPDBduLPJ6ZbDRBbo5CuDdEc32XT1wdA2/vATGBlrceuYkv9JK+YaONwr+kXSRwLTFUh95dGNeEp2/2FaGyYME4lNpWnRpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syGP9Vd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syGP9Vd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B7CC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745029193;
	bh=ku6OLgl6JB94e/puotj2Tssc8vvcwO3WdazMkBFumLI=;
	h=To:Subject:From:Date:From;
	b=syGP9Vd3vwwNYrsXtbBdfkrEhxJYAnLinWBbYbqqZwj9oIHfQC4V155q8tp7/dFSZ
	 /Z6Ilxtrg3en/wB+TfaZBCu1g2u07ebgLx0ZMOZ8GTVxM/pZ5McErOxVv7q7NOXkHA
	 rDPLrYgjpRSwnvkpZCvzqwPI1lT+QBkxXXWaqyr7vLMpEeP3LsjSGtr8MKqczuubCz
	 VGszg5fzksjnzQPrdLYC/CHK69YrQs1Gh2j1ZAFVU0qFQRDVQptElRlM3uE7fnarYd
	 coJ+aGdFgAg5AzyyeDVqDn+O4BolIlMpM4SiCJHs0q1Js1TCGGyFVo/KXMby1LxLs9
	 wqTA/DBIwphmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FEF6C369AB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174502919361.15433.1717898616736271022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f17d7974c2d6fc99b734ab5a64f442c11cb7000fdc3cf764e76d49a170fa7d
Date: Sat, 19 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745029193
