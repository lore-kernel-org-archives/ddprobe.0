Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3915D175A85
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791775834; cv=none; b=FvvtclQLQr7/xlmKrDQTLW82bRlGJ+oPEAkLuPd3ag+JAI3lQloz/AfRJ2mVQQ4/adUZl7glrPywMaveiNPJK/7LbB4las+Dh6Dm7kPvYP3C+zIDaaeMO/9cJQZbbeHvBDzdqbMJriBKKGbv7AIgn1Aw8HIjhSTJNyHTgQOLraA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791775834; c=relaxed/simple;
	bh=xh+NVVoBCACqO3xPUu2gO9h6++XPQJIlMpZcnBsYQ+M=;
	h=To:Subject:From:Message-Id:Date; b=bLntpFvUy0VfZDJVmQGFzz5s40H0k6MkKZ/duKnsLF2p4MrXIYnNCF8428BbmadHq2WJ/HU31CNlEowo7VMwdTKYKBIrasn5Qa4fonWAFgiLp6tGYa6WwjzuH/fJe4U9jOXLaXu6BN1fzbQYPuvXfQijerevzCrE3esB8ljjQiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOZUkK+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOZUkK+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9523C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791775833;
	bh=xh+NVVoBCACqO3xPUu2gO9h6++XPQJIlMpZcnBsYQ+M=;
	h=To:Subject:From:Date:From;
	b=NOZUkK+ZQ6xYO9f6/L3+YztE24n6Jz5ab4VVslc9+Ibbzc23FZtppvY6N0LzuKpOg
	 UdygS4qOlREYQrF4guSt3oj17o8RwdpSOMlUH6uCmH+YqNSJ44x2+fw0SqnaWLXebu
	 zxUCyNVCGiYHt3Pkv6mrz7K0N/f9IEEnkPXYM90NQYKeR6d77E650vqOMtXuFUlO41
	 KNPmNJXtpoDaLHSeTtIQQj+yfL2pOyUHXoaoHQ0kvogLgmFu2GZ4a2Hs9rg0EIp5sW
	 e+IpvGfYRXCQe0YYCrp4g5A6v+G2xptvzQkVrlnoud3b9ZyndAH1+E0e0wv+SAl6ZX
	 7bvnVi5pMOJsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19A1CA9EBB
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179177583369.30679.9110516657876947756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3482bc401179f1ecbde4a036da69b6bcc8ac26d1e46715b04816766f3a21c09a
Date: Mon, 12 Oct 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791775833
