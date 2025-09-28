Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126D41DE3CB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759081794; cv=none; b=ip18j1XHxV/QKQ0ssJiwcDvErt43jolrl9QO6rVc30HeUQYSPY52VPa4TUNocOhtX+Q6xKTch9Gf5dKMkk5eb8azmVounoLFZ4sSrzVr5Wyt86z5NE7Pu1ue93aBMMsd8kLtvuyUejzA+MOll3kN34LIXGEtCAMWA/axAfT8x7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759081794; c=relaxed/simple;
	bh=/U3b82RHHYI+CdB/VfQNK+W4LVcl4LB0euAU8hCjl6A=;
	h=To:Subject:From:Message-Id:Date; b=F4We4s8wUJC1IxzHdKleI4ll9uW+65PWxk3S2/eUgd+gmBs1Pd1nbW2H0/31LeVYhEBClW4OLh+IMhfk7w07r8jcEdX2VV/oyXPNP/adRBCvH7sFju1/t5x8pjXeulUS+sfQRY3IIGCS+GRMwyhDWpEBcGsByOHk3jfFotb4MIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwMnvy4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwMnvy4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFA8C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759081793;
	bh=/U3b82RHHYI+CdB/VfQNK+W4LVcl4LB0euAU8hCjl6A=;
	h=To:Subject:From:Date:From;
	b=TwMnvy4bNoV4GJih82B4/Exdg3IZONbpuyd+HjrdFeBYFjwJk3vqpuBlCOPJt3OUq
	 OlAh6CHL3A1kSgEZmyk6LUr36rSFgGfY8gv4V++drk6Ji+gNsxieBDmL3/Qm8U8uMg
	 qvivU1dCjjK+RbR6dxPuu3FMZq1eC78u5C9BBQok8ztQc7PbMpaPupjjbaDRUpwDrn
	 tsiuBNhnPyDaAIzMQ/O0nd07eJV+j7vFryo6rJkqavYnu2oqASgoYlsClATPVD9IqJ
	 PSdejH2OAwKQAwSiJicueW8IL5bKPSfOogAJeLdMahUdVeALZp69S1w6Jm53pJNCsx
	 3CvSlliACbF5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F85ACAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175908179357.17763.6729359015093755358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb790238929fcd012035102f88444b3d8dcb892736ce9fe6a236b0d117a2d07f
Date: Sun, 28 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759081793
