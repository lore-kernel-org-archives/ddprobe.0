Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4439F305684
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 07:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781250394; cv=none; b=CpSqIgEKMw2iqbre4procCMJS6lDBAIa+lr2FuA0HBDare/JBFjD2i9HBAHpeqqgyogASc1JucmsRB67P1xdxMrjg7AQ3LRp2Q6PunWXBq+SWW2Iao9obCZjpHknEMXOxogWW/llkuSyuQTK+YmThrRZ0zJdxTh4IcdS+/J0NWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781250394; c=relaxed/simple;
	bh=vplFL3MUE5wz5OJXQuZklEEKnOBEI2rZ8CfKhol5IfA=;
	h=To:Subject:From:Message-Id:Date; b=tBBWKgVHFOA/fTGJyAcMhgGtfb1wfMt3qzObq5hdNCVCeHT5BxAUaQ6e6YTx6T80whtrQ+pb0EgexBwfwiGMPLJknV2hNCkwtaiptzGKtNdVVS3plUGG7fyqRp4JSySngkLcT0N1jmnmrv44U3hhPNayLdVWMfjUxib1V9xnJ3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vde+oqL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vde+oqL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0282C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 07:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781250393;
	bh=vplFL3MUE5wz5OJXQuZklEEKnOBEI2rZ8CfKhol5IfA=;
	h=To:Subject:From:Date:From;
	b=Vde+oqL04bZYJlHL9FSfWldBIWTMIFvbugH4CA2cZ3gJT2oc/gnbMV/ZTCXgg7vIp
	 6JF/DnFR6FUiMnnhn1qmS4Nu1vXLj4hWyTskRnnpkrKmcUvT8Y5bkIUcZznEzudWwS
	 GT0TPit+GCQjEm7i2+69nur3wI0Hsc9UcF79xp7DrJAlLBlW93WtvmeZCsbPB5N3Bv
	 x4RYXJ6Y2a70a8bqQAth2Jg2lepUs2JczwGLYVlw65iAjeIfg3MWq/j5HoP84+w1Nq
	 HY2fV1paAzMkI8NEUWWoEabNx30+2rp9e+aDhi2NRHybXJsJolP6GujEyHnYkmxz8r
	 +jm60L7pBHBZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B2FCD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 07:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178125039371.18706.5983069156713643544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8af5122d9864623e1a292579e8f3e6f4b04fa67c40664404fb590e86843859
Date: Fri, 12 Jun 2026 07:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781250393
