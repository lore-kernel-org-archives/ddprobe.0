Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E546C1F951
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721984754; cv=none; b=XR8g5jX2kQ9A2PdxWbVri4it+cdR53pK35zbkCBZyUKF7OvVLJgi0xHxuDz3p6Upmbof4IdZmkN8oKmi7w0TI8eO6w3U8IgOYtglV6PUucBfAwjQIGnMDhUcYzHlQsazCVJCTplGPzmB/h64d6jMx6+Jc0sMvtRlNHzrnSKeTBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721984754; c=relaxed/simple;
	bh=tDf4iAUcxYAAEfjnJYRwD10IW+0Npx8KjEHUQArJHpM=;
	h=To:Subject:From:Message-Id:Date; b=IJ7wMNc3F1pt6/76Tubuwv4KJWdTmCHZBRxGPZrcTL1pCp70f52h+PinN2f0mWJQy3c4lO/esHgSXFmbLRoxbY2WkGjc6pFuYLfVD0lLOcXpQM/vIFfcdaEpi/nQntZgc+CLnl79f80aO6duJK7lMHRI4NvALt5FOSZzcllkKaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEacLcAU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEacLcAU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5DCCC4AF09
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721984753;
	bh=tDf4iAUcxYAAEfjnJYRwD10IW+0Npx8KjEHUQArJHpM=;
	h=To:Subject:From:Date:From;
	b=mEacLcAUOrUQgw+ioJLbf0+G32RytVp0RWikAA6RsSg2izAKqbybizENXBd9gTzVQ
	 npNYDEq6zpAtCDL6LTMCnXuAg/oidFSijQ8npby7hELLjIU+EtOqHXoeEMjJ+4UxoJ
	 lhDJK4DD8ioxZ4+6xCukiKJIHQWHdVyFTsmcmMsnUEm5Z4S48x6TigAe29B7k/qG6Y
	 ppy8Dv76eNOAaLAn7qkDrBP/z2wej70EG9ST30XNs5armkD3HsPny6gGxdCsGFhdIA
	 /kIKHJjVKhO0LifOwtX/IvnjgNWmMQw1t2eeazBPr4RLw6q07BAlN5bA6GQ17zRWdn
	 Xc/1x4PLQRm2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07BBC3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172198475371.26818.3915638639030746462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed5e1abc76404c418256c705ca9dc16995f09bbca45eed3b67fccad58a2b714
Date: Fri, 26 Jul 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721984753
