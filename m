Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117372C0F62
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766121834; cv=none; b=eqzAMmqJUpykHMmNbOSYdmnRRp6fPJu638YLLMBi2fvVxJ+rMztirnjokk7xdRmi6icqA1C+wLuDeNRfX/TRhiNjWISUWEokMHyCHep3KQJLMd19Z2evTyhe1Q81YsnN1EOatSbMMiRJ269y/6rjuld9fqhRmgiCnDSSLS7LvJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766121834; c=relaxed/simple;
	bh=uwwg+A85ZBfphBj/3lsKjFBvaXwT/FvNU/jYkJhAfJA=;
	h=To:Subject:From:Message-Id:Date; b=t9sMVgvOZqBmt4Pg6bFObemQNWnrN46i9MO+bNwdxDth5NQgsZzkuv4tU5+xp1+UX2OdHIiqk1vbEiByEuDALBIFUtYQw77t/A8ZhZbjZxjyhwG038ZN5p2ZfPRbtaKY4d1VvGieB3kmTpMw2EXRydSfqYnu1aL3usiyOQNtVHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnN5UCBm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnN5UCBm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A429FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766121833;
	bh=uwwg+A85ZBfphBj/3lsKjFBvaXwT/FvNU/jYkJhAfJA=;
	h=To:Subject:From:Date:From;
	b=lnN5UCBma8pcepbvWJTszOWoESWdYM2f7JAX+z0kclR7gsuuKqokElglU4UKI8tfB
	 oDOjIXGFdnFeIZ2SNKXJ6R3qwUy09B02tWDACMdzHfeDAbqzfcS4ccedb64w8ahri8
	 PRh4gik9qwBB6I5svEcyjueLP7+8QP5yJKlGDKe41Wqo7mv5EYf9ocpUTcNDMtlI2Z
	 UDJB5NPO/ONp7FvqFfK9o3dxhj08IEzrEPYWi6vDKh0qXtZOapOjS6jeR2DpZVaNuN
	 VlyfRxJmTBCgbBy3gOFOJT7q2QeHrmq0T5YmQAFND21okU2sdLeEH20Fktzwue/yOG
	 nINn2zyyCJExA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924EED7494F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176612183359.17080.8937893880153310276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6522d5da894a68ae4c0b1210654a60b5c60964fcdc90f47bc6d6588f633c70d8
Date: Fri, 19 Dec 2025 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766121833
