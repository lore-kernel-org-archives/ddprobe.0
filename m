Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1A72D8792
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765057973; cv=none; b=R9iqTmtRXqRnDq2a5Zx9ApOHOA0xMJFhQ/3UUDuFB9DjX6uylFYNX2PiaH/dZFKsS3fBAQ/38xPOeDAA8MgLSlQA6Ha+QVs3pUkFi0Gcd7zgyn8GxSBLGIYvkqwQjstH4xpKDRiIIqRzN6c0CkDvBqiU8p0F6m/HvpO/7evwg1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765057973; c=relaxed/simple;
	bh=XD0rnHUWo9XWKiiefAcTIozLbzjRq09BcNRWT7P3LiY=;
	h=To:Subject:From:Message-Id:Date; b=TgexDwbbxIYOIoGFjpjqjLbkV4ueI0vnaa5xBONxA0+Aaxd2l1osrYbWOd27XDfPi8ZIuJAxcQnODPvl6fmIBW4EgnYuZSV7Xd7+m3ch27ruVVZTYiOt0oXKjkzRrr+cL+vhKlWy+dvwsnIFDcFL7t9kv760aCLQiES6yNurMKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2Ydl7HH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2Ydl7HH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB0CC113D0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765057973;
	bh=XD0rnHUWo9XWKiiefAcTIozLbzjRq09BcNRWT7P3LiY=;
	h=To:Subject:From:Date:From;
	b=n2Ydl7HHOS8rVBj9yOnWxW/DsD2KQem+shyWhMDbay/uUdAq92Mgp85esTqgoigaq
	 7LkCVtRjOMrjG2/kPohKSDeDDdOcAYIe/Zl9/M3AXokC4sKab/udGsR71DzgHjpZ0R
	 zI8y3szeEqLIDyHNfhLZMS7d6FzE1pGER9DS8Xx7R0R8rARo4zTxGSgAnJWXdymnSR
	 XcRoWOkoqmOy6c+rXJQyq1brzQRiNyLBdXvzOgml+AxZtchk1dMd7s6ofcbvHr0M+w
	 phITmyYzCJrmG4cjcZtdjIA9q17xhwj+dbgBry/ZQhxqsyS4fxOb72hussVc+95mjs
	 usL8VReTTwLRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A0BD3B7E5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176505797358.18541.4442750201058742104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31f6ee1eebfabab55b698992ec2e727d22ee3518e291d435b39749f189e8a846
Date: Sat, 06 Dec 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765057973
