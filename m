Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D038332909
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 07:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774337694; cv=none; b=bWzc+pwb3moHB4XH9nSJ54ebyQELNVfFC0EsZOg5VBRQzyAE5BGl5rmGGI5fr8WAX0F3HIqpKBRyOugfWZO02sYiYbkkkzoGcpEmKk/b172YNBMKF1MW3qjp7+XUV/Q6L+C7nfCsAOj92evrXUcJHv3Zg5wuLjA3fry1jcs8t2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774337694; c=relaxed/simple;
	bh=ZUFQqFgGVHrXh135xBAxHTfijUMsvBag5SY/ad7ieQM=;
	h=To:Subject:From:Message-Id:Date; b=g8jpyFFzt2fIJcg3mC26tKAgKvzLtyBSH5inLLufqYoWmxkg7NtMF/oSq/asiHPn5uPDUlDtHG8inrGW6cOc26Z2+IasnL2W96aqB6Gk/L6Sqgr/EEf1aT+nYj/ZSHCXenKM73rFrNsqicsmAYvHQ/bJWjRSFJVIqS28vh8Bp9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mndMmEKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mndMmEKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F66DC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774337693;
	bh=ZUFQqFgGVHrXh135xBAxHTfijUMsvBag5SY/ad7ieQM=;
	h=To:Subject:From:Date:From;
	b=mndMmEKIY+f19Zcj2Ibj3UmvHe1r51YUsa5R+IVfaLbJHIDRqhTmHz8CCznlEBuo+
	 s5P/Ew9hGyN8axPcezMDY+BVSnGOtahiv4s2LWzvJt68i87SXZDgZLvwXD4MdVoDv5
	 1ieKFqe0neL9jcB3rusFx+i//eruLC1Qx1wtEaBVNSNuPFzwagu+FGwMFgb8ou1psL
	 LWrvuVSzsl9HliRt/OUW2+DchqsP4UsPtE4QRrpMAUK16W6dFo45BVx7MH0tSI5D85
	 vUrfodEEIm4IcP94ZJZNjcdxjklcza9BePoPsTIzdJvkn7MyGQ4KNX7rYcAdrtD0M2
	 1gJUD8Lys7RnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9067CF532E8
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177433769358.7296.3492207810881632387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40db96c434e66a882246dceffb1cd23b57acca6f6d420e13e7d97b3a857b7d25
Date: Tue, 24 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774337693
