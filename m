Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CCB1CF8B
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724302554; cv=none; b=A0hBk0cMZ2CwxTyoBAKFNoxR2RmPVif90EIQlzGuNF9eGfhaIceIvf/mSlJbauBYhykyJ0Hgj/wMLDXQyGTdbNHn0Vfuy9g/nCic+SlJnShA9nB3IYzIPAEG8U6OZh0WbiUtoHG0Z46ExEy3ZkJ57YJPKv0+hmPLeILaLuo17Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724302554; c=relaxed/simple;
	bh=N2WAPy9u6PXt5rhE88ynVPmlStCzNRymdJ85bQwkebo=;
	h=To:Subject:From:Message-Id:Date; b=bOF4C1HOjFInL2sf7nyEG+E3Cfau7ZbFwh8tnAl6IQ1Cly3UGCD/5DDI5GSEOze+h4vsDW6kfMZ9t+0O19M+gbmDvX2PEjU2q2AzFmt9rU0JN0+14XQGW1qWO8sMzYt3ZT/6CKTkozpz8j5pm5Ho/l4/ItWkTFrbXHn+l9TGEv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GhmpQS2E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GhmpQS2E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6CFC4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724302553;
	bh=N2WAPy9u6PXt5rhE88ynVPmlStCzNRymdJ85bQwkebo=;
	h=To:Subject:From:Date:From;
	b=GhmpQS2EGdrJFPZVVfZVdzSTKDwqub2zfQKCV0cVnroIyxtuQOxKzUXgmwcqLiI3J
	 7/8i+Tni3pqcQKh/TvRFPWTCQepOkh3smYDGl361v+9cbOme0Nba2/TTpEiduhVPsM
	 aaBx1Dp07xdC4CHgKidw/v8kBWXvbrZZc5JRpQWB5WuDIg8ItR+gOnZolhNs+OAX2K
	 SI+BGoyk990JFudBNCqhaYTxKxg8HjAP4R3rxY/L+mkY/9FX2cJ1jsgMIx9ZnMKuTO
	 rBebQNBx0a7enBzXhRKPOXGqr9+H/4XwmAantF5xvRPL75XYWoERWVs8SXotA94Er8
	 mYkuhqaLmr5fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A307EC3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172430255359.7029.11599479680771874542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42228770170a9d02b0627596b764737a7f69d4c7a98c99fd113431656ba1ad8a
Date: Thu, 22 Aug 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724302553
