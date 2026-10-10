Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68545359A81
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791665434; cv=none; b=mbgTboxVEh/4QThwpGUOv6S+HhfgEmwObkjnkYQrBRMcQkyKn/zGtES03AamDfn387qS/qrwM1WA+xmAikNiFXW4HZ50sB4L1zD+SUH+Kms8K6iGUx31duqhiZszL8HyS1ssgIvUmQ5u9TPC/K+c5uvCH3JiX30uKqoRlZvteVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791665434; c=relaxed/simple;
	bh=4ilPDPaLl07zxz3FWgxH/tfUPjVM7pJe2RAcP4NyDCo=;
	h=To:Subject:From:Message-Id:Date; b=XlklEJRCnhn4Rd2SIiV6D5gtgt+R1V14fxnGCC0GhFbTRmI0kxOs4ywCprPHGOOQBBvoxhiYhj3PCLaD7eJAg3/c8iUy4HR+gufzxLAg6jEqxsVVEcL9wDo42G7Wkl9UbMR1vpKwml/55rd0CtgVijUAef8g35d5p+JKyba3bA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQr3ugjx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQr3ugjx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F47C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791665433;
	bh=4ilPDPaLl07zxz3FWgxH/tfUPjVM7pJe2RAcP4NyDCo=;
	h=To:Subject:From:Date:From;
	b=sQr3ugjxOqWGyz+sNs+kGKGn51vjS/fpqtwENJzzT9qZxtGPSrSMRSCCk5u12qtHu
	 iduYFAfRfE+z7qv5GQBDc8rm06tV/3XPey20cg5Gu8Cal5Hbwsjy4/kch6cEv/NbyY
	 uD/BEQ1c8vN0YSHW2HGT+M4GNNuOr8JJO0xgUIG5HPpN0JMIc2O/vtB+JriQSoZeqJ
	 5tRCHkhcpRzaxm1t5G6U4iPs7oVNoZVbr3kXRTdX9fYad3Ewk5psGQ9zoN7fCrpfJ5
	 k2oBfCXG3UTckQUv4EFFMgUjxtdrRGGf6CeN16TuCuWyF9ahIGXnHOhl7Fo9gUOMP7
	 O+gXqo1vtsJqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E35CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179166543368.11081.2066436341757169518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b69b004d40b5432b445e7fb4cff9b5f5474ce670b93513a43ab816d13ef9be
Date: Sat, 10 Oct 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791665433
