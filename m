Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F52F2609EE
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752224994; cv=none; b=SZDBnJOeMh3nl3QRbhwGLb9ou9EdTwUDb93YubgCcQWf8yw/58y0Rq9GxOhpowNj0EefCK46p1DS/kPr/ZcX07Y7W0Tnj6CNV7pDU7ovbsGdiGKfurZVWv+MkYBkrH0IIDswSQqq7aRtRTnr1EPvAjtHDhQGs1CxDV6IqwBgc3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752224994; c=relaxed/simple;
	bh=IzlKpudLn7iijrl+HVnSDXrXiLtas9XelKsL5xLNFmA=;
	h=To:Subject:From:Message-Id:Date; b=HGVYowGOdVAKVuMdA3xqSv/sFnZYBYhNE14jB9rQWbtAQXGq3oY/pFT9K3FRMgauOSFGO6fHmCE4EKAc9uNLEnb9DvIAS/JH899rbrk4Las/EeAvXRX1Osw9uwN18D9CEEvmVtjusaHA2Cse2vDlxskrKMxnCiKxNsgC5/f1uGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsJCi2bh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsJCi2bh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0967C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752224993;
	bh=IzlKpudLn7iijrl+HVnSDXrXiLtas9XelKsL5xLNFmA=;
	h=To:Subject:From:Date:From;
	b=OsJCi2bhNizbukDzjceq82Z7dWauFNuTxEWZf4cdEx/q76x68If/kCNDlvnqL7SL4
	 Mb9ZBpI+OJvz6rBlwXAi6qONk8D5PxIBK3iDDTVJ00prOxWYAqWGG4OVo2JdUBw0KW
	 kZSYniZOvp4G427LndbbI68tnsTPAeihvPO3pDo19fD057C5rUJwYMyIzfuOPaJ6C+
	 904ROwSnfqJnEUI7nT/j4u/Hv6X9JTYyUEjMHbt6hrsZJN4/wa76KKiamYcsOcXZeD
	 b1wEPXc2EGSw1qBk8jJp0YBAqQzy8VwgAumdIsCAyvJn/lOlLWUXsn0W9LnA3UKjcE
	 noByTObEHYT5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF8FC8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175222499357.13317.4236715294874678245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1c1fb050cd10cecc86158c4debf22acc7f5846d0e9f513c2c8c93f148a06c62
Date: Fri, 11 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752224993
