Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BE628D82F
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752667795; cv=none; b=TxNVxI8m27YuhLX4sQ1t9ywKOIqeXWR5gYTiNX8uRIvouYrCthsSUGtK2Wl+cnEofhWTcnDo+wTwe+wKYimaK+m8EKX4xO9GtrqC8PLYBVpRueecZKqEHOamB73cI1LBPPAyIAuDGxtjvp9KKn4xcxYk1+YOw8rg7xcIu4UEoQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752667795; c=relaxed/simple;
	bh=7ax2K9skkFAPxq8cyObYeMuRjri7QWDCOHRR/m9G5Sg=;
	h=To:Subject:From:Message-Id:Date; b=EMtyitvnhRkESwSjh7Sr9+nLFTBN+eoP8vJIIr1LzhtBfUEm94EhlORM1WZC/yrgyCWQzAF8+JNc9mBTTyccBO95RQ2e4u8t3IQFf7FZsBlypFSFZKzb+NHQ/kqPtlZOAXJ0vj08QxTEBQ29031pF6JOu3zdkL+//CkvWZXArWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfnBxW78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfnBxW78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56E1C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752667793;
	bh=7ax2K9skkFAPxq8cyObYeMuRjri7QWDCOHRR/m9G5Sg=;
	h=To:Subject:From:Date:From;
	b=kfnBxW782kn9UhvTYX5nsIDSuGR0z4PmQjQF008wX5vls4uSMjtT5+1WVjAmfEYoo
	 o4DymtCrOsF6AO/AA1VTh5weswD0Je/drm8sVmsIcp7Peio33Ya2bxzT+IQ49Be3TW
	 YS3Vv7pAMFQs8MzCWeDyjldAm6Bf2Pnne3eDS0wK2arDNBwbS8PfiJxuAtGO+j3WXf
	 tkhDWRT+v3p5Xn17COqQcw5CrdnKKIoeFob1W8Qk523TsljoFf9cUoE4MVDxp6wSaY
	 Vh57LM484gPJYhMqJ9RDkndqZDSQBF65uVs8jbcDvC4a+b3BvXnAFsGGGOEtHSKQea
	 pHUBzzCiDDXQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE84C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175266779358.14012.11285553365845806066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d835f48d296eedfb0e073a438a5072b442ff08876f95abc4351cf691d0a9f37d
Date: Wed, 16 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752667793
