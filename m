Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB883B9DAD
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777294054; cv=none; b=kAe5mmjvE37hDnSw6VpLG4qyYv1mfqXcTsiBg82j9NeXFDNeXjdwzFet1uqDJPCtmjcdLftQ+i9h5RL3eT15pgGo30Ou4JBpPjZSBQfEOPQPza1UEjBz2HIgih1x3rwXe9hYQQ+KWAr1IRh/DPfnp8puwV6ePTyT3qpZlT5uX0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777294054; c=relaxed/simple;
	bh=wT6R7N8jcNpfU+OAiU9pMzSbjmzMGoAio0/bmPD1Or0=;
	h=To:Subject:From:Message-Id:Date; b=SvzSQx7rW8+9qHNp+Y72U6auhvoY5pDsyiQiEjr0GOZhvMxxhKxaAJL9UjENd/2/pa5XqR1vO6hWSD4ZKTA0Sh2c/8fYZIGKy+QXTSwY9J/8Oto3Zc08wIE7ko2FrwjtBO4Xr55afLrYDsSq7oqBnsEThvUSVaHC3dCpEhPNZCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWnF0qSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWnF0qSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C241AC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777294053;
	bh=wT6R7N8jcNpfU+OAiU9pMzSbjmzMGoAio0/bmPD1Or0=;
	h=To:Subject:From:Date:From;
	b=eWnF0qSHZFKCPZSzhNFSqIXDBw9PEsMNELCcKRsuqP5cAscN1S2nHQr9MBaHxz4co
	 0hXb5bNBMVHQL/NDkdlyr5/W6GB32PYBnKK2ou3T0j0BFOfYbwKuFwZMDwmpiO0hBg
	 BtCjzXAmf1+OCaO0OGfZYA5Sc/LBzXba4o5JFIgc8SNE+o3Qzm73fNfKf86vyBxJ34
	 w0V1ABDksJx78jFeks53209nCxUTbyyUOJSB3+RBEcg/37VHiicOJTQukUmrs563fp
	 ayvAYXZwlL4FTD2YPRqfDw7JcBGFMFypNFNsz0Xc8aR0Rq5US4ipuGqkQEQYsaTeF/
	 P0oBhlF42+Mwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAE2FF885E
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177729405370.16245.12046732711533555697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26a6b6d612dd95fc129dd5d51f46ee5b15aac2f0f5b7778c0261d39d7dc2c075
Date: Mon, 27 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777294053
