Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3007627B4E4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747741794; cv=none; b=lJQCJJcOtIdyQe1YZOlaImy+uzlxYjQHrCWgmZdVq1U9Mts90g7gnCOk5tQonHe1tcZSdpz/0mezY+QX1D+9wRcWFEr1h3glJU/7NGzn81eFMX5E39KQDYJ41a5Yayn0SeUnbh0V/IvZtjHrNPR8g/nbUfLAJZ1yIk0fyNO39l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747741794; c=relaxed/simple;
	bh=WH1JrXob2VaUGn+wO1y9JZQz+NlbutooRg1NC+uPpBc=;
	h=To:Subject:From:Message-Id:Date; b=neJzY+mCZ8uQSqLVqH7HaRN6jWsKmoFcb82wSfltZa8xGIDW4fbk37lkx60D+yoI3GGUAkEC+4TdicELkA/DCNdlxN3z4eAkt9fzdtNCmcSuU/JrkzojMOiH5QrgTXzylJrQPUhLW2WOg2DhtBuLip5UzFS+hevITxf31IBQ6Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4X/XkpQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4X/XkpQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BCAC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747741793;
	bh=WH1JrXob2VaUGn+wO1y9JZQz+NlbutooRg1NC+uPpBc=;
	h=To:Subject:From:Date:From;
	b=C4X/XkpQaaeOGaZO35ipu4jokYSb5jws6VM5sNS9lstIqrqw9nAIf+abmPeNDzm0L
	 4+xrcclD96hrs+z8WXz8WloG2eJjljrVmNBoy+rWp9WYvliIzn0LNwgheT4Z/qnw6k
	 t+Up9pLnMOCRwN7IyXypws3ORu7sEoSfiD67YSDdn8Lc6CPNcDMs3CHxl9uG71JTaI
	 4v3TWjG7tQlp/jdI74olaGAn7ylSa55NIe7TPJm53Mu3JZW0kXiZPCC1yHC00CPDx9
	 ueLcUjjhRFnHdUfU3NLTY49UVwlhx274qyyzeb9fB/PWfXGBQaRTWeZTFqI9R+ezaI
	 q6ONuaMUoUK/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9231EC3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174774179358.16303.8281886769159320628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9d2233b4da82525a2d8dbbab97e077b87c8ccda244cbbdf7b63b3cb767733a1
Date: Tue, 20 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747741793
