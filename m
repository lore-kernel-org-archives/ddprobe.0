Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CC01D618E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736023554; cv=none; b=kPHZAwPgAG9mgoeQM2OYxumjbdquMBj3roD0VRZYSouWUM8Q2gJh+PhW+e7+hDqZ6qf0r9e1ols7DuQXopJCjIhzcx+P2xFNnkglBIb5rMlAHOw4knPRxDb9LGvXSh/3BU1rqq9y3z6YGrzUUhGSvxc/J2au9b/YJ3U1iiJQeo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736023554; c=relaxed/simple;
	bh=a7a1i8WS6E9gI2VxZftjrE1r4COqR7bk69sWmtwi50I=;
	h=To:Subject:From:Message-Id:Date; b=QW2d6WjOEWeCWKMMcD/dYlk3IW7p7KMJ5JMLBtpnFzbezxWpbaFH920iwnPGs7mfsU6iKmN1YFbpOj0l5bmiUi2Yx8y+m8sMyOHgOZFb1ABQ5I+6sIIra6OGZ5mohpj4LT4PRXV8cKnWCPLVF9FU+xICB/M+/61nBy6xCrDy+dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtS6DBuG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtS6DBuG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B572AC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736023553;
	bh=a7a1i8WS6E9gI2VxZftjrE1r4COqR7bk69sWmtwi50I=;
	h=To:Subject:From:Date:From;
	b=AtS6DBuGYxjQou2ETSnEfLgq3nqOqgZ0mPFsgMbQ+HuLwEOztR+dOuRTUCk1vXI9w
	 8B57TQuRg3Wp3qsZLjGoUpZyAVyMC/7Isp35k5Xm6Ae86BZPxSC2pkIExIIoZnOrws
	 ph2Hvs+eF0Xm31/DYXdsHVsd70Q+cbnLZyMMjOnlACTzBsh/Z18UTYpk1hPs5UaHhl
	 Dh9ApsiWEDj48taPg3/mpr3Z7X2Dqhm0ukdiSdzB6u1L6N0x+MlJ97w3GFDKr/hCdy
	 rQY0ylz5XyNb0us7m/6HnIU5Co2T9k+XRBFQYDH6/o2a8RBdtW1WaxqHGj0yaKwUV2
	 Di39TJVpoKbSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F125E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173602355360.17112.7058473461901200761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ea442c6e7cd47381f5a2466b58de393411f8ecb22db2d9f5e2a9b11f4d53cc3
Date: Sat, 04 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736023553
