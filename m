Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F358618AF8
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711601297; cv=none; b=ATilQeJCF55yQVhddVOSi3FWSEXpiAOvJu3AS2sxOLdwsLJhHG3e9/Pq0vdL6NPCSMl3VXMsrV6dI6qXF9PM7woIsrpeYa4DYoK3n5zZRicKecsOLjXtjKX6HgBtrcA/vX5AKywZ7omkAggwxrJtWnBbx5gsDeqsfBHrdnGC9x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711601297; c=relaxed/simple;
	bh=RuKBDkgiifOwMlAZOQ4tX9LFTyuee5tO6lkbKuqloa8=;
	h=To:Subject:From:Message-Id:Date; b=GTsiFSzgnRWyvb+3KR31pQivLuzjB7QJ1JHMxkhd1Cg/fzqw1jczJ9q3iQe0M5o5cb3VxT2c/BY/ZuyaaJVpTxhsSM0dDFcfcYiQDnqfzxLCqB2Ys0XfCvqVveRLdC5ZELyBMd7ZdSlihiw+cqtEmAjxeVTD2ErOyCed04SBvDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slpdOUKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slpdOUKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72F25C433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711601296;
	bh=RuKBDkgiifOwMlAZOQ4tX9LFTyuee5tO6lkbKuqloa8=;
	h=To:Subject:From:Date:From;
	b=slpdOUKEkgEcQyggMaE25x/uUAJ1/oQJsQ8CA0GbFTqItpAdsyXzGOrFAY5Gpd0xX
	 xbDq83UgX9DLdFtAkXjYPoPCSTT9EIhrf4DZ/y30u7IRm6ArWk0kSQ3ktH2+u/VSCb
	 dj3m3BYx2pxPdt1E5M47mGAtzlR/j8W606KshBXy6Rw3XW7bXWgbzf6E3ly8CqKEVs
	 ELVeDO7hGvzqK22LctWSqPln5YKN6kMEaI4zdA4XFKrw4PeC+zk+mRgkRBLhKa/KeF
	 Fx4si6MFCtAYG7qY5xCf4xTV+FqCGFiaa3bKaGYMbPZMBVQ91Wbf+Fq7h6IhNcd/nV
	 m3gzXFhOA7a4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 606EAC54E67
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171160129638.13518.16401231818198340563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a81ed9c806ddaf42ac31f306165fdc72660c85cbd517db317b9599fb1b0b9b2
Date: Thu, 28 Mar 2024 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711601296
