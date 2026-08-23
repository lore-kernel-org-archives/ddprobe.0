Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A1925782D
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787490034; cv=none; b=GWal/iN1eSoeW7OwkercN998D5jqOddqqaVlZdrifqSpV7D9HlzS1lD70EndvA8EbaogHRECvkWzbilqYvot0758wRwdupDjslrZTsI74WpP7KCKoTJVzKyPOlC57JYFq3JMl4AaOMt6Ly4kPrTZDsJL3260t5d/VoP4CLMrBZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787490034; c=relaxed/simple;
	bh=sFX0RK3WY8OSsz1Bf+Q6yVdfFV7nj+thCKY8ypXDgdc=;
	h=To:Subject:From:Message-Id:Date; b=oxfTFvOw4HVsrr5Jjt7xASWSYWRdI7giEGff4xjSCmNR32bVjdpuiMOMels0d+vlFP75aAfX5wr17m5GjZZELWALDp+Iu+PZfOp9bisGdaUH1dwSDerWzvfAVNutD1H+4xhrAwVdKgRTZyPLAUcHJS16eudpfHntW0Gwg3iJP0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZV56eZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZV56eZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8E5C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787490033;
	bh=sFX0RK3WY8OSsz1Bf+Q6yVdfFV7nj+thCKY8ypXDgdc=;
	h=To:Subject:From:Date:From;
	b=QZV56eZ/8YvplmnLqJvMYoYnnMJ7/iHvjWYVJLS+xmVyoDCUBvWqAxUAzFZzgI+/c
	 OAB99SoAXMgt/xYgo6glhS8PHtsaU+avFTULXThWlwxz5vML3kpvG+1Xh3JOTcu0N4
	 xUWjYGO4rLH/ictDFeEa4RAQWg+oz8BeCu8+iiHgTsPTK3XWF+iXF0F6Q1MO7u55+4
	 spp9STrVhG5mWLNd9vTdzFwqSNTiyXN9wGqpFv90ClJrnEsayLPEo5BAdxVUyED81a
	 hLJKmKPvnRKldx0LSFeNMnnFpOePCNBSaflxhPoLFo0fcwvff2nJ+mCzAbKQb3GEEu
	 2QWUV+7WP7EmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC181C5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178749003369.5036.10036098551770558755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b481141b10a26ebfb48cff082babd45aecc0235972e0af905ae6f92a09621a4
Date: Sun, 23 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787490033
