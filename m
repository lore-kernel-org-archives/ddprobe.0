Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2389D361DD9
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 02:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780367674; cv=none; b=HHlEDqIi2EP/FMmq5IIX7dgGZm9Ny+IZC2/pGzAZOmfKLfDIygFVec0+pQnznmSIDRE9Dm3VSbp48WqK9CFllMYlkyhUTWF8aCGFf6cD414NRr/pcRPWi6v5OLMqEgCpihJreAwQnfHseKkg6STHReR3OiWJfXXda0Fq5qjO+RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780367674; c=relaxed/simple;
	bh=DM7aL9dXN8y4TCDVgCXTGxtkgk4er97zIWNhLzt1ZrA=;
	h=To:Subject:From:Message-Id:Date; b=fsuKw/yLtUAx5zigqHyPffuEE1p7ybaqRlOlf8If3ch5X3u9iujB1pO5bAVSc1w/I5b0JtphXgxFyZm/Ow3MiJduymKP1y4RWocXK1ivjnNCgxLsaY0BgEQ2wUNquTZbYKr+cTSqq8HEaopsrrsWQejlNhBncyLgmTgY97dWrdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsJcX5Ft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsJcX5Ft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2306C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 02:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780367673;
	bh=DM7aL9dXN8y4TCDVgCXTGxtkgk4er97zIWNhLzt1ZrA=;
	h=To:Subject:From:Date:From;
	b=dsJcX5Ft4garv1qaIa3X7b/wCl4xHpXA0xYpbGjEh7a9nrAPLCgQAsW0vIsy9lR/B
	 jjcfvYZIB9W4G/TIulHi6ninZ3mD9gxFdFVYA/CyPuJ8Rd0fl4qO37Cj0CeJ6uG7p+
	 FZEap7+555gUGxJnzOMQX1BPmmfLPElkBrDp9UUdq1Os/MIRYMSXFNhkKyTX0R+M+h
	 dDht2ZVNH3fM9QfeonvH8H9aXlzmcPd+Xg94qKHrQ/7KnbugCEPtmZs+rIry4CGSu5
	 aKsmFUES/OfwlLnacfhmSIhCrGdivGqKXWPmgH3Oe/U4D1Ehexu2ypvFlJeMbVCcn9
	 /rCDu19OjxTIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7652CD6E56
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 02:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178036767367.1821.711551203402899835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a0e4e5f4da4f9e1c1472dd2ce3b679f26dee7c73e4d4da0421a1dc2061f4297
Date: Tue, 02 Jun 2026 02:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780367673
