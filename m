Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46ABF146D5A
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 17:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718386703; cv=none; b=rX5708l9+bqn7tpFEnyIw4Hzgc1OZFg1swwIre2J3E1fQtQpJoyCy4v3GYrxEnxLHFvUWPyRxF8YaQ0RNk/zwRNL/eoVcC1OUKpzGbXyjpqhKv91rpIZHvinH0XjJZxGsQ/4VICyBHCggNW9DJPZBh5spJyvO4THFDLYv1eY7Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718386703; c=relaxed/simple;
	bh=bhD4saeHh1yRhRG+Hpa/gS0y/LTeGSAKCDokpxMhvWQ=;
	h=To:Subject:From:Message-Id:Date; b=nUfwoEkmKOTeVAcV548n6yskgGOvyXpfjtW4tzHgSpZeIN1YEF6L5zoN0l7RBLUY/vqoC8OLNAQ+1/6EHeAbA9WNvf2QVDWfOtPZqJ3uQ5P1X0pwsiSUahKKn/OFOpB71P2P2HRrO7AzugSsQkur/jbpqRxzu/XxJoSueIGI+Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbweTiRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbweTiRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DD2C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 17:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718386702;
	bh=bhD4saeHh1yRhRG+Hpa/gS0y/LTeGSAKCDokpxMhvWQ=;
	h=To:Subject:From:Date:From;
	b=fbweTiRwVIQjl1p5G2DEhY7GbGHjUDb9pP8/C8hqKcLfPFHfFmYO+kyWrzxqDkkFW
	 qqO1Brwcl/5LDOIPi5KGqWmEcQC3y/ATEkP90OkgjZzC9nI6o6dTD94wuA3rAUZGv5
	 AS8VwvdR9+B9g4YO+uEvn48k504W8OIqBfeWAKnFIeY1fvTHjULJ/BFiUaWZE2nBRe
	 zbOne6Ww1UnV1tpOkor+E7bY+Yp9SE8oYY05QGlZWzulDVsAhATpomiKPBRhaYq9QH
	 gVqmABT19VBXO7HpRZo7kX41+wa6Bb0KOuYAy2nYk1XZ/j1b8IoBxyPh3a86UsIFTI
	 3Luhe/0nbARdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE522C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 17:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171838670277.1635.1558991145572565392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e0e0158069ff9a5fde3ef6b1c4ee483d3f021c3217b64a0c8e16a90d6ba28cf
Date: Fri, 14 Jun 2024 17:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718386702
