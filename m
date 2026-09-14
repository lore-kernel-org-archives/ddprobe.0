Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F0D40B0FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789374634; cv=none; b=TeSM3ILzdEXS+nsbr4rp8YvfYZQ7UMQv4t7s1qPIjmwTrtDW4UWrXZ8o2SqplMxa/36Zkja8a3TPH21ttWVY2COSJjCyGrYEbN7MDMsbcL93qOjRIkEIw3CKl+A/pJXp+r4/tE0K/Cbgh5Nm9xTPqszEFYsKbtdcwXMgqS/t+bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789374634; c=relaxed/simple;
	bh=oTIGeDyuyhq7M50Ty0Ta7P5/J5QXm9irLvt8cUxK7nc=;
	h=To:Subject:From:Message-Id:Date; b=DvclXo2j7WzKykXbvLI6rG8eOQkrotX/9DZ6vVXEqmFyM+bHVeGvhpdsVPI2XmDHMt+RUdkZUNssRVjz88m4H0kpp26K57YKvJ8DhQZp2MyzuLd3uQ3zb4rEU+jtVPshjAPjarKuIkIh7tdRQJYEdnECU6xa2ttljCtKfFFb7L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cfh9Jr3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cfh9Jr3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CFDC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789374633;
	bh=oTIGeDyuyhq7M50Ty0Ta7P5/J5QXm9irLvt8cUxK7nc=;
	h=To:Subject:From:Date:From;
	b=Cfh9Jr3+oUXkSBCx7BX7b1pvTT8Y8JTdKJQbx+fOxEKbO5m8zQzs77X63meRGhF8L
	 Vh9wTNs04oLG3UARCWMuWJ3fM5abvnRzKELp/Tq52t1sy8Q41wFe/x0EjnMty16gug
	 yC18WLRtJnHKLD2taCEtjgf5mtaMF7lxPt6Z4HUUxxEWop1WPCPrW28KtrA/NV058Z
	 1DkcH0yuxGuplt6XlHEsQf5IopelwWzR92QR2sVw4L4/NnB4GMT+asdeveAHoPbd1s
	 axoipL6VH7bpvi6xTWjx4wFyUwuCOIZNI0XZ+84UVCioQRZDtEk1nVo8kB2PTlt+hR
	 hCpJVgGbUK1dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE038C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178937463370.4916.6842467190611176065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ac2227343fd79d503055a139e7a28f46c61a1d79dc7254b27909bfd8257a32b
Date: Mon, 14 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789374633
