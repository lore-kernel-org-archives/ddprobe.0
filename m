Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578F3179AD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 19:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714160543; cv=none; b=ps3cPiEzOxEyVBdFeasu4ACz8Sx3FI5SZdoC8p/F/4eCyRRoKjGWVajDnUS0ZZdkJSvpJM7VJWrqafmYbLdJOhT87rt9tpQtnEr8eq+IRc2n272V8hpnbBMDU/4GNQc+qSVRCmeBffjRC1Mu9rzf5RM6R5SuJoFFvH/NakgEvrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714160543; c=relaxed/simple;
	bh=KFz9OYJu4T+3ebzD7YuuUKDrVnoDEgyWLaD0yYbuzeA=;
	h=To:Subject:From:Message-Id:Date; b=UuxuzXT5mBfMdYDd6VHjSrUEm79PMJZYq72vd2573MBrm9Ml6dSNCMq2wa1luvE8hw7z1QwxFYqdplgQ2Q0Xkmz1KFVf0qUCSKxgXKvNrbcFgp8yYIzfJGNqSMst1Q91D3QYQtPUYyWyAlnpMHLVzskPfcs/OG5G/rXKeOMiahQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tca8G4FT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tca8G4FT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35D4C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 19:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714160542;
	bh=KFz9OYJu4T+3ebzD7YuuUKDrVnoDEgyWLaD0yYbuzeA=;
	h=To:Subject:From:Date:From;
	b=Tca8G4FTcBqfldSu2HD+5X0D8tuuHP5Thx9xLqWVq/pu6k67KUZZzDFSx1Qew7ZR2
	 VEWYD0RhYiOpfvrSozHV9+xt4F+nbyG0cAoYvkEOkSYOqGsAzjNf+CsMMozXC96QOg
	 4TwbLdnEb41jecOUdcCtvPxJibolixFY5v+FQTmf4OOa0jEod+hSySybbby0B4e5Qe
	 v5pCtXaJCje0OcwtIImpkjLboimRRa1KLyqzRNVSoHuufQapJa5ByxWN5hnfMENsPc
	 ZgM3I6h7tCZRI1Cv4XQ034KTNc0UEJoNV/0MeoA8pYIIWuNVTVdGSTBeY1jbQxYVaX
	 cLPbWWzzpCYZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC9FDC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 19:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171416054276.25621.4914406740520823185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9838b404c6bed38e35e422aad663b8f4d19000595eaa1a0921b96d50c0c2883e
Date: Fri, 26 Apr 2024 19:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714160542
