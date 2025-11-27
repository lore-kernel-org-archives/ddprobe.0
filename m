Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFEB3009E2
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 11:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764243774; cv=none; b=BTwxjHWiKun5Gt5aq104AFgLJ0yw43BR6eMCZLMt77rADIxNdDPQ3UZ0sKN9F+qNjeIfFXZLR8nPMWalN2imauBMXcd1uqpbYvsfq7G0LPLAq3Pvxip5WAjLib6Uw740wenNlzMoMxJiuUrWkciOfkfkBKAQQujb3EIIPp5dNbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764243774; c=relaxed/simple;
	bh=5AEVrVezw+mfp/OrcmgE39QfEH/nc8IAPMtvCHd3SSc=;
	h=To:Subject:From:Message-Id:Date; b=NRKoSGyBXZwdoxlMfW1pp3Q7v5tQrCJ9s1yvBNewmATKld68S/8gpYBbMPvVLAt7D4AhKptC7GzuiFUSie/tq8v1ZbhBXbNTExuo/H2cDcBYXLoHAZGCWC98kw3YqUOIuHzdRgW5GHWmUZ1p5FPUElYZFRaVQ7mm4IvPKL288So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqNRSLfE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqNRSLfE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46CEC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764243773;
	bh=5AEVrVezw+mfp/OrcmgE39QfEH/nc8IAPMtvCHd3SSc=;
	h=To:Subject:From:Date:From;
	b=BqNRSLfEcFT9KuWk1e26swIrn+PS3gWI5aP1kfLPJuQQd8nnu6Ojo9kZE1/2Mo2z8
	 CDFC4wB9yax1EYkG02RuPSDymtzayI7Ommzas7huEwvCGpbruOsczEpU6rw0kXaQc1
	 2fZP63a/lbBcKVsK+pIwNfuRW5Ft8+f78VndtRG20Mt3AJmFpl5D6JtpT1nAh8V9+k
	 eOa0JPb7IuRQG0ILpuX9i4Uq2HhgJ7xO6MKDt4lLivRrXD5sINtpcD0WdGOhVDCyTx
	 EOxETwULbrdgLdY4twckacPC56WL+LJH/9Nqr3zCBESvhNFZl4QJ8EgY6bN4/kjxJQ
	 b7c3x3+Dy1rlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E86D11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176424377358.14423.3394149885139294769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6475c5f23572f986c18f2aa582b4dc31b7f02239c5a2b675db3c03376fff9e42
Date: Thu, 27 Nov 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764243773
