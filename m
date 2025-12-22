Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB162C0F6E
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766376834; cv=none; b=nI8zcCbpv/0b9t2BKDqradW14XpchPE0ogTQ/A9WuwY8sPoQ+HvfV8PB/4SdhXxxPgc2gPmJt2l9nUBhFQv3dKDsEi4MYO1x68mQs8YJOMT30lEx0agT9cmkwEfm0JbjRJDZNJyS77ehui41TXrXTf3t4ln+zS7+KDMbjW+RYnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766376834; c=relaxed/simple;
	bh=8LyVAZkpioj2lhOXaDunsWZnZ7SfxHZWReEJMzwekJA=;
	h=To:Subject:From:Message-Id:Date; b=IabI0eCkk3Jq6tLTpNLpyGLieiKtdN9Jk9hDKJAaSnpHgipl+g1dW06XBhtJeNHL3hc9eCfUrMQ8x5VOhRYQE42uaIiCWax9jSohYtnyJyyZn7mGX0AnLfPfleNwKnG0YmtyBUiuMANq0K3qeT0sR09waQog896cLId6YJ9WIC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3QAAHp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3QAAHp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FBBC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766376833;
	bh=8LyVAZkpioj2lhOXaDunsWZnZ7SfxHZWReEJMzwekJA=;
	h=To:Subject:From:Date:From;
	b=V3QAAHp/juqjJal5iWH1FJQlD2l0Z15G/Co7tM3aRYqZ6ShZT9LNB1DgGvZ+wU3Pd
	 Ea2dETZq0TrNS7inCVhbjna5kTJ/aygsubqY+VNbMV/dA6fYf3SKrLe71NIKdm3K21
	 xfyw+jBkI6EZ095oGMKbbStyJcdod7gO2W8mMspEa/FJZFA+AhxzMILqI3bURuFNJ2
	 fCT6lrAjssr+jY/PymaVSeWSpyeRMwY1/ReNXz8B+slZHIk4p7LNmTG90lgYLZslwX
	 qbibBQJIh88CRjktx41c9eLJ4oniT99XShYWkap4rVHHOTytKNY6wzaFkrho148ash
	 26vVwSMinwFaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95142D711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176637683357.2468.3271033109204665610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef07e70e04ed31c95c52208b8ee1d08825cdc3874cac3663dfa6fd65ca402c9c
Date: Mon, 22 Dec 2025 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766376833
