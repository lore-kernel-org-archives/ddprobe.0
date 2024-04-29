Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478C8177983
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 23:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714432943; cv=none; b=MTzFTbt4YMXTvmEAzOlU/scP2DVgw80PgYO7A/BQ2To5XELLXpHNUYDBkWPKPmDSy26Cwp1hMqXRNvt/FSHhEIYMe2NdqOzTEGQQ35FSX3EshHaBXfBUft506S7AupR/NFhgWzCe12Elq9p9cQaWJYUnVExYzZUmiYMJtIEVZ4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714432943; c=relaxed/simple;
	bh=qNtwTj3klxlV4tnuzlOs2aShCFLMixUOCMtwSayGDcc=;
	h=To:Subject:From:Message-Id:Date; b=YKMnO82lWr60JeOo4eecKsYxiot8wh//WMuIP81zvrcjlOyLCWgZ2BiSp2WadQSfQNGnc7GeQDw2j8Gq/gkzpVXQtNuJqYMX65BqMDxMXZGut1PJV0bzfgxJIRclK/Vs8gmzh5cQ40WaqbRQIayQsY+eS70GGriThcYzZAu/67I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/PDuSMT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/PDuSMT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83B6C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 23:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714432942;
	bh=qNtwTj3klxlV4tnuzlOs2aShCFLMixUOCMtwSayGDcc=;
	h=To:Subject:From:Date:From;
	b=Z/PDuSMTclGYKif3Yv84me6jgO928QMPqp9kWXp5d0DzCSfBWn+vM5MOyml0ovKpx
	 zHn9qLf5GxOSRyvddOFoxHImBGhJUJUIjHbOZOIhoLC4zBjW+giTsmP4TABsM1s+dC
	 7SPlSqxNwuEWWcg2Q70cjFsbI3DYipAYx1L2YYHvEvXglHXY4e56S9eHzFYYZLhMwM
	 iJBOlSfAn2u1EYzGQyxaHr6QFR0FCUomBf+92egFliJt47nPP4j2Eprpc8DVFMJ+CC
	 udTkQzGNepaeIBwaUSA/ftffJ4AiMNx80k9kaFuIUabL5nmaT1g/QUneAO/RcDkD9X
	 zEy45Ni31VlxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8316C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 23:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171443294279.7378.14246714995529388167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4504fd933b07230636f945be16a7f448f6c041857d0cbf3da3bf64bdc698e11f
Date: Mon, 29 Apr 2024 23:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714432942
