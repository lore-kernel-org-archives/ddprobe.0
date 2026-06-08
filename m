Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F55387363
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 19:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780947874; cv=none; b=rG3Q6+nWLtrKFnJ3cI61GhRoB/XMd5DIWBciuVx3LVTUQwQ7CP/6HKT2xKgkCjRtMHR1E9nnuD2wvFZEMYNIzVQzWTSVHM2EQcelrEjScblwpCAJkQbq59xLmyPfd081TaSH0XNHPzteuFP+QD8+M2BddKAlXGm3Ij6IZarxP9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780947874; c=relaxed/simple;
	bh=3mB6G6gk5Qsx3CrbE97mTI0917LfOXUUDIkz3Z8EIlk=;
	h=To:Subject:From:Message-Id:Date; b=LwJVy5qavK9Ri4m9BgbDWGUiJqR94HTqlpmQWUZz4HylTaUQnLzwbB7rTVV8QnA1eLGZDkSqxU2dM5+Pu4kKBiEAEupTGqj6oc0r9b9LpkjyDIGkXSSBdDuyBv7XA87DcgrM5MkcjU0U/iwh8gTQheGFwHkALbzIGyPy3Xq63u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7rkPGL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7rkPGL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51B8C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 19:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780947873;
	bh=3mB6G6gk5Qsx3CrbE97mTI0917LfOXUUDIkz3Z8EIlk=;
	h=To:Subject:From:Date:From;
	b=Q7rkPGL7916C8tc0ANJwkjZpFEpASkPArlLbq1kTuHWgzfrkgUuhTYFfYYMGcge6A
	 1fCk8cVL4fO9zMpO+7zZiyv/Cy4sHpYv/xmy8l0m3FYbXevWT54YGOymj+s3JcT9/t
	 P682zV4ztBTKz6I6FqSQzzh4yPC5FRCkK9xEF932/rb5O2UvPD9HMKgQIxVK/qZWtv
	 j4bxltLS6T3Nd6XsLDJm8lgaFvgtWsunB8W27rr2D6YbhTJZKsvZAvHNysUjDf7V3O
	 HjeL83VGe+s0fpKOsDgVzRj9TiKWVzv84qgPcmkqdsEMpC6awl9Jq81v17itotAn2m
	 idIo5V1trm9pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8AB7CD8CA8
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 19:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178094787374.8460.9299880061717199125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a9afd6bb019bdee630d738e26fc0380b610dcb35051e28ef6a46820afe1a312
Date: Mon, 08 Jun 2026 19:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780947873
