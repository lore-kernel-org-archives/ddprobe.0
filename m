Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6389A847A
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 04:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713846623; cv=none; b=EVWKhXa6ZsOhg3BH12tYSCpa/8R3jyV4MBZn3xB5aLFoSsindvMu4gxTIIP34ofO6tib/bRogcyQHVJsRppo6Y6PdMg/SQNg/TPXgDL1wjvsonGYHxKvVG528QqI7Sd4if4/aNOj+wuLvVucFAFzRQwk7aML8U5frGQgfqAZJ1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713846623; c=relaxed/simple;
	bh=+/aU7fsCKySMv2T42GOmoMafr1nqIXO3O7eJT5d4BWE=;
	h=To:Subject:From:Message-Id:Date; b=Z45c3bu+oyyktuGwgMBABVDJsrhO19zoHQol58Dr8Qg5bKr2b4ghf08oGKfFnQOCmDFD6yzwomB58RMoVIZTk2/9H83fhG9sVTPx3zE1WSafnPUOC5qZ+G2X2E4q/tcsN5sn2/bsCvfoWChqeNjrJQakcjJMLXT2CaSfittvJ74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXzM9+Uq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXzM9+Uq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C8EC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 04:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713846622;
	bh=+/aU7fsCKySMv2T42GOmoMafr1nqIXO3O7eJT5d4BWE=;
	h=To:Subject:From:Date:From;
	b=sXzM9+UqYAsr9CemEwAV6XZM19yrjvZ5Wlh+V5kfCjLUAiosjuGEIRXSaOSy1Jxjk
	 Kacef6lVqcTkKOU6WY4Eik4wKnvTNOMIm2nn38LLT3v9Et63rXFxNGtFCNX0kr8SJ0
	 LRzcHlarP2rut5vOaylfTeee/C39aFtxF10zZqI+n3Ecp6ZVLyLP7HT1uKKLqaSIPD
	 PBELJvCFHYRECt2ZDhvr9QJ7C07a0iL506XVSrgm5mRE5h4kVkTcxC25415RXi6DPK
	 LN2okn4EIDAGTu3wDYmDbp8nak96K9Dn0FK8OX3SNt5rmNl3TAWT6GB92c1xj7JIGI
	 tGZ+Ccm8RWX7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA681C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 04:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171384662279.21310.7508100992899743968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d99bd52059c27817ccbfb9139fa66fe390088a0e2b4a635a18d570cd6998d4ff
Date: Tue, 23 Apr 2024 04:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713846622
