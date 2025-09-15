Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19A638DDB
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757932794; cv=none; b=e3hpNSblvmvpFQ7ubFZVa2/AH4QFFRuLdr663t1YgwCqru91C24iBYxkpMW6y5NgACd1OL4LkFK3gOh7Z298xf1/U3t0ce5MK2TRP7FDHFU6pA0eU0tttTJHNv90BeaPgeqoVBBwEMhgAW725hwE4FED0LUzRu67QED/HKCVGzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757932794; c=relaxed/simple;
	bh=aekcFVo8Xktcg7fsUjnMAw2bI7YsgVKmKfVRxZ93gb8=;
	h=To:Subject:From:Message-Id:Date; b=nY4Cj40cq8f24Q8n1lnAdABX1TXwjsP2kY0zWK29yaarE//ZIvea5tH+pLyDr7NBUQ0DX2eUSuci7mZVqzL7yXZLtdQgUz4LFdxJ0It1K++jmM6uzh2+tl6lkY3+4PxCiChMwbAvtLjSKO4b49gycuE/EaZxRHSeRJMlZuSbdRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5lCHry6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5lCHry6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C872C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757932793;
	bh=aekcFVo8Xktcg7fsUjnMAw2bI7YsgVKmKfVRxZ93gb8=;
	h=To:Subject:From:Date:From;
	b=N5lCHry6t+1wPIIAFVopsCfpzcmjw+gxj4CMdNOXh6YT5aXimyQhRu77flD+KtY21
	 KNvkxayFXMzvNZsdEMD0jnWAEH/bM9X4a3gjD75ae8GsQMrkzWj1uaYEpSJsxHOlaY
	 uvkn+eUNvxpbTNqleEMHirmgl34jxY8ZVjn1udRxOcDJgqNZKDs5t6ZPNh1tfFCDqM
	 mFH7FUJv57O8fmhsZdDbCIxRnCpXdkikcAK2ao4GLNDIQey3wzHmEqR9P0FrGGCfBX
	 BGRsiP6WSzAIyCDYsh5XYWujrup+8ux2cz5tQgCtTVj4WOXkL1V1HTS5DvHvol5+QI
	 +4XWRWftcbEKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC35CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175793279358.17727.4764714537488290042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d3b4aa6b78bcedb42d71386ba97636de6f8060309948163a0526a0feff96410
Date: Mon, 15 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757932793
