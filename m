Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABB2927183B
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 04:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739334654; cv=none; b=QypWSmUbLLFg6w5fW96syJTPuabogHuPe61bxmgh3RclTRV8RuLJH2p+xiyynt9l6HMrUiJN77uHzicInpsH1aRZMa81Ylhiuz6wajTdOl1jtuHrv7kYTplzea7AdDYrJLTMnUojiQwcK629nYc2z2DqsPn0PFZ3gYmtjDAr3Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739334654; c=relaxed/simple;
	bh=tSSWPOiEnQDOzysynjkmQEFg3/PDUMKk5gYEqrngKI8=;
	h=To:Subject:From:Message-Id:Date; b=Ovi4I7WSNsyWR5Mn97DwK/hgfKfYqPtI7jW+E73bo4kwCMLLYDv+TfR3WA8ddUwN9i1tCTkXaHFy1GT7kTQHtLecHlTicGpg3oz6JJsxxkmeZa0uSW0ANMdBIeQqX9uP8D3MtY/HLKVVUi0W2guZOY/69SYt94J4entZDiO+7OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8GfAIXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8GfAIXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1507BC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739334654;
	bh=tSSWPOiEnQDOzysynjkmQEFg3/PDUMKk5gYEqrngKI8=;
	h=To:Subject:From:Date:From;
	b=X8GfAIXmTXUQSbJsuMsDhpq038qbZjyv1fhVnpKdgoejsV1OVxbjBTXnCqq3s/WkQ
	 XK8v7CZLgovh7Ndm5APjQLZyi7fRmVQ7nxBTxNVQGgUZAeCR1vh9wgxICMV/D/5Dkv
	 E8i7syXoIVpQIvoIOoJsxsLPXhflgdBEivvYO8zdcZCn2IAVphqtj1Z3Vr7b21ER4m
	 B21TZttiX9eZ5YgQ0msd49+qgkg3bGr64WICT0w0ewvpGCKs4F7kwOKo0UhWUKhVvl
	 V/TZ4eZldp1ehOJwZhVNcX6AYspuHSmgXZ0Lsd0NyKE1dT8z7VkR1J/zvwntcF9kwj
	 jlPSP75X9MmbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDE0EC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173933465386.10416.15784867216589350871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fdc1e8e0f62643df148691adad45862ee02fdae8cd15262b054466df7751044
Date: Wed, 12 Feb 2025 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739334653
