Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A36F26F2BD
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759159794; cv=none; b=pm7bF0mZDC8EQyWwOZK4IS85a4FRMvvEHnV/IcWYQDVnFxa+UscoCUtLKSv6OK6FWFHJm3vVM/ghbWTpafW8M6UQQhdPm3Nj1WboULwWwJqVNNr/7p4fKKwUrkPz703WJUyH+TR6FmRKcvU3TyooMzP4s1+7liSX+rg+QZU77ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759159794; c=relaxed/simple;
	bh=3A3KJgj+3OowcPb9k/UG3anN7fpk2AKP44l8CR0ZeX0=;
	h=To:Subject:From:Message-Id:Date; b=mWXFTpZej6tL37HHv/9C3ypzaBiyShjgt6q2or0gslp43yeondaZ4jKuQwrB8ywSU622rRMmtTWkYHu8/SafJnRakvTWRnIEU1HRSdssb//OONOPq2bgXW9iJ3sLr7UpUGkoTZBn1J/Ssb/WIzE2FE7LSVS4raxtzBclCk1PAt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rr8NXlYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rr8NXlYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB09C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759159793;
	bh=3A3KJgj+3OowcPb9k/UG3anN7fpk2AKP44l8CR0ZeX0=;
	h=To:Subject:From:Date:From;
	b=rr8NXlYF5NaBuDQNqxu0BF1G04jnTe9XFOjA/SxMl5aGMh52FGOwd7lD5zHVuSclM
	 TI2Iyah5U+rXMuOuXdOtfAKNnX7YoREqmkJ4h1hoxsuyBsqZz3g/SVD2MaJ21Cmkwc
	 3ffJqw/RjqiuRyq7dFIqShItBwBiD63H8WAF8rQ8RPIjZCDl3IqreQVvs+lF3/XAxt
	 pRf7h3wYQEVMNGLboysMOM0ZOtJfAEfwiV/bd1CR8cbq4YTIBLNHDrlF/kC+ZI50Un
	 m3yBXFgS+XR+Xnmn22SWhSQPyLjkxSy5W/jaWL8uPZKTvA+0zdAdix+o8JCFID5FgZ
	 DZBB3ZFdO/dlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDDDCAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175915979363.22949.7359054484004731137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7b8ebe0208e9c418fa07a3ab5ce03a406664ff883fb70dc03646d0afdab16d
Date: Mon, 29 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759159793
