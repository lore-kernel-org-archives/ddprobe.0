Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F003E47768
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711986497; cv=none; b=GTHsY9cT5vC1Q01xtJ++kgiV9zn4g2cMdgdNA0rc9VDk6xTK9vxc1rPzJTsnPYv6r1ipMlIiT2f3vfBqiAkaCQTPZtxl5/w9fycSxJkptG4wOKprj7iOzMaagIsLTWvtiiiaR6miq/D3RzmSrQrhaAOTOcc/YjPnNYtwDgsEqYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711986497; c=relaxed/simple;
	bh=A2aYI5P892B/+BQ3gtrOkj2PsOOo1Suvm0Mn1n0ie7Q=;
	h=To:Subject:From:Message-Id:Date; b=E6UdMfveWX0KrNoFX0I3cfVIxWV6LMTTwLnFsWaAGYdpY9E1ChNWFy5pJSHeHYPxV0JG36L115s5tTnoXg1tfx0arRGOH9CBzsIs1sEEymIaT2g8OtLnuZ8lvt30TStrZ+nin0EQG56k3Ry657orGODPDNfBQk/Vgd+knZHHJgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpHwwFY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpHwwFY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78DCEC433C7
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711986496;
	bh=A2aYI5P892B/+BQ3gtrOkj2PsOOo1Suvm0Mn1n0ie7Q=;
	h=To:Subject:From:Date:From;
	b=GpHwwFY+50UEw4hZlHkdhc/0cNbfqhqznIByJxQZSJJLlPy04Lcq32+v+pGMAgP3E
	 QI+jVIyOR3ozdWylQmJyka7jw4UkMz1oB67fQMsh/NbEBucrwAB1LPjIJk5kIqOf81
	 nhu7mzMMWcnT90sz+TiS344Rm8HhHDSz2Xiz+gjLbP1jUMqEJmRZW2/H0X0FYSSPYv
	 YPxjcB/y/bFo/KDL5/lMhhVDeHSDRQO/TABplfZXrXfwKDu4KzOrrxdw/WzqfE0okD
	 uRuAYobR5tURCvNi3/KQVq+HikazzDBus3iz0u49GggvpG6GNmSCgBlS7NYlZWd3en
	 2ihc68qUpgm9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F17CD128D
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171198649639.12927.4390276886116798507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c389cc83d1f53481aff03979b3e951f6416b374a12f2b2680d735b2a4b2b72c
Date: Mon, 01 Apr 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711986496
