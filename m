Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436BF271456
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759210194; cv=none; b=ZEMvmT9p8LCDh505QY+lI4Dnvb0Qr5EMoA3IKsKxKT5dm39nmdoO0jfKNuy3kLlWnwVZ+1UahjhUpM8B4KqDGs+tTXDpFPuKNkAW8jPMnXei1/3m0qIM5IENa/8Nqouy76uWEffdzS9HtXLvK7mMS7EZlsTGcJQuqk6E5nPtKdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759210194; c=relaxed/simple;
	bh=wDontPF0+Gl5Bdn6L3O6+IjovnWpSbZ6oN6GTYbDP2w=;
	h=To:Subject:From:Message-Id:Date; b=LFXdjT7ZNw8xrQ4AMDMmv+BvkTFcFY7/+8yFW2nvG5EymwRq+VSqlo2t5XECgOWQD4BVDfLnbbTsUA8nclQC3vEnuKl9spuv3Cb1VWGHBQNX49KwJ/23QO1HehzyekLv/BhKL9jH13cs0pJLtD735vkiXkbyFl0+8svKhULs1mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VskcGU9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VskcGU9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D0EC116B1
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759210193;
	bh=wDontPF0+Gl5Bdn6L3O6+IjovnWpSbZ6oN6GTYbDP2w=;
	h=To:Subject:From:Date:From;
	b=VskcGU9EjgzE9oi4bf1WMNE16f/2Tl06ps64KNHihreRGGsXAbDujGnrqLvs9Kq2H
	 Ny3ILdMJNrQ7KtH8f4DMmZ9+FBDnJzM9jIKtEn+0h3gzemy44ddVAxOJKYHR9k/E+M
	 20n/7g+61s9XxgMrK5uLcTMxGaJ8WLbtNa/gY3t764lQdfqLB6ZmFQw8ND/6nJ0zHM
	 9fUZy7vRpxVh+5UFQdk9OUTmcwbwLIlUyDUYwpUNS+N/0MJb3cedVoUeyyJnix1z1A
	 zHt58vCUeNVyAKalS08pnVNLbeXIqGWPykIi/LV3c9Xnb7C1aJ+mVmA47ObPdZ7C8X
	 Y7ayiAv4HqdZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5A4CCA472
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175921019362.20253.8678492701405507860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 729d27085deedc40528f503e6cf6b69850a65e321b190a8eb03d27193eda4bc1
Date: Tue, 30 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759210193
