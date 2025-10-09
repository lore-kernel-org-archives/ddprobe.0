Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2131A523A
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760013594; cv=none; b=TtfD5o1tlxv60dXTATVIdA7wXPm3Uc/yqWg5Vk5S0npQgW3PnEc99rkXpIN0xg61mfqjJv6lqGsnr9IQqPglzmHhSyj356tACxKvbSCRGkgWrHAN6/OPFMWfLaj8bMZwF7D370zGaqzLi5lMjUyRHsb1vdPxaR/d0kF/mo/AG1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760013594; c=relaxed/simple;
	bh=jVHWV0vg+3oVwM4qFQEbBpD82wD4YH/0rOI2co9RB0s=;
	h=To:Subject:From:Message-Id:Date; b=hYgvwiWUREiJLIJmkXKwGV47Kz0amjlddc9czWlqMOA/NK4X36DuapmaMzi+E0aKC8eRl6bheU64WTAVOl+qbmVcMVXxiGOx3bH9fY+j8dFOwJDNRKI52rtn+nef/z4MWWuruHVmbWnB806XJ0SGc8jg5MkEoDP2rzpr7Wcq9jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSaT+RZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSaT+RZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44B0C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760013593;
	bh=jVHWV0vg+3oVwM4qFQEbBpD82wD4YH/0rOI2co9RB0s=;
	h=To:Subject:From:Date:From;
	b=tSaT+RZRmIn7o0144iqWNlMt5r96c05qY5nDq+vBTwdxU6HecfEMgYf1i+JIPED7o
	 +kmg78St8NRvWVhC8NWoDsiYY+gKjN8hE41MpFlBF0AlWBsKifnJ+pA6d/nPhQpFcj
	 5WmgcFoNUBtmFb281ZWwbeMrUcFKmMv4FqQi7MYvX5/zmINmwxliMcbMj3aO4XzHyx
	 DBmIVIsjeD7oCTbzMy8QbSxNslwIV0v+64I84tj1fRfe5XU5Zew4QpZdNC44lR2QUa
	 CcXn6XIxpPgFSAjHzzL30zTfTEqNgFYYNX1nDraltq7WHqoEs5ZUM7NAhjdLdjw95b
	 rf3KtRN2Edg/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F52CCD185
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176001359359.19272.7659971925650760761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b13248412e602b4e1b3658190ba6da9c7674d661f009693249d51b62dd866c5
Date: Thu, 09 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760013593
