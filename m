Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABA116DEB1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765155174; cv=none; b=o+HxxmW+0P7ltKtCLBlHZV9pHKx6NSq/du/CcshKpq+96a9W/c8BSp7HjAqcsFsxH7NMqi/BexT1ARpJxsK/JWWQ9vD3O3JlrDVW4MfZ/s4cQYMxBq00rMDZuEzOhzMoKt9zV6eYri/xrBgNyTG4X7mBEcxtW5EU0w8tOyANCuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765155174; c=relaxed/simple;
	bh=PWgeZJL0ioCR4ohRE1yViVRK1LQDZK4XCbnP3OfNCc4=;
	h=To:Subject:From:Message-Id:Date; b=I0ZjIrdaM4ZSKwSoHp1hfVyndU0UPZ3K1G1rVY6TJ6HzSb3yqCFCOXi4Jr+2GAplmfeb1gKCBazouR/ZjZj8eFvoZ5yFVczeu+oVGD30gvXSIxrgfFmBmGIWwfakWSKP9n07du6ngFiKMA+4qEGBowITIoynpvDyYEL+L6aZgws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNnLOcb3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNnLOcb3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB945C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765155173;
	bh=PWgeZJL0ioCR4ohRE1yViVRK1LQDZK4XCbnP3OfNCc4=;
	h=To:Subject:From:Date:From;
	b=pNnLOcb3iBa3XmP2pxWZXZCrEeTQTIbQF5FJ1OTFXhgLcTyaPzaYRsVQzqFbcdLb1
	 oRYC7XMvKECFHzj2oYZfbQBql6+rMWVsdxmCm9Eb4pMwkxUXZpOruA+M6hmMxRvRZr
	 tBpRtsKvBvLJQmZ8/j0irQ9mvBkZVG/fdMZinmcotiO/ay1IktYLr2FH7eXG19/ezp
	 WIWzQAb+KUxlXaaxWvxxxAEEfVzfxUkCoov3SXPm9mkyXVX5UMxQ9wxLpuqnYBOaZq
	 13vi6LzJNsW4ttRvTXu/FXhLhtRbAV8yiq6nnLaCFQ4UROXe8Wetd5tEMcFqY6QP+l
	 sLsUg4XaX98Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FECD2CE17
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176515517360.18273.7350794750833968443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8eed1d84205094c814b39ef079ff005b808a44fc85ca30a46fd01c0be9adee3
Date: Mon, 08 Dec 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765155173
