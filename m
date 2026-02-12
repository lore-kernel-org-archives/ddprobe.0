Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E10E21B9E2
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770909894; cv=none; b=Quzo1RKHL8TaDmUr7fs3ysDiM9CiOiBc28b7nkZwGHDGvuMj2/zi1QSOTJpvgQVyj7IZ3dKnYprnSM4uWHL/tRtIHDVMRR+rzOHiRRAAPzdxOQxOlikKLe/pI3oMhn16w8L2XJHjZpN9fGMC0gf/4Cl/RqGbv8aBQnyPkkPYtNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770909894; c=relaxed/simple;
	bh=28Qp7ZY6eOljuWOXmheqdhpbuwAxmvx+2m/79+hTpsA=;
	h=To:Subject:From:Message-Id:Date; b=UUMjpmKrk2VCXQ/7mMva2uzSK30KYb5imTRIOnFXpedsNOoL7wF/XrjrGryffB/lN5zeUTgK+vlF5Im4L49GqmJ3E65+A/htjt5e1mWbpvHlNBJleM4eRVCxx9bgOieYuj4Xcov88G1USIB7k4QjQstBvL3g+qThN0OiVu9FXFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n11kjYw6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n11kjYw6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B97C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770909893;
	bh=28Qp7ZY6eOljuWOXmheqdhpbuwAxmvx+2m/79+hTpsA=;
	h=To:Subject:From:Date:From;
	b=n11kjYw6GskidrPTbBfR02FwTITpM8l3DklrjE5rd2QSm+vb4Q//Vt8ZfX99Qpaya
	 Ds5UW3aaRsRMAv/3Dpy1KuJ/4dRyKvNrS4+GQsmCq0RbqZJvMtw3bK1RFQA6cDBX3z
	 aH4/I+GdV8YQbunhpaFhAj7Xr5AKsGCI02mInnqspfSwpP67vj5fXwjf124mBdC2Uf
	 GSpmpeSzaCUAj2WTLmWNbe4cIliAr54wOziwQsYwadZo0kvjKiEDEX/J3u1QLZlmRq
	 JJ1GovQfsKr6t1TKnzL4s3/n06DS8hRRQbm8umGrD3eQDB0LFJnqxdCal6+NNa1TfA
	 R76Ly9kBVfv4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCC9EE3698
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177090989370.28958.9750842736885180594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d73127427ae388ff05ea093eeb8e1b5f2474761b16994de59d7d7e0716bd7f3
Date: Thu, 12 Feb 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770909893
