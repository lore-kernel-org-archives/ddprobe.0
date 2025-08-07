Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3194F1D516F
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754539194; cv=none; b=UKOXXGcBXePNVqHFo0MfCriHemfXxyzg47G8PKX05+zK2m5tnNnw+rwqjfYuKWZAjwxG+ahvSWK57ex9lM6eW/jRNGcNoxHU4qG6cYkRyQaq9UmGCs+kf3qNfWVNbdUcFRv9yeFyJ9PsDhXlUdJzYafX3h+GJITNp8U9d9iYbcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754539194; c=relaxed/simple;
	bh=iKDxIdvY3caUydnssTgODPtnECZY4uprmrWnj9gSPI8=;
	h=To:Subject:From:Message-Id:Date; b=LanDaE2QnoZLit1xGFMMqVOlzY12Hy5ngbztaHyqa79gRV7hMsZkHetJDkV4ieL9Ep+ue9okVAB+NYIrcKN/q/w4BWiu8dUd9WUqmx7ZE512rb+5U9coC/C8YjMJj6sX0JG1useOtfAYNtDWJqaAqbC37tn7uvkzqUo6LC3caU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nwr9HJ4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nwr9HJ4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A23C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754539193;
	bh=iKDxIdvY3caUydnssTgODPtnECZY4uprmrWnj9gSPI8=;
	h=To:Subject:From:Date:From;
	b=Nwr9HJ4Xs+7ZfIjbkwDH1hSShKIbbSaP19Pg7v8qbtitWMye8t8Lxkj8sCIyGan9q
	 dxQ0StiEbrcNntY1xcgLBUNvBzcJbyEULMpsun1KkAQolhihYJsVT2R27a0i5V0rYI
	 zugQMFgQ8Q5BAMgMk0M0x+pRMLyaVyII3FtWA0U4xd3LJzEboyrPh1/2R0/3LjOn5G
	 A2yhrjIaq8faZCU0Ff8BLY3Um1/CyrlX0kvZz6m4nrQ5jryS2KYfRZV8GdA6J6/WXD
	 c/4JBEfRiOlPPnl0eGouzJETGtMHUOiG2fBCqV/DRf1e8EtsbGK14QxW2gTzQFB7eU
	 XjmxD16KxNNng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949B1C87FD2
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175453919357.21096.493118002180580194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ccd727272e5dab33d259f9b2406f6b183a128645b3188ed200d74425e75588
Date: Thu, 07 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754539193
