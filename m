Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3283D13A865
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733691954; cv=none; b=UDe3UqJC0zpBRPIKKrcKCXgovCpkSnmyjrNvCElbqUrHqxP8IqdsKipE5k5R0BfbXRmCqRmduieQN0LCZVGA2dznCM4ow4WGy1oSJddZd7omhSpaW2lbWHOXokKKxcKCNbNBkZLIikm7awc4uyMmybB1/BQO6X6l9K3Srnuxu5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733691954; c=relaxed/simple;
	bh=12pRv6SLTrIR/FpJ4lDZwwI21rU7SFqQAwogVfUoABM=;
	h=To:Subject:From:Message-Id:Date; b=VVeI5EwNapwYYWu0HWF0/sRF8MozB21cd/qXA4w6FIMgvCtDJEmOIkkO51G5c4UFNGi5Zluia8uBW27wT0CM1CY5dKWT83JxXE0D4QS5X/kR2ojZ82d0aUxEWFY9X+YFcOE+jz1lveIeHP1utxpIopR2V8mjRssW7xMrbxjXegs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncHKpyYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncHKpyYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02C8C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733691953;
	bh=12pRv6SLTrIR/FpJ4lDZwwI21rU7SFqQAwogVfUoABM=;
	h=To:Subject:From:Date:From;
	b=ncHKpyYypGkKIvoDNaUyWMpB30dgmAQb6iBBzHIeS0ex9VAuWrq7Uq0IAPQFE3wA1
	 lKhQeu5DwhAHpBSoTsIBq/988ONyhEqeq4mleMbH45Ro56vt8CZDQTJnyEv2Qt/tjE
	 q1ZY9XwRtrMMC8wutMLqChZWAFibg7zQj51NNIVQV8ch8luMhOyBG63bwxx33y1quQ
	 zbgf1vansIadgLYcdIEwLDM89Dth8vlQMqHQ7roHejTdt70Yz1XaX3IEyffseBzbvA
	 0OiRJImPk9TSaryNclIQ38LMOB0U+J3AXvWDSYbqBtL7O6Xq+wuOiza1DlElLxeqOZ
	 uf8tmGjEzxHlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA5EE77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173369195361.19566.4105525868672974422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80c24cf672478550752f5f0829f8cf1a1ee9c3ea75426f0186bb5d332c6874ea
Date: Sun, 08 Dec 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733691953
