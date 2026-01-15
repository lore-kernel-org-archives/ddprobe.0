Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EB5286409
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768454634; cv=none; b=sWKj9kesYuPe1X5Ywy8OkzXGH9X9KujuM+BmISBBMJS038W+HdhDLAqHFawk+wV+9l1QDEbHLSyUIekW3ovNBPMKHPUkGntfZg1np0hDn9sU1KeLYHuikvSPnPD1MevzN0vHzI+eJ7bGC9/PQR5rNfZIBg6WRXnJ7cmRVqaNFv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768454634; c=relaxed/simple;
	bh=ywNLdez26wqMsUwt1D8g4SAreRmrOo3salD+ydxCWdw=;
	h=To:Subject:From:Message-Id:Date; b=bzr7BfOH+T6nQJ8ZeVox+O7vigdMtSkxsvf8vSZ9oE/vVelXqTPKrceh0+V2XYLxYaNhSJWm9Jq45jypcx/GBXgbX6NhpPPHk1AUNk6pBsz3ECrwiTTpZnLTzvne4Kh1V07swdVgjZmHYzsMBxIAmBNNcF6M0Sn6K439KLbXpzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czy5TPt4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czy5TPt4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BA5C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768454633;
	bh=ywNLdez26wqMsUwt1D8g4SAreRmrOo3salD+ydxCWdw=;
	h=To:Subject:From:Date:From;
	b=czy5TPt4Yzbyla5Bdb6Ck7L2i3cwOdhgAs7YxD5W2ccA7NVU/9Drq+mwM66ctRnoX
	 2sINa/K8+8i7oHpGlodjb62cWQaAce1pQNsa16CBdpPDAS+XyshNFeBjiO9H29vKjo
	 WETXhH2b5ATtTj25XGrRY/J3O95CpHtqFlvxQtuf2pcsdX+ZB7Est5chT2RXDhDLcM
	 /v4cMzZBZ1w1+CIPcqM7yXiP1tN/LQyodebZ7A8wuX9ZVcQ2pSIwP6XNBoPgj6iK6U
	 s8FVgtSh+eVnhgsO6Bjn+ump/03rZ8PesP05StiJUDOTFE4f+4GXRdLCusaNoJW2k1
	 MdRDrw95/QgVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95376D3CCB1
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176845463357.20953.2285063871606487540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e97d020ec4a8870012d8f91c9f2710ab0de70a233fa750771165551a9209acf
Date: Thu, 15 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768454633
