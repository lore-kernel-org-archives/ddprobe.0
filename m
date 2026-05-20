Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184883A3E85
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 09:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779268834; cv=none; b=DZ9h3ndvuKr4UyXQVK7CFpHNslw+ucBpbHT8NdsUqMHmj9cbRLKdr1jqosjXKfT2AoSfuSqWDyZkJ2SOQIt3Pv+h7AH0NTezZUZr1yHiK01xjJToiFpzYwUXl7+dLyuUCEqBBzBzxcjnW6m/0uvBKt83UO12WGOHk5hTvWyacSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779268834; c=relaxed/simple;
	bh=99mT8x8TYC8bgwbgrO/Bqi3tKokWMZNnwWHAIramql8=;
	h=To:Subject:From:Message-Id:Date; b=XMBPZ8aSb5Cfhr7bIbdFe+wbVxycR5Ib05PdLPuZfaH4+FN5um28hIQpaGnJWfeqPRNdYnL7jsqse4AsCxvmn14eZQEvX7MEildn9LCB41+9P6/2AjpWN5Wfjy5P4gFs8mFvQHDmJ7RDWLLOkGFiHzuxQTIMtjjwgpKSbNY6XyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXAclnZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXAclnZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2C7C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779268833;
	bh=99mT8x8TYC8bgwbgrO/Bqi3tKokWMZNnwWHAIramql8=;
	h=To:Subject:From:Date:From;
	b=MXAclnZ4gfC3GEF/431+O6rDEO2bqTwBj9+KCcXQLsauvKjCXwxxOI2PK6bTerIWb
	 eOqlUIM6i2y9a5WgCNos5JakDJPvMPBPtMVzMdZ4l6rCIkLg0/X91TxIpvw+w+tpuL
	 e21jXnlkUB72pUr6lPSlp+Y/Ym3mpAJPe8EjDiWPsFKr3cOBuNezZn+Xojby84ELJ3
	 5fWMofa0XZwjMjiKwSH+15nY3zCLdUe+fGp6Oi8WeyZfWJPyJY9ADhO/OgPkK88w/Q
	 hL34HgNZzZfNn1ts0/uQ09GY1BIn6UrMe/wMqRLhaKLKE6ZPdWQhM8CxuI2Z/xo5qj
	 yJI9si4uFtwmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B470BCD5BB1
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177926883372.27440.5883690926396235579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d27fb0ee9693756e9e9517dd0aa9ff01781e7c76ee6fe518e1a537c74c97d0
Date: Wed, 20 May 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779268833
