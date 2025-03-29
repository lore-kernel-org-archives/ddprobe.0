Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF6C4437C
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743224994; cv=none; b=K+Nzm219KNort4bn6BXgy7l00JNnkYAQfrwEbrOV8K92N/jGxhiDYNK5hIMuoCQqMWv1Ar3ojdq/e+KSDttlNh96ASTzMcNWyne1BBD8jdrfVankbjEcNAA1AM2BdT0PZPSjfpDjQiE4/aMmhn3w4H3CZXxzGrCWGCU2g5npIX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743224994; c=relaxed/simple;
	bh=OOwKNC5Zf48dQA7d3iTH0Nifh6dZEukZ9iHZNsXCZTw=;
	h=To:Subject:From:Message-Id:Date; b=i6pdw9ReQJOzaI1fsP6W9ovwSmFeNbrSYIPe4q4Bz1WjA+qit9ounFpEZEatrcZZWx84TwYkrm9+o8KlHyxNb7RvcNWRacyC0wmsUGNsQ8LU/M/LicRB2F02VhaDCVvaNmnV95Y7ARkNCJpaq7pA6zn2tDlrnesuZ3vG10kD1Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Um/Ie8vc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Um/Ie8vc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE13C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743224993;
	bh=OOwKNC5Zf48dQA7d3iTH0Nifh6dZEukZ9iHZNsXCZTw=;
	h=To:Subject:From:Date:From;
	b=Um/Ie8vcsR+drkNPO6XWz/vrD1id1CMt1AT3sTTdIKomCMMHy/ABwFaj7TnK9sfca
	 k43vLMpXpR7kYWseqYc9sZHdAOC3DJYz2uCrc9OnmDWJePwXa0/cVYCZSeBaiahMTd
	 Me50lwPD6y3AuT/4+89V159aoLydKts5QkihJ64LkGFYgO4KaPW3RXUrJO8iLV601j
	 sZDbyEUCGbTpAEl6Lmay6DC/BMZ2+XO3+eiqJlm3fYJlqM8XE2+bT4/Ay810QZYsxh
	 4FPnLTWkGkneKRY31FoSnZ3P6qgFgsFnSYkC/itqBtftWd84wiudzJ1DnZP2l7tDJ6
	 dT8ksqdBuplXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB80EC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174322499368.15695.438937435679949787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05aa7330ac2a9794995b65b907f3d24eeffa520ca0343c1f301a1c760c729d12
Date: Sat, 29 Mar 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743224993
