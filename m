Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C8D11CA0
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731260154; cv=none; b=XXWVBT/Rp8WsFJGEeEqFGXnBY2Et2rNKwq4LemSjgeZR9g103tx1pySqC4iVQd6wn+DiZDGFJYzlMWchsrv124zLNKS/UtjiIn9K6f4iDAd6UAgRtpJ/iCHyX2oOCHISC/rzkAWmMpsrJJLtXHRy8nmvA5n02X0S3XgC2UU6XXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731260154; c=relaxed/simple;
	bh=UMGM+xG7a7ojjAEuq/4rOcGOhlIZxsgvgzx0yqXBB8o=;
	h=To:Subject:From:Message-Id:Date; b=BRDBmjp7qeQCKt1OWFrhDjMcW0GVb0WJ2z8Qjnun22uyBR6hDXUfN3b+vjC2j1zaC65sS1y4uovOsds9gp9b9oG6aAfa5tsE/3eDXUs2PtDWje6l10Ox9sthNBHuzzaK9wq1FXtglFGSnJUQcHuDY0teiZ9IQTzwY4L2q+lwnaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOVWoRyM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOVWoRyM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5287C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731260153;
	bh=UMGM+xG7a7ojjAEuq/4rOcGOhlIZxsgvgzx0yqXBB8o=;
	h=To:Subject:From:Date:From;
	b=cOVWoRyM0M8Zo/2di6pVE/wQ3E158gGoUMiTC8I8Vm5Ogq86XsnhSC31jsr/Hy9M9
	 jthp2i7rKFE+prJAXG8kvI+bxwU2uablcCgJarfyBNoKgeLfzNcOs7iA81UAegbzrw
	 7nGcN8JqZJIZn3JwEx1Dp11ZkGo7NeXrYlCTKVSEbNLQJuXhpdWTw3yjxPkj6t77LB
	 K08axkFV59ltiuZmDdEK5hvDI85d0aPoO6TRSEQKlAHvuUtOlqPBEJzi8QCeGFi1QG
	 pWIv8HuBQ2EqKByZYYkgO2p3THEOJ3JJPywRV8N3kdvUtYgOLQGeHNSsN0VNnsADpA
	 gaj7N0CnFraUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91711D12D4C
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173126015358.23123.11169934631561839927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d5eff6eacde5fc626c1078fb0e72f54021589a42fde4022de1ade41359c4ae0
Date: Sun, 10 Nov 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731260153
