Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487D863CB
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786403434; cv=none; b=VWTzGecJXNxJOW2pN1MdsleC06JYiZbMXvKmVvCfcPC8hg3sly9PZV9Pq87ae7Kdox7GrlBXDypiEdgprzPw9Uz3XmN1u/8LKEjWfqXWnfVAywJuDlWdtWjWtvJlmG8s8qMhVj1ziHzDj9dg4SazBpXNRBfFYbVTs10vPuXn/L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786403434; c=relaxed/simple;
	bh=1iUyfo4hc0DC2S0PnJvBB4ONjOnWY+N/TO7nxFPv9lw=;
	h=To:Subject:From:Message-Id:Date; b=fs5UjPRo0Lkv595fyVE5oXoMvFOIAJTQM5FLxO/S+/4PncncfelLJjMk82SHkHU6VmMoRQ7s/MabNGNESlx+4eXVXMhY0i2T6Rwu1UgtXuPhzvdJ3awC364ISIbHLFkxYobw+xIrwbid6ITVs574k5pB7xbP49oioas9WLKHRzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUSKX92Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUSKX92Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE6FC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786403433;
	bh=1iUyfo4hc0DC2S0PnJvBB4ONjOnWY+N/TO7nxFPv9lw=;
	h=To:Subject:From:Date:From;
	b=KUSKX92ZOXzm8SLO6ws9jWFqXrdRZqgyWN+cmTdggdBNoyNPKajBhoVpgtHvPUSMz
	 nIUz2Dfof1zBYfFSQsPxL/KNgTZu+2pHsaqQ8klf8nKQRYSV8UEhMqUHeb5lO7Q1+w
	 sZ9MW2enbnfVvSQbBoavlFv8i9egK7dZjeCZfgjrpmF6EukdjKP+Pfl7quJZucLO5y
	 +WA+YDbDSCw7RIzuByigOcuZh4mkbskG109r2aHkp8owcaIbTFGHDgqn5DIWM/NpGA
	 d1cAVEZpBs78pWLWkfCaEIS50ZyBFKV80mMC6PZEYvoY0vRkGmcwTXtPHAydPjEVhb
	 39Ak5eXv/go/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE66C5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178640343368.11692.393930516668562080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e348497c41cf624df4461d1d0761ca75d59ae23f3160d029440d22eb267c7967
Date: Mon, 10 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786403433
