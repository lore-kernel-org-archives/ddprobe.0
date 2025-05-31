Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9F6645
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748650194; cv=none; b=CQrDdhZr0zqzU9Vupb+cvtHx2J9UXj9VErdQdxeyUpcujfOEHQ61gWloz202kQJODJSB0HkaZeEXDRl0UTI5jVSrdqs+/Wh9PzhXtYFMnpYV8uZG6aljIJYse6PtBjvFxS5B6lBQ2gB0kRn0wkagrwvbI8EzwCposHGTGpmJ+AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748650194; c=relaxed/simple;
	bh=VwNZlrFfpjcmfNq1gd8mSPc/2cOXYYqnpYHvxdfSQC8=;
	h=To:Subject:From:Message-Id:Date; b=snaOBCWqrhMgNl9IZUecXJ9Op7b/JBSQnINqCLNHgQJwo6B7RUux70FHc3cMOQ9wWWO88gCHnMcJjtN8WZ4CE6eGwloAGVY2E/zfwAtcWEDlwV5dP5NWD72q+pxfFhYzrnI0Q6uiufTSZxrFCh9Tr4kApNWEyaw4BtsqO+kcNWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1nUKL+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1nUKL+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1832C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748650193;
	bh=VwNZlrFfpjcmfNq1gd8mSPc/2cOXYYqnpYHvxdfSQC8=;
	h=To:Subject:From:Date:From;
	b=u1nUKL+DXKzs4bzkdBrp0jJ5R34GEd/a7XewOceGiIlYGra44isk9TKioi8BdQvWa
	 YN0Z7VF7rkY7KCxZ5EdWS+ooGYD6YvFu6aX1X5q3FYFpkcQiNKzKQ0/5r/q+DJtB12
	 0xjS0iNuVVQK9o3b3Bao0faGaO2K3DLePDDCujd5EGF5OY6KIwLUtFVCYi9GFhtiIV
	 UAj+fpS8lJhtw5l2bm+oviKSXAOKvBmXgR6yzcgQtzpA77gcfoCc08TnGYAYV205xn
	 yWHZ/auyNGAJr8tkCjGBmge7kIznpZXt6Q6ZvoqrJdyWViiC1DmnrH3a02ZDu4fco1
	 X0YbayMy0ojXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E49CC5B543
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174865019357.1416.9985678776741740672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2ed6ec45bd3356f0a0142913d7b413a9b7ac96ee6fcb95bb03a549450ca25a
Date: Sat, 31 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748650193
