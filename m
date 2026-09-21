Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 818A24BFE68
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790005234; cv=none; b=bkl6+6+4QgBTq9n3D4vJLy14WXABmkg8zbcD0XI23ViRN/ELZNVsoKQoDsKQFETwwRslJv/pJ69QiFLI/T3OFEp0j+YQi0I9swiIVLSgojoUr2kikVKuCyb0TUjZvA0O40NKtGxFwa/9HslNitacy3Gz/TlT3OEzwMqwRzt71Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790005234; c=relaxed/simple;
	bh=T+VAE6xrdgBUKMQEliXLxwZKwX/i7qYpwCZnro9EB80=;
	h=To:Subject:From:Message-Id:Date; b=XU8ShJKaxWZSiFGKCZDI0ff7BvshVS8qXc9GGTp8fO0h1qRjYaPQPeST9dKJqkkfiTAxvMlgRNYEZqWI8s/LH+g0nCuAPo4IP7Ea3kmmk5WjPFyZGPT5+q6mFvhTcLYrXW/5E5CGPr3lmjxOWkQrFHgvwZMzDdYh5O7dXBL4gsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onbBOxLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onbBOxLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE23C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790005233;
	bh=T+VAE6xrdgBUKMQEliXLxwZKwX/i7qYpwCZnro9EB80=;
	h=To:Subject:From:Date:From;
	b=onbBOxLrohRWhCcW1+q02xuBR3cSgf2wiStLOLyyXMTsUgcqKXz0elQ+FFVsV6o6T
	 j6TBpAWJUz6PbkT72SXBM5SPHh3JUGk1VEr4QlcUXmTk0KrSF0nCD+8thUZcEuXyAx
	 iTPwTdfOLPr/AmmNZsBaFQG3AYtcKEMFn1c2jbcfGi6HZ+7CemyUvdz7u2evD2CC5/
	 mOQkOgDmdbaZF97gtURRreLAKk4hpBfX1Q4BARdzhP5rx3EA6RM96Asfp95nTGD4wh
	 segxKmCJj9dSmb/GZI5VAnzv5XwFTECbeM8VWMpEfD/7hQALvNOhMOnwL1NGZdANj4
	 HRUv4+PHOK4EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5848C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179000523373.3919.12540215372673883019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 800c9c74b18598dc6c88eb1eeeba43f928d72b8f6f27ab1f97f6d25bd9f8cf27
Date: Mon, 21 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790005233
