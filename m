Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC2022D785
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791602434; cv=none; b=gZh8FgRkMtl18jG5tCPAetFoJoHhS4/h8bd2p4BkLSSqtpob/Mvy0d2ZI/WIBEuwMqQanzkQXMJ+trs3wiHXasYbQ+7YOBJ561TQcyR7QqO1HAnZvSfvcVPobIi34EBvNggCtnCaNSJ3p1Rt6m1u/plRCO9HUUz2wMHUAlsf6Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791602434; c=relaxed/simple;
	bh=9NJnwTf7o78fOoo/vmhdbLTUB2JCx1Fr/31DqvI0pDM=;
	h=To:Subject:From:Message-Id:Date; b=lb4bQ22k4kGO1SkEQquyit37IxCPnqTuueXiTVs0fOL2ttebEjwfFsz1RAw4Adx6qLO9pNdIjoJ5Y23vfY4Nfq1q0nrDNHAR5NeaSk9mj4s5IQjoDc028JYM2HbXZFjQUVSoAbYVs8A3khQQcLq8WYzEgDPfLqquLpsRVTUMjDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ff/uKXQR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ff/uKXQR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCFAC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791602433;
	bh=9NJnwTf7o78fOoo/vmhdbLTUB2JCx1Fr/31DqvI0pDM=;
	h=To:Subject:From:Date:From;
	b=Ff/uKXQRIt8Rng7dBjD0zFMgG0clSUvX6Ru53IR+0XzTopbqdUf4PAectvZZNuOYs
	 9WLmbEPXPG8ay/P15WJasS842+K6W/4N+6SbnAjIIU5nlE9gTG7SB/up6TMJfIm1pI
	 men9covUBxGh1TLegAXa1C58gOtpe0MOGy/VrFdFLBJB7+OD/Avh3ozHzxE7BJ/sdC
	 R8kBe6dQUY8SmJfoirvtuycOmkeKBVqOqcxYtzF/2goa6rTix8TtR+QYTBUwADsoqz
	 mSNFUlFBtnJzVgS0BUB1xbRZK39Y0qYrn3ypE8Vb9iCJWUnCQqSLaWlYnL1DxfZXk3
	 guo1mPoE2XGuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD214CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179160243369.22860.16653087300095647758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a318f6d33c5dfe5497d257a51eed0a780a84651d52687819fae3032f0e1f0ff
Date: Sat, 10 Oct 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791602433
