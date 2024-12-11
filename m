Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C031C3F27
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733946954; cv=none; b=Owo1Onw60X8aHVQmHm2YZmayaFLp2c84/+EMldJrVnbrztNjhezx60DfeBra/Vuqb+lswpNoTVX/FDvXLFpDGJ36AsdZ3PelEUGP5e6SP1ifu/xLWpzhQgCO6I4RvzIk7r6cIRnIOMRYSGr72rsLEDd2Q3e4K0+k7AGiHMgZ3iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733946954; c=relaxed/simple;
	bh=XoKTZr5x1vDJHLHl8SUNfDfxQXGNT6VMMVVvEn9Yk8A=;
	h=To:Subject:From:Message-Id:Date; b=uX6K9VI9M/9F8bZG42Er522/Kbo2wauKJPqhpSfhqq0nIyrOsEMWmot6d+Q3CjXeg/Fofq0MxcZE/shLWpg8L/rUJhdG/Pfge4Bui2qGMdl/o417B6g4mByi3DpT9Gz+QnTVOyhGobkGPdAQAg6iyh9szvZrSxsRuN6a0BWszBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQov2FI4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQov2FI4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B934FC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733946953;
	bh=XoKTZr5x1vDJHLHl8SUNfDfxQXGNT6VMMVVvEn9Yk8A=;
	h=To:Subject:From:Date:From;
	b=ZQov2FI4WIjh+B2j0c2ADHh7lXoq7f5if5wzDi6PKtq078ZUeCwUVhXL/YDBDrsZP
	 JZtuZgTBHUTteKRwQsBjlim82PzitwGwIFKzpeeU2roJFPU6qCgpBBxQKkpJV9q7Cp
	 jZN1Exx1vnu99c0cIC0KjPX5m2d3JwNctD5L+jKEADbugdI8LlBv0uv9iybg/aq5sK
	 6mKe8aiJhN6JGrJqZquTh4C2xPt1o34d8Z0w/V3we4O/gN5zow+93l0KXM0YwPwOZ/
	 orGtTqT+0/DTIfiLuyE/jjHZCovJhg2o29sOOwO1WVTC7P/mggPUGYKlkfZI03xCMY
	 k2vUaxlGqt3Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F90EE7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173394695363.24185.6265085094584581361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1e5c9bb535595d202816fd66f5848aa823c3cf2b74c8558e7ad80c52c22e8a3
Date: Wed, 11 Dec 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733946953
