Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2752F4314
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749766194; cv=none; b=cMjKL8dcKUdz2y4F6rZdxOtlMD/5FSDyIID7URmGvwdZt4FsuJp5vMVoxLwlyKvpH68CJKZVU50knVlPlZsYxgGGA4Fy6a5A3PSUZ6phuG9H2Z1+gxOJ02V2DdVurEqyDNsQSPpCuD7vuGA8LKqIFOXJcaCyqrktjLk3CJOZic8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749766194; c=relaxed/simple;
	bh=ND7IpuUHM7iBMhJp3PMUBJv2Jn3K0Hc4jpBqhKSQx2s=;
	h=To:Subject:From:Message-Id:Date; b=G76lZ8APW1FBbjDyMFvZO/W6Z9bZ6ik4W5fTBqd6C751KMgurUHSoIszL+sYOo+ieK4KEJadAbEnO0EH49DaHkwXVJqaDiyOV/wBwhmPAALZvkSCYhY3FNoNn2nqwZDg6oKNNM4dBv9UtNVXR82KsXvywmGdjmEpHJ/bBmBCEcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPjSa4qS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPjSa4qS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43D9C4CEF2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749766193;
	bh=ND7IpuUHM7iBMhJp3PMUBJv2Jn3K0Hc4jpBqhKSQx2s=;
	h=To:Subject:From:Date:From;
	b=NPjSa4qSpoA6yyCqm8+OMI35+J112HO0PGtgYVgB92YkWUKHq4pvaIQLle/ePpWhS
	 vZK3lFL7fLCDJWtAbJSTobiKsHuexn/ahA4VsHIMwYhg/BOkQ4l5brl6BPKEnByTbs
	 nt/Sa4J1EaXYr25SgMpBmefrOb4hK1ZDf1tfPDl1wwEnGWjkH0CVUCXmZpVwEGnjVW
	 +AKn3IchGsftz2iCtf29G7m9mkNgLBzdoiMrU3kxFOhxUeWX4OiKEuLvTrNBm/k85T
	 Tldy5iC0ffJcroLdubU0f/RdbpAMjIhL7x4OSOb3u+9H39D3wtX3ukY0OSNz4tnauZ
	 2voETL4RB7mxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA27C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174976619363.21158.3465784012550861569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 544bee88b9562ff3b971723c245bf0402e17d615ef2301df394a86b75ef7d4a1
Date: Thu, 12 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749766193
