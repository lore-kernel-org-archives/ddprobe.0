Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A02135A53
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752800994; cv=none; b=bjNcUafICG5M/YdWChbV6BIhMRzic3oihvWDJGE4a2dtcCGmFjGc8zrZ23ia6y0rMLIlH9ylD2xYfnSjeIHdiLoXjtd3PRV0+3p8QXAf3Bz6aUmTkGqRsKJ5ltNS9hj2tvLbnvVZXdm48BN0EwVUwr8OE1RidsHg36YTeo4+kfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752800994; c=relaxed/simple;
	bh=EQAOKILTkaogMX00jL1W+9hC5eDpb0kYSJ88+YBO8s4=;
	h=To:Subject:From:Message-Id:Date; b=UsUkCtFItv0vLQ+LQFJGet3rFpDyAIuLmhE4s1DnpXKcg9AzeBF8zUmVLf0ilzJ/GU6kkE2nNRj4WR+Di2inSrvGrtva+OmFywb9IYEhH4uQnb8QKUK+67hGc5GfUSHy6YetLE6yycXwLWMt5ezPGPPyi1C76eFrtx98GqUMeCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTV37/nJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTV37/nJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA48C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752800993;
	bh=EQAOKILTkaogMX00jL1W+9hC5eDpb0kYSJ88+YBO8s4=;
	h=To:Subject:From:Date:From;
	b=LTV37/nJMO/7UT3hThmQnn8oWuh4YOwFfvsDqVQ6Q9H+j+r7J2mmkTozLJEYubTiq
	 NaPaBoryOFuV3rVT38+f+NEo6WeXH67rczXzGEdV/xuSucxwoKRf5EEOHQ76zKAkD7
	 lbEut2ejx8A9e1xAgh2ASnPfTcxI4lQXIrfeZgPa8wY1LhJijKlzojtwJMgvjPe+J7
	 3azSi2AaM4ZRccw+fA7fdiawTbmqZiKla22sukWbshsLomgBrZgoCh2XiFXKY25TKT
	 ulBeVIWUMRzWelG4Dt6kaeZBo6GkW/IXY9o6SnUX3MNkXWSv33Dr+LsI5rkkL0xzCj
	 Pq0+WzzPt2NvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9956FC83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175280099359.29568.16749125193130817988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca84b8dc4e3fa3fbdc2232d0ecf75170c5cfb13d34b641d3b2dc8176e2c247fd
Date: Fri, 18 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752800993
