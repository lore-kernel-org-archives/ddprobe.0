Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F9F56B8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728198354; cv=none; b=OJ0HNZLpUUaTM7b7v1sLRsBhXmN3YaC2NH7SN8msE18zQRLFN8hw0tVu8bNXvZeN+ex0yZd28jr4/3iwle1sfH+KV23+XlPJcSaJ0M4xPzTTyLsbK7JlTjB/s5MATDSyFt4X5h9KJdg0RYz7F065HrzVQn8Kj0Qa9JCZOH4ucmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728198354; c=relaxed/simple;
	bh=hcdTonaCni8a5i2MbSn760ZIWl49kQXRr0/2eSE038Y=;
	h=To:Subject:From:Message-Id:Date; b=cto8G2J8LBc5UXZ50X67APsIoHNX37JCP9BZ4DXi6yrKvVElnF7FKU/RZcwng7OsgNuUjbq7j9CWOdNTYsWLNPCSfiPciTOunWPZhQaRtGzfiTo+377odI/zLv7fHzzjSGGNSDH2HGYDeH9c7gpbyGYJxblImbqmxE4TPyToeKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gk1L0h8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gk1L0h8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFE0C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728198353;
	bh=hcdTonaCni8a5i2MbSn760ZIWl49kQXRr0/2eSE038Y=;
	h=To:Subject:From:Date:From;
	b=gk1L0h8XnnJjVthsGStxemqsjzTTknAQKHEohN5ZVnHNnOXo6fvpsVE1TxWjFqEsb
	 RYOPEQiH3EnDIgibJPyeRxGhkzXq0yC1+3p55/5kcUUQBT53SaPzArNQwVjYN0Fy52
	 rUOAPEux/yDBLUQMDGBkDP1QDJ+n0w+8LatEdvFwLIBbwIeoLmziap5gVIu12sWwJA
	 11yrwRfMqP05w0YI2H3Wctir0uOnZ4d34iO6Tl7P+vIsxukRanRQ2/SB4lRjuJ4xH0
	 qURmN9qbNk/aqi4mje2d+f5rI/hMXL7viUz6EWw4W1CeYpbTV0Auo/LGcqD6MU61VY
	 N2krSzFBQ3vpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A129CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172819835358.31570.2953101957995934959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e578cc8a15226e31af7767465d494fd815478eb6998ccc802bca3f3953d33734
Date: Sun, 06 Oct 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728198353
