Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CAB2275112
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765561374; cv=none; b=ZECh7NZO3+Zve2t6ksNh76+eybcO5/J3c0nBef27Y64M9aU3TTGq9KLtBoFuVjEtEwXqg49p+KVfLNbkicBthOupMbNBJWxVEy8hAkylPzbk+jvvkzJ8iDMZNbdFWNvxKhLA6tkbjZQvThiTlefuw98bX+F4n4MrYxSQc5Zgt8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765561374; c=relaxed/simple;
	bh=84o17+pQ49xx/bvB5kfBmEW91UObKloX/gryY+vVHbE=;
	h=To:Subject:From:Message-Id:Date; b=e2z7E6IXNA1ZNHXaj/H5VUbnkf3GGfDirFfL6D03DOw+GhxuuWRs2C2hn8w+HOWA6v23prbL1nv6mN5Y542Q9ithiKhhiJ1SA9G83RQfCIY6tKG9I4fY7fCbar+L1ISlUgcOcO5KQArXmGKav4tTc48Gu60ox92GzPCwDbRWVUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBS9+NMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBS9+NMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00BBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 17:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765561373;
	bh=84o17+pQ49xx/bvB5kfBmEW91UObKloX/gryY+vVHbE=;
	h=To:Subject:From:Date:From;
	b=KBS9+NMSNiSdAAxRXtXxxc1d8BW0224nz0hGA4VgpnKf9BeanGec+dNjeHjjE8F1U
	 8eRvFClZ6o7jyRGKFE9AJ7yjMl7ZPS2GP0iDhd0crzGezEui9S6Z/nfGw67I/LgQvj
	 UVVaPYLJ1d+GlRhalHizuxbR8ZR3I6QAzXmFPjdvz/z2CnTYgOfxP8Xh31OIVanife
	 QUnSu3rpCauQhhCMdYH6b7YB14ZlY5KYGUrnHR1T07uRmwH/0okwzDjBdH8JbVHKIG
	 cnSJlSw/yLSc1HgX9a9hYedAEdjaz5SwStrkzzId6ujMxOgLloVpOqkVc6+sVBL/a8
	 uuKZR9Wmwk4qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91657D59D77
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 17:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176556137358.31893.17435186321794313270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6c1c0ee11fbd28c5d178e1f0345a5c50167f89336030fa7eff2cf4df672e169
Date: Fri, 12 Dec 2025 17:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765561373
