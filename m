Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A21C29DB86
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764647574; cv=none; b=dZK+NHyKLIcu6QnHiO/gEsK233OQ0y+Y4aV3R7xWr+31UmQ2zBDsa3IVDkgFkm6TE/VSxcfzU9+Vzg2+fHFhlOcRRr8mjrU4r81wL2C+mU3rL4BbwZQF739iKwOfAyLvE6oMzxQv5A4YibgoM1Fwa5wckHKFe2PXYyuvg/40ho8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764647574; c=relaxed/simple;
	bh=8eTK2qJ58sjWfJieNXMRF59wvWad8Awz5VPKpP8rr90=;
	h=To:Subject:From:Message-Id:Date; b=KHkTlnSetlYHHx49DKJwEjYztAFeALAPHz2IXQlk5xMp6FZZjt+lUM/iG442kh8Kok9DNjI0h/HOuPipgW1aLH173HAi2IIyJa819Lqe2e9gOP4E+RjgleXc416hnBEt9BTYJovaPWiuCTEW6LFckwytG5CsTCiU5c2y0W/k9KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6FJh4Xe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6FJh4Xe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4011C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764647573;
	bh=8eTK2qJ58sjWfJieNXMRF59wvWad8Awz5VPKpP8rr90=;
	h=To:Subject:From:Date:From;
	b=r6FJh4XemchsRLjPl8WRvTLh6CYxYrov5S8Vp2XmlfuSncsVwBiL8Frnsh5aDKQ1p
	 IYcmo6jNNUDcyEruXIwVEVaIugIeVM26TVKMeuQCcrhdFslytQlhezwSW4d7l8mAgo
	 8kSgeGokjewl4VAcYOYEbu+IbbJr17KjP9AS5KTxD+9U+g42IUjl1VbZaRENQmxrVE
	 496EklWTSifSQDNmMZpst8FcJih3eWyY9wNfxBP2VjpIkdUrY6WUBKX8rYjsHDJYGD
	 sMR/w62sEoi+3AVGR+JE4vyzzlMAz2C3VLZAiEv7OY+ciyNTI8uJ6QXFl/HRlmW3aR
	 /GJZwOoX/lakw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A03AACFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176464757361.20165.1081317361097345086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf9f290e2b556bf2cca7b929add177058a2ef7e42e29123e169bdb7b2f7d1c54
Date: Tue, 02 Dec 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764647573
