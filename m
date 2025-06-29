Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C7B1D63F0
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751195395; cv=none; b=ASM7j6LTpFqtM/d+FiHHZvfRc1LQWPgIb8hZXRfyqBRitesEHHaaWHolEpMyZQ8f82uhsIu2Q9Yz7OMLgRhFR3rf+SnpB7Bg889hLwsWi/kC9VQmugCVszYj0SXGxIpU2+PI849181FjeXtPr5Sik+XXOe7PA+inEob6yWK1udI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751195395; c=relaxed/simple;
	bh=1CfQ2j+fJ9pay2HAV/eS3ZOyYSPTwRNBKcNBkBWD6QI=;
	h=To:Subject:From:Message-Id:Date; b=EfZL2w0HydVjfqdFv60/rfFOf9eEhED7CIyhU1kFucm/F/VyezULmtPMJmzurT3Q7mSW1RwL8/KWnNu24dVK3fb+zNqajfiQ7+ngC1RigyrtKvUbV1Vjy8/f5ShzI20OHiJPuEK8yiIQrYyxwZbFiPIRV77Qm8VVDG8wreXA1oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVIM7ZrB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVIM7ZrB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43CDC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751195393;
	bh=1CfQ2j+fJ9pay2HAV/eS3ZOyYSPTwRNBKcNBkBWD6QI=;
	h=To:Subject:From:Date:From;
	b=OVIM7ZrB8pKVIk0/LxnaUfUrLlPBW8DWcca9wmabV8FwiG138pU1Jqiq80GFFWEdR
	 l0P1MOp47gKz2vOZE0QI81GQneWzvETdDym2azcPP0ufRzvmBoopbXX82WYdtmqtcR
	 48DcYlEhip5RdClZH/vdv2hWyVq2v/WkeKbbBpmZmkqCGw88CdsXnaLCoFKxpu4owO
	 IlXHalX2lgoyf1KRT02U/vCR3Z3cwSa9WLjkmX6G3LIu18GICP9dpq1sxj4IOfM6sU
	 jXlHjiaqY3SvaAuQh53scEn0MbSCLy8kAok/lq2Vawk2xyiCIatfR0MsViuCBiz/Er
	 rZ+iwXshHfOEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916BDC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175119539357.24137.12950127626059904269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa3fe1f6a15a324e3d3e96348b740387a2fb5aa87c0bc48f133295d650aef463
Date: Sun, 29 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751195393
