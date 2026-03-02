Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4991A9F90
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772420094; cv=none; b=jnosa4xa+wxNFEUWtfXbMh04WgIWylrRLSAqwcm+O2RMX6tGe86FJMvdFzqyDrnw2TU1nqaywDoXTDqOhfKiKGHPvZ+zWHCuhnD1f6PMGXzlVVTAKBMWWdXQnRFxOjLncpfciMZPv34oTabnXhYDHRqR67O34F0wWeXtbAabrc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772420094; c=relaxed/simple;
	bh=uNd21jwdCLNBnh1Rz9bCfJ/AlqPLWZZHsFq+bVE1OGg=;
	h=To:Subject:From:Message-Id:Date; b=rYg16OCMaIUDgojMAC5MGWe6UXVMjsrnp6RENXuufmMfp+v4O0JzI0PNyEOz/v81o1YKTgcDefpDEhvKOeJgCCYntOS7x38Jt2A0yloSdwRxEfMk2mtqqQDctfKmfbB9V99y2zaOc7VbEGusUP2rL1Q8VTeEmxfTS900aHDY9tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJ1+66M9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJ1+66M9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47CBC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772420093;
	bh=uNd21jwdCLNBnh1Rz9bCfJ/AlqPLWZZHsFq+bVE1OGg=;
	h=To:Subject:From:Date:From;
	b=SJ1+66M9oCeQc4DzYpjd22DFkSXbZdclAy5jyRfi/q6go4s+oU3MvkN0d8dJH/343
	 DwI2bzPSKDLipElfXeOUMUIwU89S6vaDCOe7OiZDYULnrnBM3cFpJeS3O/ZcZmYzlC
	 Dw8c6pWRMnqH1bJYbtmpKfspDaVwxIxW7BnAugEPZ+fREMZ/t7fcZgp+dXrt3WHgzn
	 ah1UyaWjQKL3QhEAhR/BVxcg3Ilv4JazKkJBIm0iMOgr7iGgX2CQZc6Y6VhcRvyhVL
	 0i1KnODYq0jOtA4CMrs3YSrzighKCsqv+dFjdUGj4EuR87Z3nl4WZNA1B7iAu+hdCJ
	 ZSiORci78yvaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A495FD58E4A
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177242009366.31542.10585593516261646500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 216fd2696553d52d15c1ceb5bb1eea6d9bf9c583e2502a695317179f9b450ea9
Date: Mon, 02 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772420093
