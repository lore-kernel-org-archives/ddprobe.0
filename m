Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2DF30EF63
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789020034; cv=none; b=Rlr/8FngWM8WfOaFTLd+gL89DXEzLavdYnj9arm+O6UMDmCeNXEkBYg+91yNo1bOl+U4QVwweyw7A2uqBSKI1qdhojXsPyTYPnWj6pWevF2wMvTBau6DCCLXr3ptBdQXJOgmh31kktGYoJvV8FJj/so6nukiTjF/rOa7sYoacCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789020034; c=relaxed/simple;
	bh=k016BnX7zFrEy5kPGojgVqDToo4UKnpT4sMUOQyHuRE=;
	h=To:Subject:From:Message-Id:Date; b=MS9nd0TT+S05Q91gEuz/INwl+t3JH6aL75XBS2onk6oWHPdH53H2dVJY2s/dn9J0huj8EMv/gr3d9KgiPvaDIOkFSCUs9NiAYeR4uyGVcKx4zbjcQC2nIThn8BJl2xwrRU91oRtYOXmiatBa4Ip63quN4YswulCLifCyEV5I6Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUoY2NCx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUoY2NCx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D490AC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789020033;
	bh=k016BnX7zFrEy5kPGojgVqDToo4UKnpT4sMUOQyHuRE=;
	h=To:Subject:From:Date:From;
	b=PUoY2NCxm4sy0jEdpuX8NESQOJ+IVCYuMS8icgAbHV6JjrZ6dffRpP2E/EhZZN1VU
	 DTk9aapAbbfiJ/a+sIepfpzTwDx65ENSv45XW4myrrm7zLKrpnZGok4sfDG4NAW7VW
	 Qsaw/Ppsbvt7m0ovMti0OsFFl+lAS0jgH1O7FJPIx0KWqenRMAi/yURz54/3n1uodT
	 j5MeHSj2zN/1Itinc+Wuxtu0okn9GJZqQPckmJmRJDMnrz9etgtA+NaHMbw/KwdJZe
	 7/lwoxZ/1VSjYei2+lWjMB2pbf1tjZngeYbk3B1IsIHLcmyLL3Noy6TiSLo1JygHnA
	 toyoqyMH+xG4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1BEC88E49
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178902003368.28889.6145294102132030721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f536e146d6d20c8c160152f98855ad7fc2a434adcf9c14f4f3a0b738fd1a163
Date: Thu, 10 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789020033
