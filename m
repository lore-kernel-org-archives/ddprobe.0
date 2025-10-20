Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27534335068
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761001194; cv=none; b=QYgwpwgQMqUW1q5Z83e6nVeXedQyDQ1e1Fr040v6q6mVIa8q5zFPKllI/YDRBMEEljW7tO22AdKEEzTt2AaE1mfccgS0w/r0xu1X4w9SDtgYumgNGIDQ4ORf3XFBrvshhx4Y2Qub2bO1PLYUW5iQ2GFTo/yAbgvSixnBHMqtTu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761001194; c=relaxed/simple;
	bh=UVtjyb4kuGismLNKwXnEiLfs4qZIVmrVRhZT7GfuX3M=;
	h=To:Subject:From:Message-Id:Date; b=Og0Jv118fJcOmSgMxZea4Uj5iUO98BGLs5UerkibkJEgdkJbV2WooMSYWq1ROiWe3XdTManPjKRJbKqvnLDFv2SLZ/KwaBd1mjx9mtmEbmjgBKo2bW307NB/dRBPiCkHBFfkUeos78D5vpl3hheDzk3dbcfI2AV6A8ST0h3XZbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPxNkcuI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPxNkcuI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5124C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761001193;
	bh=UVtjyb4kuGismLNKwXnEiLfs4qZIVmrVRhZT7GfuX3M=;
	h=To:Subject:From:Date:From;
	b=bPxNkcuIZt3g8iqfHBGGNCO5PC+6H+Y1NPfZ577zKne0aTTr1GBdZDMH3fA04LlSy
	 QDgd7LYBuxqQKOM0i4aEwnfwU5a+T6h04880vk1ip43cgXHcdjXAKsIwMatvZWpjMM
	 uxl4Spc6cpNjY9k1U5wc+M/dycZjAyhiAqdv3hUxzMc4gBRDuyKQ+jXpOBCQwtHN56
	 +Be8x9g7w4O3dqFjs04XkYYbyO6fkKGPRG6xfWelbQyGxla9v4fdv7pTrV5F/kjjcT
	 CC5XIeXaAtywTKHAaozu4C11Iga02SqtE2Uit/s2vYhlbMmrImExFHpZFcOfBXXVX/
	 fP8Tve6yU1dkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90706CCD1A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176100119358.1584.5967064510502594617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7da754d36adfdbe2a1b1e10fdf69a84ba291a6dd064e6cecb572edaa0b626528
Date: Mon, 20 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761001193
