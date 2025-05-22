Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8987729ACF1
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747942194; cv=none; b=pk8gvCaeXkRYM/te8f0vFZP8FcLuPTxBrVJTSI+G8TyiChLyHOoefZm6dkZ4yniFvxVBvB1Cmd18KLj+Cfy+wX0mJv6SN+I6yZ610rmLCXCbz3cd49aqmu4g3GU2pVfDRo0gql9FodOaXrR2BJ+4T2OcQtxeLvwIZjJwHUEp73A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747942194; c=relaxed/simple;
	bh=UHYa1kZScHPyXtn4D9W/yHi7y22l4CKOU59XhOLYnAs=;
	h=To:Subject:From:Message-Id:Date; b=QTJK0qI2MWAUtLnJMFJz7+00Ow/SFripQZHYv34FhmzCYHApCmP7AwqqWXSnTEwOm+BPvjt1v+0t2Zox6M/NUKFPXcGdpjwdRccogITEw4oRSqTBRlaF8rdK8IImYDcar+7USuz5jQeYLx/ssjWDxhOstgdGtZU3voRGkqlk9aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SA6cMIoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SA6cMIoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE4BC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747942193;
	bh=UHYa1kZScHPyXtn4D9W/yHi7y22l4CKOU59XhOLYnAs=;
	h=To:Subject:From:Date:From;
	b=SA6cMIoTISn3iz3auLRR81GvphL2aHWszoVp3pIHJqnO64+7ZJR3fcSpQ9h33dgEL
	 Nk0nSIlKxrH+zI9uxacGcnDBft5n7chYP/cjOSlugTvROYPHeRH13uieM12aXXtTZS
	 YmSgF9ibgXl7Epp2aZ18y5AU5ybF7e/VYqj0dFAcgMeM0eBEqZiktccxRFgcBuz+36
	 AUV02vo+hFjLxQl9apjRtXHp1HeL8B9M0/+o3ABgeGYIqE2E1p7Tl3qq/iMjb6Vjqq
	 YzeO4RKj7v1GY6KU282yJVZfx/nPckdYRlFHdc4hSw5Gg7EklIx4VHC7DIkJK5qUwS
	 /+Y4PqBDmO7eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F35CC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174794219357.4662.7262482761199208050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 117f11bfc95e043f784e925f2c16f04c549dca710e4a86686111f55d8858c755
Date: Thu, 22 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747942193
