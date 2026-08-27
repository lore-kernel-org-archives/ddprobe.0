Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E7131280D
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787809234; cv=none; b=Krr40Vxq2SPyq+tvwdej2euC3RqlTXcR8zV3mpYUHnHCO8GSgdJKzdKV4pxMfikb7WcSnNbVP7Kcyms8hRIi1J0RB5ZlmWsWZrxfE36QO3zDeE0zeDtD8rpubK5+MTiS/fXBg1RuAOOw4QeURAxtQwPojqYPCbTnTZSBUL+1DvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787809234; c=relaxed/simple;
	bh=fvsIPADikT/Efx724w796Yg5QDw4edyVww4pZI/E5Vw=;
	h=To:Subject:From:Message-Id:Date; b=bAFVr0rtuHxSIsXDNoY/p+flvViMyilO9kuHcJPmmKYF2Yv6g9qoB0mtaDobqCxjoKqxFrYzy96ttvIRcTcsHsKKjsX47GKjuFUOPTa9rjLrSj5MwgU8Ekia9YyV5H5/FM9y1LL9BLUgoezc0C9NoH2meIK2LPbel8R/4Wu3JTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROc026RV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROc026RV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF04C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787809233;
	bh=fvsIPADikT/Efx724w796Yg5QDw4edyVww4pZI/E5Vw=;
	h=To:Subject:From:Date:From;
	b=ROc026RVV5yIY38QT9RMCvD6axEN+Chh4bU6ZnAssOPNwnr3Mdt9L+Ed5RxhSjFY/
	 P68mMWOAL/VPxzc3oLgkyCEYLSOAhI0WwYTcaiCGUB3CJ86wTtKhiTjELz8jA0akgN
	 k8AIWpCZ4T5fC1+cAzWcfBY+rmQoF5o7wKKhWGw1gUXRKtMw2ZSteqXLcJ3hxwLjKN
	 qRX54m+0q8x+eCcyrCo57zA71AIKTO4RULjhTE+oDA7y0FGrG9ycvbni6nZhecK5rT
	 RquGwuOQdZq6zEOTmFT1kyby1JCv1aM2jkysn3dBUkMYB4/xjCJdYPUUSXzUAl6ToG
	 wk+KztR8M5gDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA38FC5DF9D
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178780923368.26730.11032903656663442113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4133da656f9d13eaf4094f041dfffe5d9aaa52cd07b88f787e6777271dfea279
Date: Thu, 27 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787809233
