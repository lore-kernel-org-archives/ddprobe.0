Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC923112D9
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757596793; cv=none; b=lwwThO2uzeJ2AIkFqiKv5HOwXM245DCrMFkpLIkWR3AuMHXsAlVMifgImWDLokS/P/1u3vOOIdtuuCcWc973qOJQ9SmUvLIA/TCip7gwNwnNltDktuOp0cczd86BpibMDdtXM4lcuKsDmBmfo5Z4AiFOQSYVqJGqhkJKoRsb9ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757596793; c=relaxed/simple;
	bh=Zw3G8FDf5xnGuploFg2ziB+vKlBQj02s2QLXv5zSvLk=;
	h=To:Subject:From:Message-Id:Date; b=GIdoFyk0/pkaaCEk5FCsI4WlxdBQ+8Ir4VE7JP84f2BUc8ktlGOLusGnRUjYnkGXbp0s9FLDdSHXPdQaSZ2cCWhXzODp9A88NfDiB6AON0qwXO8crI9glUKVj5JMhVdgtaoswBsIX6K/90h9GBSLM8rr/nL1PhRDOX3Y+uDq+ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKJXcEBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKJXcEBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F79FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757596793;
	bh=Zw3G8FDf5xnGuploFg2ziB+vKlBQj02s2QLXv5zSvLk=;
	h=To:Subject:From:Date:From;
	b=SKJXcEBESt2gVI9hb3X0I01CrsNI9etI09qfboGfHcuGn6OdYcKqEkHQQj5ojB7TE
	 2wWy6XELBXQ9hnDf/86vPFSN3zM/s32EmCMhup4P3cVB71WBh1QJUkkjyYurIuGlYd
	 cX3vvxb0OIiae8y+UV3HtAB+Q3odK41XaArcnLMdvTDp5vkKMSTb2QoFeGN6c1wa/h
	 3sdWMa/+RG4K5ze0bQa+7KTl99zS9GkXFpWVQbtF/8e86pSQsxR/kA/9Tu7As8tUZ2
	 q0Zr5xkBe63ADacQTJI9SPlsOw/zX02fdkEJoaVqtMAT5f1GsWULn9HeSPgnvesumH
	 QeLV6j2LbyW9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DC4CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175759679357.31495.11633154677562222161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115b529b1e9d7eea35bca7a03d5bbf146a81cffe96146858f30accc4235350f7
Date: Thu, 11 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757596793
