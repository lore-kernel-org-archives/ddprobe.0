Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A0E17BA6
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747521595; cv=none; b=LGk7Xn24TP3FOs7zZAf/vRQcSG/ak5dNHA90ceFNpepHXN8VfVX2g9tdF17SM4C2oazd/CY6ureen9yBGEY+kqArQP22qSujS3FYUjwGt2Ssn3b7ejdiyd4kROYOSmxzc9JqitmJs01bXaO0/04EP1xTwpOxZOdxQji3yBn54sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747521595; c=relaxed/simple;
	bh=nMG9p+5jpE3USe41nWOXJ94oBJuIDDBuAEyZ47aO7JU=;
	h=To:Subject:From:Message-Id:Date; b=pHCpejWYU+DB9qHOZVxUKSkyFQDcYJGcxkr2RFz43ftaT2AkIYkp/JWlIlsaeGVqUos7cEihpZ18J44A/Oza2nrTPlmYSEWT/r5j2doaX+hT7bmCVGqgPynF/XQH7Plkq9SoWCjbzUErzJrbG29njzQIpCos5zfRyEzRpxT8siQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSett99q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSett99q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78FBC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747521593;
	bh=nMG9p+5jpE3USe41nWOXJ94oBJuIDDBuAEyZ47aO7JU=;
	h=To:Subject:From:Date:From;
	b=pSett99qVwUD7CNn4ML3IYsha4xBiR2/H3tu8dGLalYK7HtxWgY75vaV2KdlNJSb7
	 rsg4L8qwwEZjNVWT1/b6dy+3Odv3FxhH+jVvHz2VU4zIoYsZK4+efKM2wFfKFjlk6K
	 n5JMiQl93MB0liT3p1qGObbNdd4OtoJmWv835Bu6yPCpFCpcdY3CWIjqGfRKUM1VDK
	 fmZlFmSXk9PXsU1MN3shD/ACpMzZRw9SNW0mfeo/r0r3pKLG2Zmbg3rQ5/0xLMBHLw
	 0U2EJtqBGIZme+6B2gWEJQjGr3oUcZ/kQjgCSdeNVXdcss0hoyqX8sdneuIKQBSghl
	 zoJLxDEzSC0QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9522DC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174752159357.10425.4652255960714826446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 218386b8d9cb36c6791cde7ea56fcc1c8a9968ea16691f8fb88a3391abaa042f
Date: Sat, 17 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747521593
