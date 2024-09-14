Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192D5749A
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726328754; cv=none; b=iX/SwygoY8a96mvGFLVZBCBiCDkCv9994Pl/8mBMpwyrSWvjs49QGy4zqlH4OYUhwhYvW6Cfv/eV5/ItDTDmwBqDU/L/5X/QRieTbw5itSnJo320B/gAglCa6Bu2RwCjUTvKcDMydvB45P95KduHR7727IKt17ivyCFnBiuZp44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726328754; c=relaxed/simple;
	bh=XrUkeHT9f2XndDZYOLjckbX5oyBucdKBSX3pbxX6k+M=;
	h=To:Subject:From:Message-Id:Date; b=AZf8OtmA2M2LeoDrZDGp/1NqAnOp5SGXXLCKxzwnCWyViZv96ex066lKizFi6whl1H8MYpsiJqZCYTlxOqi1zgkVO0Zq2GP7g4toFHbeIp5E7S1ZNYLOi0bRmWZRpFOVXs9lNzKkEKVtBKSOqPYOHnTblrUWzRF9GTXhxD0n0nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VskFhk2d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VskFhk2d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE721C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726328753;
	bh=XrUkeHT9f2XndDZYOLjckbX5oyBucdKBSX3pbxX6k+M=;
	h=To:Subject:From:Date:From;
	b=VskFhk2d27aPPnbsNgsw2Ps3aneDpwLhEXSPo49JB7m2SZ4eMs+cihocDqXZNlZ0k
	 hDO1JBbNYI/8WmRFO/jmvxJRuV/m9Bd2Nnmlp0bJ3GMRR70ya/MZ7Ij4c5c6K5iiZv
	 hhN8wZ4ySmwHbDXsZYM4Zx3h3EDUDtNE0j5abZC3b8WJAxTjO4DWxfXJ9E6j4AmKEZ
	 JazDJ2XtxuF0vkRagoRKGv+DC2BVoPOlI5+tb/phwtySMP7Q0XMfMv1pFsMYGtYNBe
	 pJHp+/qm+E9COaqAY/LO93K7lgvxEQS/Hr1aBXk1kAts3h+73ev042pL4E+o6v5Tzt
	 dk2aYF7webGQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CC0C0219F
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172632875358.29016.5809968255687616423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a924130a94aad263a58b50274e45c9ffb969aa9b5a767193b5e9e5aaa5b721f
Date: Sat, 14 Sep 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726328753
