Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D0F191F92
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753105194; cv=none; b=TqljYheFaa65rPRp6Pt1eJSKVvP4ahjNfo7AZj+dwAf68YhS2oREuzgOJ6TpGaoC4+YslZO8TWsXPJBB0om+H6bhvdeyl4eXEtXuSboXiamcZ1vrXH/P8VeKSLQE0lFyF3+d2gw89SE+CrrQvcm9guQ6VjuFSjH1n1GGwSeogpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753105194; c=relaxed/simple;
	bh=tL8SgndA/dtSmulBYdZ+Y/jsydowVI5H2pYPygP1UpY=;
	h=To:Subject:From:Message-Id:Date; b=TuenPz44my20uKm9z7xLagTmi4plcCL5AcUALweSSb+N9ATxnexfCmZW/S+AtaI+1Se8kMMgXgo+ybskV+Rngi+WFAj8qYtRpBbuCSlFQaHmPJseahKiAW+TWjyU4p9icqAHuw7LLdOuAq+TxS8SsA1zDyuRHkatnWhNZXwmFrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvi7ob4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvi7ob4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF55C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753105193;
	bh=tL8SgndA/dtSmulBYdZ+Y/jsydowVI5H2pYPygP1UpY=;
	h=To:Subject:From:Date:From;
	b=bvi7ob4veZIVvjCVGwAVJ6bwB8v+hNJWThQeXsIm1fuRmv8nsJALonZxSW0AGqt+v
	 2pAkDd9GOcpzSfNWdnjdkVfTYoXMHl6cmDnPo68efh273Pv5HWxEgtBXsZxrd+DeuU
	 hq0MPu+L57QU2h3bUXNH7R+dYgDrObO8CApuXKHT0fLamol3ugyOjrJwYx6QzpHy58
	 O7q7pPnUNq4vBTLjS7sehC5IrUQfx9bAltFK4yQAsqeHs6LZcegXCGzBMCKK/70F+5
	 +CJzUNXZLnuisOvEJD2hslEczvk4K4bpBxafb0QuM4ikImKLMnmLUzRnbaBZKDQ3i1
	 /U9/1xn2sQ2lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE9DC83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175310519358.1886.15256612209551992436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 221024322df6d41aa93f94e3516ad9177c765d9f85096ec2d533be5084d3de2c
Date: Mon, 21 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753105193
