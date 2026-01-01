Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4DF212554
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767288234; cv=none; b=hcOwr9JKjHZG2JlnYAkcsRysLLkJzwaxh3Y6imh6IypU1sxwwvSK+muVS4JcQQocQylQ74nFy5BVNs/gdjpvRahFWF0ftYaf0/zhTXIXMwel9MMNilpMHUOf4Kfl/Y3r01mfX8N0dIc4ym4wYXkwEJIFfY8LBNFj+T02Tg7ONcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767288234; c=relaxed/simple;
	bh=FNAqjxeFYFndq6ejPKs8cR/BoZbn/981J1oI5szo058=;
	h=To:Subject:From:Message-Id:Date; b=M1jEcc5yHd5KDSHDf5F20GlIx8ack/X1lYBseOHqApj6lzTuDC3BfDfbujMPCJH5gudTp/XdE5aKCzbrGwX6IF86wnwg6uvJTC0hCfmEK8iBsyEkUWVaUmyXHXziGGri+JSylvextlR6r/anmJw5ZYHaI24SLkucXDToufeuWco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+NgK6D9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+NgK6D9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FA9C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767288233;
	bh=FNAqjxeFYFndq6ejPKs8cR/BoZbn/981J1oI5szo058=;
	h=To:Subject:From:Date:From;
	b=t+NgK6D9gEsJsGnqtUeUyQXhONQqYbdYpULwzPh2lT2n06zfKS5kdH6o/dpD1xwC1
	 q/FHxKDxF2tB1YavLUELsFn7r8jppgwRHCXTkbSxkGr41TYZmX4OC9Pga5qDpy5aad
	 lc/nna8Q/WuHR1NsnD0LC0t7Y2U3BLXJvWNd8ZXcMp32AXTBySFGZaxWwSebExM51r
	 dObhuvZIBiGnH0/hpxMRmAfniFbBEgdfeRV/ZpFa3noQUCIVScTX1eVXqqsgxP/pOe
	 EMwwKBeUL5YPz5YLmJZk5kn/kCphDayZfaGMZLvzuHJz36Zt6KFYAQE93qZCj35uZU
	 f18KYsriXNbTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F83FEED630
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176728823357.15023.4497052034578847870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 174947af4993d2355d13a28f78c9735df5ff6c6e2aba14d8394f83dec494bb25
Date: Thu, 01 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767288233
