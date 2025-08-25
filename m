Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283B62FE06F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756136394; cv=none; b=P6MQfVRtRl5cxbQYvi1mq5scs1qaoG/AQb8H3qvBeLenTjrgROozQfWaFG9ApgXfU5F8YnH+SGHtGO/A/Gac7laxJJRGrZ9rDE6yfSHwFd0E8lhma+TbVR/3W0r8lHj64Sg5bTf8sghJFKUsC3sfBHlptMuPOmWDlGkhC/hT/H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756136394; c=relaxed/simple;
	bh=pfVuKm6DbvSs9l3zxWA+QwxZwsFLBG4hDwF47nBjAwU=;
	h=To:Subject:From:Message-Id:Date; b=MGKwMPDzpQO9dwGxpn7lEf1rZ1h+nkDqLovnmJpX/KibC5DzV/+pKuoxqNTSQgA1CBZurVpqqlQaW5v/RCT39E3Dz9oISHad8HhfQfeUpSWJcN9vegOpb37Z/t3Lg5LNRyuvdMWnRJuyBpiltPGovFwEciGgut3c6j1HOs1NzNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdyjRgjx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdyjRgjx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5264C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756136393;
	bh=pfVuKm6DbvSs9l3zxWA+QwxZwsFLBG4hDwF47nBjAwU=;
	h=To:Subject:From:Date:From;
	b=NdyjRgjx+15OC6tpWJwoikx6N2TZEzxZcFlooMgiToqhK3GCWnyhrzo9tkSe/+2mz
	 o+KC+YiOeAiOKg3Lj3duaoPRelzS8x2qiGlbV/bnUqSX0xcHozWS3fvd76LbUXl5XM
	 himeu+o7sSi5uoi6O2fPTVzSwiyRZSYBaXdBU1jLwcLxElCfuQQZWlzYj/qHZXRQ29
	 Hm3rBo4Xm3HAl7c1MIUyB1G152hhZuVZiQ8xm5smKaiT7ySttiX7Pt6xO/YFoIgh0R
	 VwBA+SWzGk3xqaYOHBu0AUhBJwz3wEgxZ4gacvWRJNQmZUiElYR7j1bhbpi0+XcaXB
	 FgRHylTmwweKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955B1CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175613639360.26210.15461632111041924262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5304360131b0869bd1689bcb21202d5e0396e4c2e31b76f1da9f698142a169ba
Date: Mon, 25 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756136393
