Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559AB146A67
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 07:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715584343; cv=none; b=t0emN5mE90mBQ5g2/1i3XJH/bdZNFI30R4n225uHoLS8etqK+AXrrNPjIByPbqWsvQJQTE1bJh5OCvQc3V5858xPf2XTsLaa4wiRRYHr4lHkWgID3e1zwBXuxBTWgWebDwD7evdoDj8I2I3GtH4vz7L/iXXLzNSOMEPtUDpLDis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715584343; c=relaxed/simple;
	bh=8TFyqPCgSDtoTr7KRqMPsLmoAFczYKv7ogK9BaOO6/4=;
	h=To:Subject:From:Message-Id:Date; b=D6OJwDPLlFjNTAdDTP/eroF/W4IlcbVHgm1xzWGoVJwMIKznUGl7I8Zo4P8GiLXHSEqrsCNxbJl5RNk/y0e6qPMltE0hgrmJ3AY8myXiLbFIOW2kbh4vrErEz6thrsEDI7uknbI0YSX6lHllMAqku3KTKtECRwrw0hI/4NAn5eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yx/W/cGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yx/W/cGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7223C2BD11
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 07:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715584342;
	bh=8TFyqPCgSDtoTr7KRqMPsLmoAFczYKv7ogK9BaOO6/4=;
	h=To:Subject:From:Date:From;
	b=Yx/W/cGVlwfENq1gFZF5MwLhmO/1b3Scm4FEu5/bRU2K6JYE355VNTz8lLpRd/v7P
	 ZDKo76yWQUAZ6lX18U+tYKqpnYWGBom7LZSeyOj623qvZZcMSsryzzu4N2WPCTc6HP
	 JRlZIHT4rj98fQTtZ5n6yifbTHBwt23uf5q47NZmbitoE/N9+by2N1KvjIJsy0QTXv
	 RGH8bXqe8RdoWIP5HDEbdrg6BWHLb0B82n/qCv5bo+dk13R5JVPFxhfSlecj8ew1Tj
	 hR8vGyAPZla1uSVT7Z33cy9c3EJWLaUsIF0mbYrRbIpWjREJ7RWQDAf7qC6+TLYY1q
	 Ufr4+ECs5A8qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C871CC25B5F
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 07:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171558434281.14381.12950648725624874228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348e7a41b9f8b3fa61299840830c2fa6eb6847e3e27b5aa661de89e227500c2a
Date: Mon, 13 May 2024 07:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715584342
