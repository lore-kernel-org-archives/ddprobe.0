Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C404EB39
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 16:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716654263; cv=none; b=bkcCobxCFvlPvZjsGx6vjWHmJ9hR//NJSO2BGYgF0M/B6w5I0NdwwtFmz59ODcd9YeBS+s1YoF4kcw+mrq8IZKJM/fLodaGfpV/lvv7ijLvmtMFyeWJ7RwECPt/y2380/+grBP8BHdhoEwdgT2DXpop7MdyIbIf05Pc/r0TLYjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716654263; c=relaxed/simple;
	bh=Cl2hlSyj7PyWlm89KYUJ2RZ9pippiJjEtuOXvoCQV/Y=;
	h=To:Subject:From:Message-Id:Date; b=jsxyooGi6cC/9Ofu/fQuW+UvZs/X9cfE+A7REgvIjpEtqqAw2y6txZH6aqJI0iiVLB9RpWVf5+YrOKZoHIR0HhyQ3Y3i/STSgYb3EEnaL8oNqHaeYStCCJUd6e57MuXPq+iYeblpQAPZb7fssqB4a8gEfJGV1tx3QZ7d9qPT5m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJO0qy5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJO0qy5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE11C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 16:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716654262;
	bh=Cl2hlSyj7PyWlm89KYUJ2RZ9pippiJjEtuOXvoCQV/Y=;
	h=To:Subject:From:Date:From;
	b=PJO0qy5D3S1rcWKurozsM2Vo/1OX2EwqtLK58UC8ccHSjzemnEhOiUclFM8ac9L09
	 Lb3UgFmjHxigcrHb7jvloVPgTPQhoFO/aB39xwcQoLAdK1XIPlAzSnwMzkMcE33cFX
	 sxaXwhPoIsg6d//QMQY4fV1GX81rWj/GR3NT6Gli/5XUAFIEo5+syOr5a6qtsF/M02
	 mAsve67APeE7fNu0/v7joXBSEGCqIgMSGf0RWTJzzmdeAb/mgan/TX+kwkgj5jx/RH
	 n5iM0KcyIj+ybw9b5I92skqGLks4cJE88Jey1BYVDV/kgveJCCQt/GF4WK4GhBpnAn
	 hydLQLo2ysFZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA33FC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 16:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171665426278.22865.7557142657754062052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfc3760f97678358dbbb1bc7b6fe7c4b06e0e6fb55220d3c3ac2e55060e55add
Date: Sat, 25 May 2024 16:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716654262
