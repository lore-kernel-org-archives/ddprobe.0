Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4620418C2C
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 00:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781655394; cv=none; b=tC793jUMXEPngKQZSDg9wKAiTsJDdRw+6dcH8gkk3ir2XqobWnO4/wJnyX1vtamKys/U9XgqbMi6lR9VRAZpcuZ+abSsIHj5wOtGihgP+m5nQG7BUgCDkiZz3rVvBhIKpZj/7pi+pfv/4+0dKRRbsV4K3VM4wgFzuS2Ll7jaWVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781655394; c=relaxed/simple;
	bh=+6d/TkJwPvcKV9YOiJoodeUrnYJAo2+vZEq/Rbi+J4s=;
	h=To:Subject:From:Message-Id:Date; b=dGLC0UY3C8c4EmcY0Qmps9HtwpffArUo7VuG0GQvUZ+KXKK8aHrqJYUL8bZSZt8q3lAayUJBlQ2Wvr+ZwBfkcvt15l9a3Tzr0WieUj/UWQgeMkDb3zuQD26PaZAFJ+gu7yrdDfIM785gExXe18EVhxFE47ygZP6jx0tCbpWRvU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7nOuFSX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7nOuFSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E2BC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 00:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781655393;
	bh=+6d/TkJwPvcKV9YOiJoodeUrnYJAo2+vZEq/Rbi+J4s=;
	h=To:Subject:From:Date:From;
	b=O7nOuFSXU9IpFfZa3gLVzI0s5eect5JLN6NjqADW1ArwrC21v5oXLdGyyZdWD//74
	 bRBKpRkxktIdBkzbYTMTfQGinHnA475fHaAdMoQhPvjpH036uR2lbEeIMnJRNlgHTb
	 xOxOMaOMCOmJ6N3LTnOstul3n5Z0FZkP/s7y9nmmt8Bl0maQ+Qffuqt0Zmh0d37t71
	 YQHSC6gpJGEhetsTCAxkFTv9FEHzas+axBURsyJMQIfVH/DLVjo2SOdU0xLYZORowR
	 i58pHUVfSIqfcmT6eOKAhwVHmVKiqJa7zBO28H65wMrNTkAY2944iKyq5zda/a0aeX
	 apEaGFwPa4aJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B569FCD98D2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 00:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178165539369.31773.4891779217256428386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66b00750db9faf0ba40639d12b1ea8dbedd56f1d47ebdc058b74fe45fdae8f8e
Date: Wed, 17 Jun 2026 00:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781655393
