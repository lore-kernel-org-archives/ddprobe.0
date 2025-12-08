Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2786421770A
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 08:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765180974; cv=none; b=g/ayeJYkKGlK7GloLRzQ2DafZUqqejcFNo9rOHe5VPcL8sGexF8UJCpp8eitFeljrNZHPUTT61pgOWnkXP1LgDoxA26V5D4GOTn8MqY9zFePx03hQ3iqkoAcFpKmU3y9kuF4dw+4H2+kjU3Ct0cHgps43VKwz7a7Q1vnzet+SxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765180974; c=relaxed/simple;
	bh=Id0gXYHnmL6KTfYrzASZCkDXZrRnpkxtQXbPhozDGCo=;
	h=To:Subject:From:Message-Id:Date; b=GuQgw39tscnxBac37wVWORg0Vtep1bqBdIkdW8klRwNStAdcnVeX9mZ4O/bpwrnyAHh8J4axUr2ufFvSgSfs/zWgvw1fqBMrtp17h4R5pNLfU/gfmtWntYGJST3/1YV+++q5m+z64DngLCCWADl1DB9LcanTwH5PnEJosteEx8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WaaKLR4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WaaKLR4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A30C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765180973;
	bh=Id0gXYHnmL6KTfYrzASZCkDXZrRnpkxtQXbPhozDGCo=;
	h=To:Subject:From:Date:From;
	b=WaaKLR4aYWbq24qJX2y4xrl1f8QVc/44AjDRU646Li9hnQ53aCSkIk012FEU7l6sY
	 QhBK3kUbgC3KTAeP8s/XnnJw3EUJOS1DONsoVuYmKXOKweyon/O7gFahYPOEoaNkMY
	 gWK/p1t9F4qi9vf7h8oPBy3cmFya6GsjTMiFgR0EFYU0jD7D5FU5XCsuR+izcZ2OL0
	 Dcny1QJw61VkPVJB4SXhKbDVfxTJFYWfORLVwEqyX3vMLiYQqCVCVGvFO5wuwcfzRI
	 tU12NBTYPZCb5FR9mTf3aa7of6ps/Bd1DD0gbO0Bd0k4wEeGf4E+AjGY4vNtsoFe24
	 qW2lGFI/hUEBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915E6D3B7DD
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176518097358.912.356512105184049736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5415ce63351227f536f0a360797269a4eb56c64dc6eb0fbbde67687237546c08
Date: Mon, 08 Dec 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765180973
