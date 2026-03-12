Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4D338F65D
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773333294; cv=none; b=oNuTT1y/x08cZ8CZio6Byd9yo3KhJ+dBGPx4weyy+HH/vKvBpQKOcNYBZYqvshU3R4U+1nxY1oGh9DoHc5kEkg8TkpooD421gUPdmJU31UCEfX1ibEB9EzAZrDGBQtvyELJBto9kJ5pZhYskno7hlbri2AEvd6q2o+h8pqljWLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773333294; c=relaxed/simple;
	bh=aJYkpulMyGisNn8l3IId86PZkbQnvFfLvO0RQQl/2J0=;
	h=To:Subject:From:Message-Id:Date; b=WI2QqltXBLJYeBH73aXvCcc0pTugKMqFsStjSIQyoI8Kj5hlAY4zhRSXQDS1SkGfFiSzpOIy1XAKzUq5Jbdt7TOI5NfePksG/zhmkc2Gn2g8UsLT5jnrm93E292X4H5czGK35aH6GpkyMsIspPv63MxlkRDR3aDWQhcMoNGKTRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtn1CC5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtn1CC5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EAFC19424
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773333293;
	bh=aJYkpulMyGisNn8l3IId86PZkbQnvFfLvO0RQQl/2J0=;
	h=To:Subject:From:Date:From;
	b=qtn1CC5jdFE2OAYDgoPDB6Fc0GZi6i10jJAqGUOMXKi1h6e1WYJCerV91/IFK8LP/
	 9uWlArbh4XiDGxSstnNFetgFzPKaO67hnTckWtSg2Dacu1pJjg8O6crHvJxd88MWEt
	 DTD9X1zP8NnDTB/PyyMEBqwkiasR0JZoU+Y4EaBEnlMYXDjwnJsW0H/tx7xm9wMQDu
	 GzgI4OyP65qUE3i+Xox5PMx5QG+YGeComF490v/b3TGtlprAyxXRhwGxkSjbgZWAEi
	 40aBQaPIzlS0bY+iFMYKh1AINLIMX/X2muKEi14hYCCO1eYXuxbrLLvUSn/7FF7r9p
	 GEMEKAKchDgEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90460106ACCB
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177333329358.21894.10421670737504319946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ed586c28173112f6fb07499490cfd7c744874d891bbffe6e6c110f7c6f1d86
Date: Thu, 12 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773333293
