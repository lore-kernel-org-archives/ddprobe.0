Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C97BD51C
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721477754; cv=none; b=QoC3NzPy2CtbAM9h9CDBicCx9eOOrwNf0nNjOlr++at0D/2qMyxXaPWdpVQHTvdTNIiOr6FTYdqquYFawD2tPudH7VXd3VPdn+/aWcDO4/HdtytBvlzidWYmr6Y50zXGUKHDTBVIngbeMz2f5BBUIr0UK8v7IQfMmj9ZUnMzB9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721477754; c=relaxed/simple;
	bh=gfF5GG7YuJZv6Hwdr87iyTRPHsBi2BZmTC1fyYTvk6E=;
	h=To:Subject:From:Message-Id:Date; b=dbJNK/Sa16BpIRIAQ8c5buvq2c5GkXLujPOFwci42AicZFp7vfu0gEJe1pUOHzhR8dBv/X8pm5Qi0BYo9JOiwIWfxmseI4ihkRawImq0UIcp2f43+na7weF4VP4SiMBrcGdD3wYWEztPh7bl2jUiIlsgBvv/urO6BIG8LUKrKu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xcv/VvaN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xcv/VvaN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D108EC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721477753;
	bh=gfF5GG7YuJZv6Hwdr87iyTRPHsBi2BZmTC1fyYTvk6E=;
	h=To:Subject:From:Date:From;
	b=Xcv/VvaNAxkSB/E7YuSubFQkUPHrbvVerFjHfjEjC2NTUqs+GJ0WVdbUAy4+3r1zl
	 34POsXW5RDRHgF1bJQwLq8rt4P+Lw4qrmtrflcbvGv1JCbKd9r1Az0wARyuTdagehF
	 iBRiECmMsEN+FzQTb7YPOKiXMcRwC1GTqq/xjV89ySyj4/WGeCAVsqh7Ha/PZPc4eZ
	 NZWRkJFmpjU1oxEN3gNRlmsJIAjtswtsedOBES4HYlXiMtTLV9Q9gO7PyxXshec3p9
	 MYZZWpT0NV83yFLQquIUgmHTS6q3LKE4sX41h1/YE98lHe2Xf0yqlErBhe3iMjunRN
	 Lu024sfHW4OfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B769AC3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172147775367.16292.14894093281470161587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4178bb6f7fd9cba1833f3520d2cb25430ceefe8f59cdcfc6f8df53d96fe3da6e
Date: Sat, 20 Jul 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721477753
