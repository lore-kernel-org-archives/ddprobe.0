Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FF33CEBAD
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773225894; cv=none; b=YMsmf0j03+QYoal4zNxChZZVe/tA9jIlmQtN9FNy4crHMK58f0U4N0uMBJsU+EFSUqJfeD8mcDjLTDDBZYHJF3k72aidfuJv0svz7j0srtOCocXrAcOtl560r0nz0EmkoWmW6Gijgl3OQ8q8xaCFxAlF3iR9CdVxCm3SueaPj3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773225894; c=relaxed/simple;
	bh=30trHDk/RNPK04OMAUhSMZ4CJK9I0UfGY1dQF3+rA+0=;
	h=To:Subject:From:Message-Id:Date; b=MGyLShxJsL3hVqr+pg7VjGUVKp6tIYkA9aa+Z3LdeAoCbJHYvkQU8EoHYSW1Zb3CKRV5qyWIl15UGKzo/+F2uByfpt1jkQzTHOjKvE4rJWmhc6ggZeB1ZGDRjUlZDUOXLAaBxmogylVr/QLZHRjHCl3TxzzX29lLGV4Q7pWKEY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQXsKJtn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQXsKJtn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70DEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773225893;
	bh=30trHDk/RNPK04OMAUhSMZ4CJK9I0UfGY1dQF3+rA+0=;
	h=To:Subject:From:Date:From;
	b=fQXsKJtn1x0R4hZ7V6329CoX59VM2Yeb1eVLGUJ9cSQixXw2blKdq4P6BA/XCxPJ/
	 xsQdBWrxzuErHJE6vDYwEbmoy328YtSEpUIwWrCP4xtnIC4mS3cCS5BFIR1dB6mOwv
	 a7cm9iwBB+QkHDsfrS03EpBnwFON8VP5IIzr9qUiJwCiYC0H2y4zXiBRFkMGorPQ1L
	 O290mghu0WWufDARIvXDrG43mBRfY8oiK2jm7VfQlmDOfwSK5PPQpuDjqt1cMf0nFa
	 NSEpeOVBayulOiVhwhFFIh0KUcBaARHudNFsOKVXMzT9yVF4A+1r+6NOZScaCXefcz
	 59p+bCnTUUFug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9191F104C001
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177322589358.29990.4551857920248152690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9fbbb10c6f14c94aacd4bbc5f7eff45067e31ac8d5df52984317f145432aea
Date: Wed, 11 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773225893
