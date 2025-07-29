Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01B23224FA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753772394; cv=none; b=cMvYfGUF95+2vvhEOsnQHa8i0x6m+1YhA8eJ2KmOj3m/hxcXKpD20fuPI9XjVUKbeAywa9s564tzdwejEbiWzGy7Y6mMwRIgq2K3ccj3XoG6wPniiZR5wv6b0RDG0wlBMX6hiBjNiHPhyAyVejTpv/bux84+MOQXEwU8pveyZwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753772394; c=relaxed/simple;
	bh=39LEtz09xpjRAQZu6hpARMp8Q0E1Zf+bCX8udN6O0Mk=;
	h=To:Subject:From:Message-Id:Date; b=NiR6V9VfDzzG89m5RnLl3vdEIOmmpzzWXoa04mJp07IFpKNk9x2w1UziQG64iH4YtBYTOpLg4vPZkMbtgs0SAxkNcKtMIdgEss/SzMtLhIvfdJoXEXgztJ5IZVU4ZHULsVcssOkK/Ugeb3I6fKh5xgdltyqf/8Us90attBHP+28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sL4Wywq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sL4Wywq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D65AC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753772393;
	bh=39LEtz09xpjRAQZu6hpARMp8Q0E1Zf+bCX8udN6O0Mk=;
	h=To:Subject:From:Date:From;
	b=sL4Wywq9APzoEwbGdyPr1ZSTDx3fHtpZPOX3nAVkEwZjEtJS+pUuN0ECp2f6Cqlt2
	 HhCNhke2/pjzJEHDSL3mvOf8CSy7KxVg/0VnLs7T1CaFu0uiE5OslgKBwBUyieF2RH
	 egp4J/tYvADHH5wNwUm++m7aKT2Li4b1qlrOa89wxxd4O681XzFJN1yz3FbCdL3rp5
	 BTli9gZC0n6m0bgbYoTcHArfCYFGp+QOn/gTE+rdiZOzhTb17LDy28e4i5NkRf1SGv
	 WJoWN87J1Z/+q4TUREOmUUwpEL6qmRK4q4blCELnSrEBN4hYI/sgePYKCMBNZvNJZo
	 bJt9AmR8e0wXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F72DC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175377239358.23446.16326318562481793069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b276b9e183319aa56bc6d13a2d22fb1e76e9d474b8c0211c9ea95be05621ac3
Date: Tue, 29 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753772393
