Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279EB34D92C
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770073434; cv=none; b=FY060esCCH/uZV/Sg+TdZ/hft+x+meY5mivfVIiWZxP0lTjYEndgez58BaExaJPAWVZIpCKl3I0H3+KxBv64YHzMJjbWFoHwK2PPbkG45JCBqISa37FVSZ6PRPqq8ctvjZudTx0+DOjvCRiDhjiqq5XVb+kQkB4Qb9+STzcZXWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770073434; c=relaxed/simple;
	bh=yeeYtF1Lw11m+FY7baFHsTKxdsB4rXhS7emxFO/fvRU=;
	h=To:Subject:From:Message-Id:Date; b=aafgEGTCFggkUz3Um6lay+s3a5hV5Kmn0koRCvmAE7GkcTUBF+snMSDjuOieZ+0eaqKMFWgZnrrzw1dR5jBURymzJ7ogmo8HndEBG9gkK70ju9C2FwsdTOwyQ+JnROs8KSKUjl+bqz9IKRz2yp8LU0zd+2A9EeAnN0T8aniYC4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+s+nlQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+s+nlQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8BAC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770073433;
	bh=yeeYtF1Lw11m+FY7baFHsTKxdsB4rXhS7emxFO/fvRU=;
	h=To:Subject:From:Date:From;
	b=L+s+nlQQrGY9kqKOISidJGp3zy2OTdtB7FF00BGCL3Wy3f+Em40ygf1toghcrceaR
	 Tkbomq65Nx6p3J3julesnpcSy/ZS41dC2Qdleiq9AoK/JJ7O7xsm3sZudcBvRz2K/2
	 iVfHeSICW1XMtQYTYO1sZNjcctnjcLfubuhivjBx8lbWg85+iB4fJ/7i4E0o81Meid
	 y6tvcuVen73n9ceil7zCz23j50c1Js9MfotyGWDkQ/n1j6kCnuZQSxGW5RaQ5D5EOy
	 en3JE46j3WvF9VnPCQOXuJon/EMmXqlq0WTobCsCRXxVY3Q4OTeqwDOjg9SWcBUqAa
	 9GfkQYKRRU5IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5B8E7FDE0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177007343365.16364.12474328904010377245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abdf967f59a4599e4b2e40ddf690fbec078931965f748e9322bc492c8a8f0681
Date: Mon, 02 Feb 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770073433
