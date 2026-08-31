Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1A33B47C4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788154834; cv=none; b=oeUFkyqOTra9hCbH5pfPbP3oBgIO91iHTx6fr62TobLhNUb7bqSItkZBoIynpk7naZb3WCzucHOlznywv8HxF15DOoCq6jQYeS1/NqQ4DW6NedbZcVcxEjJL5G+cbw3bee3w5O2t8FrMj6wE4klnIIH0FmQe2cP0tsoBaSHy+/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788154834; c=relaxed/simple;
	bh=CgVhN4JiSkathPbHfJqapJ/ll4AdIYPs2wZFE7NzrZ8=;
	h=To:Subject:From:Message-Id:Date; b=lz7odW8xiV7UHKUNBKadzlcYNfrLTBhTc5zjva+jhpHIhxj3Aq/QRytC5+xuPMOapVNIi2Xf89yQaoTRWNl7hkXI3af1GLf/jyTjMo5R05Y6L6brK3Co+VGq28en6B1q7VQJSQIWADFqKUBwcJ68iZB6Le5dcZXhSNJQj7TSqdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nzo8Krso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nzo8Krso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE32C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788154833;
	bh=CgVhN4JiSkathPbHfJqapJ/ll4AdIYPs2wZFE7NzrZ8=;
	h=To:Subject:From:Date:From;
	b=Nzo8KrsoYmkt3nqlZRwim2/GazzwIIvVY+cAKr33YhLtN2pGK2ztSWoClcbg25cos
	 SXLE7I5s7TbsVmAI2lPDVsCWPn+Wr0Xf4sjOSa1t3Dsa3/OB60+eCIW3TbSbuKL2h3
	 +WMQv1+uFJI6EkcQHjo/A8Jpq/fWNEERpx5ZR7ifTvzeiP+3pn70dj3p+vNKRnCH16
	 eunm1MiDlt4V525am0dHSvIhfiDSnP6N5z+AuQScpXOPRJqmsgnrdwyfQwgrGS6k5p
	 +QD7QGytivQ/XkiJT/HS/A9nYCsUtpCQwv27zUR17fsD96vkqRYvcymQcIF1fO5vBt
	 JkGXGp06kwXrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD1AC61DE8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178815483369.8907.6730661630703682004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6685ed57c81e1f3a2b744345a06fc1a0b94978864c4c1064a0cfb29a2cb6b14f
Date: Mon, 31 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788154833
