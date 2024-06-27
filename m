Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 850B0DF5B
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 03:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719460403; cv=none; b=Fd6YgnNGGR3VjodAtgxvouR6T7NfobmwSQD8/TX1dNb3COxELOQdEby6Y3wizpUSD4YV1XMEVw/G41hKTcZ3Su2E7UAeHVk3CrFvj2J/lFdDeP/CAjsKXHiljNEtaM5XZrrLt/cuNJiZjaOjkUNzEDS1/UYqnQRxocC8tYEjQKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719460403; c=relaxed/simple;
	bh=oVQqkbFlZwtpWKnS5Jhbb1/RWJwDGKaMOHCtGUZorg8=;
	h=To:Subject:From:Message-Id:Date; b=sHVJ2/pToEgCV6Ph6MEzpOidwqqWubTRJeU8WwS63hUrsyzB1GrsmYfkuQZKot0Hw6WNL8AatwkBUwagfufDIqZY3dI+Wx8VdBWFxPJ2MwkBM+SgHOF8PtVDXLOah1kqf8jdXpNwmKpUZEnNX5Bz1DpjA6FmzmFvMw/tSb1s20U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aln9MjLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aln9MjLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3906C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 03:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719460403;
	bh=oVQqkbFlZwtpWKnS5Jhbb1/RWJwDGKaMOHCtGUZorg8=;
	h=To:Subject:From:Date:From;
	b=Aln9MjLMsOpZtDjCedVsaWQQUMDOGQ/3SqNe7gg6WdPqW32G93ST0TNbJcepRt3I2
	 O7PwZx5m+IjxfQKHli4yF85DsIWP5hA/xHi1amrqTJnLpo0dVAZunf4Nf7E/kptAbg
	 vNOcaUIS8cwCjyUm/vxY5aaBj7ZyMH/YDzoVjxLR1qZ9J/6AbDArFsmZY/c0QmQ+/i
	 qo+9drfJnBdwV2286gzLw+shhP9NjUmZG29NwJ7hyK80fQslnpiqCJw9PU91zk+E1+
	 zcNaYH6VKNagVKKvHs0aR0BDW+gWoQBR4du8EfY44rruQv2ykvi+vWBpl11DyngYiU
	 kRxmqIVYaKpqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D58F0C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 03:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171946040282.6829.16319916378258419633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b9fe698f1933ca75025d5aea2852b543c6082c29408298ce395bd29cd952cb
Date: Thu, 27 Jun 2024 03:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719460402
