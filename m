Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC5638655B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 06:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780899874; cv=none; b=r9hIMtGGXpwElsKU6Wj8lug1v7hw5UfgYqMfWEjUmKtuP0enUd2zjm+vdwwdLpymUPl/++priIEgoFmCVgwEj14Zg2XU3nleygFDvNyu1VMIeDLeLYB8ZUM3uKTXeVQXm8p8wBEC97zoIwZHoobqZiOQRQ08HKeD3cgY9TZMA2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780899874; c=relaxed/simple;
	bh=mFTUfke20HeZx+9hGBz4C9Lu7kQHPwa1bBQ4P9ssOo4=;
	h=To:Subject:From:Message-Id:Date; b=KStIKFQE0hvBQRFarMJ7yQi7PFPbDb0TMBtCLKa8qnOIecpA6OUPQvUPUbe1Kiz4fCEQtNBWSJ3Znwlxp0bZLh+repa0lWHf2JiVqeZz3vPi6/1JshF1wwU0DtLM+HaokBcv5YS1hBgTRlxWnzV6RPZ9UFqx0bo1+z2Gmw7kJ2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i11XH77I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i11XH77I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8D7C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 06:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780899873;
	bh=mFTUfke20HeZx+9hGBz4C9Lu7kQHPwa1bBQ4P9ssOo4=;
	h=To:Subject:From:Date:From;
	b=i11XH77I05AyQt2unNFvGksZiOywCgCW1sx40N4O52u/9EOFtMndtkX0k04Q96SHf
	 OCWx8KxBdOi6+wfWjOgJnFvxs5bpmfFEwb4NBe8fWUPYkyg0WMg8pKv45lzwdeZWh9
	 QwemNaAA70DJGjofnfnIfW2d8gwriFdt2RHG9zqfWNSOc/Pq3T/djvy1DXAAzgQ4/P
	 gSiVeYPlOjTz2SC3PGRhua3M25J07ld8pE6h+iSceMU7ThXpyFZkQtg0Cgl7CBLzfu
	 y8AZMsdAIQXgOt3XsVcvSdJkR3KLwMCN0Tkn+IsJZp6Akx0kXNTat5nKPH+Q2GLJ3a
	 4veK57NqIAs1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1532CD8CA4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 06:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178089987371.32288.16653738571863134191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b3503406421ac7359cd19a6755709d526010fa7e88f953e0864080a1bff3d2
Date: Mon, 08 Jun 2026 06:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780899873
