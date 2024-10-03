Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2A31FB4
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727923554; cv=none; b=fVYWRwz63bPsyLaijscAo1WAo5yz/JciV6aNKCHCJLKkUslzjqTj8h/Wbf/UlieL9Ba9k0G1WiWxkwut3npcV3+rI5u1/HL85EEzdnE5hjj4NeVDFWgja4nWTdc42tBjmO6pYQbzbQykP8uGAqUVyCN46PRDivea92Mn72iP3/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727923554; c=relaxed/simple;
	bh=HjwEG0F5wnsjgoTbK1vpCRIksc3F3+wpNwdl8+7M9GI=;
	h=To:Subject:From:Message-Id:Date; b=nXi3BJqtXK/qqDPDAPAQNQMDKHmbvnDj+XXSqGmE51pn+TeHS4FkakDfGDUSMZFUK/h3epF/I7e106IHnroST7zQVCBLBVY++bobqw0yN++U6KcgeHAskDoZhGYDjtWRNaDIywBqGWsCDZA6u1Bqv/yWEhUkCljd1X+FYkAvCSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RcNAR0dk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RcNAR0dk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B715CC4CEC2
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727923553;
	bh=HjwEG0F5wnsjgoTbK1vpCRIksc3F3+wpNwdl8+7M9GI=;
	h=To:Subject:From:Date:From;
	b=RcNAR0dkLc4BVhY0CpQ6PKSTW+qoAvWbv62HLEgPP6i/SvjVoZxzWZEWP4epscS+b
	 WGyxEB2NYynwPeTElFaTcAqmlgXGZFfHNvn677hP1JnmDrqalgmnVxZIshudEPNmip
	 PIoun0cc4XJcg0yjhN300UZKHAfScG87kuapou2/zL5gnUy4MJSmYyRH3nXotk8mxu
	 CEkGrh0eX1hgELJ8nmdc500hdpkID9Rbma2M5msk5xqPzq5YuCkbmrtQH2TRcZyLsX
	 XA7LNSC9w7voRKvqB29SQJclATm4rbVV0Sz7P3ztXHt/8q6SUlNFwVZnPBrhLkogOW
	 jJf7X9m+Y5RVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2820CF8552
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172792355361.7703.10337024328126437213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47571d5e78ce73f90eadb087f0c69f4921cd717c744d98014638dd9563f3bab0
Date: Thu, 03 Oct 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727923553
