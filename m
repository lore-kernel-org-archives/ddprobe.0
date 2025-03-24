Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A912198833
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742855394; cv=none; b=BTJ/4Z1qsKa4KTRF54mvFK40BHQJOQrr9iErbO3X+nPvs/4TM5pPOsVWusZX0KzB1ibbpe09dOwf0YxRRY+s+LyE5uvQjIZwUEk4sI7wDrWmFvnPPPP9VkRd9AkS1RwRpaiMjq7/4L9jiAxr9bXoNgA8ymG1wBwQl9PBS3WYCUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742855394; c=relaxed/simple;
	bh=gOb+1B8ARnx3zLJ/4zTxZ0sfL1rVOw1bauaArTiulqc=;
	h=To:Subject:From:Message-Id:Date; b=Nupy/av7GiByYHPXWiqFl5iv1a3RFH88gfLeVZqFcol3UUALBm6A5ZYhYtcs5MvqqeGKddwxwy4tRxPdhV2m553Cy7CUyPfm6P4lzNuia4ojSKxwKfdybuADtG6euZ4hT130u+STARf/HTKWULHH3RZvXFcj3Ha8scT7sHy1Q9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOSHzhxO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOSHzhxO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2F7C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742855393;
	bh=gOb+1B8ARnx3zLJ/4zTxZ0sfL1rVOw1bauaArTiulqc=;
	h=To:Subject:From:Date:From;
	b=AOSHzhxOMiQU+j+t1LFrwGhgl0Hl8XsLi+26aoyBbUMsxDO19rTovddI4nyAjomyx
	 uW4PwLU4ibPr4G6npk6ziDwkQp9klTr62epijCA8LlP9hQCETCph1YGqcrjZI/Yca9
	 adZtxn+S+MuGDkRRe9x7FSpwMuwbUXFBCvVusByOAl1BNbagCFC6o7KF7ZT+mjdi3a
	 o++U0wjdiE1O6KEBUWkWS7hxRmw+ryL6jPaiKolHEpT3iiYsWU7rj8rJIs9Y71t5xk
	 BOtmWhWVY1C+rISTqDPOdv2kVU+4FbUAgrd3yBakIYagh6NSDkvIV3ie6LaAT89oXg
	 RLq2ItWVlFlcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E2BC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174285539364.4639.2558704807173541072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f369ac2298d550e86f0abf51aa186619879f8dcd775e0a40413c6b96ca31626
Date: Mon, 24 Mar 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742855393
