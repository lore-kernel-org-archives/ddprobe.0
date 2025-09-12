Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB3D21A421
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757644794; cv=none; b=gWGE6jEFkdbQ/Wk7JbEfB3pzs34Bfh1YgabxWBaNVBcvlvRUoGgB18JV+lmxkOgfxDIxdaIrCwJ2OIhZ6IJWHqikUNqcKc1EVIDlQ6C9nC015xURJ5r+m5XPzzdpKrjkQimwew6Bp2WIMYadZbqLFpnn8qiSVsbMJseQ9DYChQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757644794; c=relaxed/simple;
	bh=jCPu/Ps0+ChOWVWX6qbvjLA+MPKAvXLfer2VqgSBv1Q=;
	h=To:Subject:From:Message-Id:Date; b=Nhb+PeA2pQjn0MP+U48JZ4hREpBlKnigF+Ucomyrw5ncKdN06YCunDQOWQdVtoKiAXJC1psGDZNxBS8+rNccBZbgmy9r3QBqc4AApBKp5rHdwRCnp8bIH7loqW05jF/3gbiq1lCdK2kyDpaRhpnPB36reKS7iXPMHH9ArQUx0S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cl99XB7u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cl99XB7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB63C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757644793;
	bh=jCPu/Ps0+ChOWVWX6qbvjLA+MPKAvXLfer2VqgSBv1Q=;
	h=To:Subject:From:Date:From;
	b=cl99XB7ut5zc0XV/aIK+iYj1E6XYOuS99IHauThC+3cvasfwM2rVBY9uB+kGOheea
	 9d3U75vm2mWLoP7a3cwczSH5XHi5zshcoT7mDA4deIBVklXsvkkczdZfFir4RvycpD
	 6DSa+a8eABatNP4V7Fqrm4hvSlhM9fL8rg9xzUBGKo4tBFT846+Zc6+1XYeiREm4bB
	 iB/7B+fUDaY+tItkEDmC/cHVDiM0/7V0SxcusYgquCCBZSIpWE3PT7UXLYMT7o6yDv
	 SFCyAhRY8oBkF2Vr30Coava9xVPX3/adBZy72zTMZ62P4ZVnuCVxAkuZvsdJ/3bnR3
	 FJ7X+ww2vlBhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900CBCAC587
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175764479358.20207.10971752484356888757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8851e761abf8c39dfd2f774c92cd2e5900d4b62c9999fee4353f9b400a64b15b
Date: Fri, 12 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757644793
