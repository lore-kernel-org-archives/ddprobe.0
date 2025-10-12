Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD75212568
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760310594; cv=none; b=s6cksO81ecaMP2wXnB1sMipTpAAEv5G3TVeoHOGUEGVnzTBtEsvj1JnQOBNgVPs1YfHWxHd5J0+kU4MpjX+SDFr9XueCVwuOWgGIYA1p7xRdWwz/wnRDvmBVjvbeURFZ5zGCiq5yhU5hnvgy5NMoZTO4f3x3/0X5Nq6sEwD1tVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760310594; c=relaxed/simple;
	bh=iRIzv4wzluQ73b2O9usFfqeEjppkg5z1NRgoakwjtgQ=;
	h=To:Subject:From:Message-Id:Date; b=Z90hVRZlfv5B1ctV2ASkuZF2iztSon+frUK3JERdD8blxTlIfaE+liqzK054UC3G3SWhZW5IxSGzuOHLBk9ig27B/7f53xr/GELPWl5cBazsKpSyrU5B+VciZJcFvxlOQWPysMAQvWPXYhQW2YymLVg1AGJis6HIkdLa9eErH2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGe+k62g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGe+k62g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45FFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760310593;
	bh=iRIzv4wzluQ73b2O9usFfqeEjppkg5z1NRgoakwjtgQ=;
	h=To:Subject:From:Date:From;
	b=gGe+k62gO966P3OnPoe91df6lh8ZzFNHiDahqZWqCADeImGzw6+JgHPTiemEBeXmW
	 4W1EmsfdXq6plvbcxVzOUkVAYF01EhC09hOh9j1ERhxtmCC2pGQvRDp/FQBt+jrCnR
	 dxY1dSc08cqtlOCkUCi34avCMcBVekMRZBkCbFv/f8svPUW1qScbHjdJzMJAtO2V6y
	 60oV+3KH/LIZRMsODRFVYdDCqR+BNhWZ0IOrLCEtCiMnxZfkBKrV7wpBwmnNZ6BjOA
	 2tZms1LNB4TIfwwRpKPvOPkXxiRXcAef8c9qlmkr/I8WeiWTbLKBCecxl2zEttt/1L
	 Xu2MHNVVSnVyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B10CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176031059358.7532.16880815814740643368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e524567a6d92dc6a49f5f712e322b89ad28cbb9f8704bf55a03a7ca909a7323
Date: Sun, 12 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760310593
