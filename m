Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3E513D893
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745875794; cv=none; b=fEkOa7rxIeDjUdAOigO+wypjJDgOpwGTup53whwNYAaysGWICVZ+KD2Mnlt8boxHGBnkSTlbOZwM7mJszSrN6d2MneDss2CkI1CfzdsHGDg8jWg2W5b2hsWWTOVxaL1DROIzMoxsQwxIS04xVETC3IpghHjx6EOFoSR9460DuPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745875794; c=relaxed/simple;
	bh=QKd0eSFqUF8Yflo9ECsb3mwnDO9XSq3NnskVXOjdbF0=;
	h=To:Subject:From:Message-Id:Date; b=o0TmQLobZ7arO1AmCPrA6BhXaomLtlZTIhs26c8BQ+cVYlTqqgm3WX9r8CdQfILN8G+RozO5/NjUJR5umka487lTUABV0s4QzJfnmS0Z1mFcoGNoFS1tN7WIbAnzNRb9P4YMQvnBuZRyB/Ls71LiccF///RSaqbpujn4bGzZWqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dajTNCXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dajTNCXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B81C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745875793;
	bh=QKd0eSFqUF8Yflo9ECsb3mwnDO9XSq3NnskVXOjdbF0=;
	h=To:Subject:From:Date:From;
	b=dajTNCXXTXEolaA9esUuNZJzyPQihuedS3Gs/lzFiMMCrT6WmOjNZW0Ddt75WVb9q
	 xPOYGvEFHby3vAsAISCSRj+Q0Ye9i+1F8g7T2l3+eC8WpmLRWqkLYjFqX/S897QHZC
	 toJbdb9mNSFw8GLZCa0IejQNf+8qq084X3z7V0onJScWFGsbedmoBe5TYQps15Ue2Q
	 jUaveDpj0KPDxskNbnwCIOgtq2oOTMGw2YilQXBOzk7c/Z9GQB52cVP3e7Qel+nfwp
	 BVAMXfOoCcJcaW6ScDfcnSdKf8FjKUhMjJy/b6fl+PxaWJtJ0mymTZ6mTbNVFlhP+U
	 lAABSN6dd7/Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C5FC369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174587579358.10909.10100402191848699387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b883ca8c1dead0a18826b5e1f517dc083f43ce1bd76a21d888abe2504a2f6cec
Date: Mon, 28 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745875793
