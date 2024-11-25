Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C1954765
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732531554; cv=none; b=AL9RF6nK4z1xrOUnHiKQ4vWfWHlKuVxph5GVWN0SvvJeK5GwHA63U8HXlkNN9R0lQSynLW2w8eKzsXNxgw3f06BjLHzzD7yRUmsBcXH6VMoFItBkw/taHQT37x/wTtmcTQn32bif3eZUu2Ot6nhAqA2R2Fpj4QT6m20xRd3S2Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732531554; c=relaxed/simple;
	bh=mPQSKKwlSzh/nEa675tmAa0hI2Rl0fxJ9T02Zj18myc=;
	h=To:Subject:From:Message-Id:Date; b=Oqop221Av8dFWuQO61D4Fbts09kOK5j5mg94UPxpNAwLkk3Cu/6GTt58uittR95v8IdYnkhSV0wuk3K05Ra2sQl//WzDAF6kt0S82mJjlf5OA3tuanCchQEyomvjcyWBf1PTUn/0B/c6AZ9Kwz41fvqe3FJHbRjsPpQpXjnn+GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jogr2W+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jogr2W+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B303FC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732531553;
	bh=mPQSKKwlSzh/nEa675tmAa0hI2Rl0fxJ9T02Zj18myc=;
	h=To:Subject:From:Date:From;
	b=jogr2W+Ig1Z088LC/Qjy/ZkRQhwL8zCDS5+yQHEl1Gov7yL8e9Ok8nk4Vb6dOF3oN
	 mGpjPw+mdHtSDxSHZwsIDNI7n2yhtlLwZn7q24WALWVSgD/45dxLHYNH21r8OtgD/B
	 OsNVpGeKNIz1zLvJLJMD3A5POLpOCwwyLGno79ANLLDnGCjkQ/roxFTiBCa/CN9FKv
	 pzqMLjPzlT+axY0Hy3EvG1H5wKKGcKQrj4DtInVJe52GjcJzjzxcXwvsXVXFW0eQal
	 PsYnstFzXM0//hjEeDzpfTdyK7c6r5r76A0StOcW98Wt2Tt70/nLEy0lPUTncGcPBr
	 tZCTYyBvr4Hxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B748E6689E
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173253155362.2557.6315357963941206472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f68c22397c587319ee32f92037bfff2ac89ecfea34d89a917d7f9965fe90158
Date: Mon, 25 Nov 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732531553
