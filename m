Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF2A3E6DC8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 04:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784696314; cv=none; b=FnR1chCNvUrUH7yq9DuW6MZwtcIa132sqR0AcXyL7Zr0c2TjrqVKnKYOXcSF0Yw/oCEsyuLdAWSsMtquh8sbQbZuB0p3pn0VBGEEH/mwjjIY95INq20Qxo1vFVCyL2Og6tJPVhnS1vpaClmqklxDw413h0viYcyWCUIMcnjysK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784696314; c=relaxed/simple;
	bh=7iAZ2N31aLXqkTdUFCnafm+RwMTjylDW7z2fyr2s4t0=;
	h=To:Subject:From:Message-Id:Date; b=nULy2JN7GqO2ipID6cjXgWAcEnvpEZXA5e82qgf+G6S1gNqswZPltGDrVxFqmtItTOpWZJVhqMdl0gKoqKCz026IcdeqnwvWhx8kwinvWZ8Ar0Yz/nHctCD2IGRJsgozxPBBI2KRuQvw6FCt2PKciKazBIn6uq1OG/3gGDJJmP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocG/mAdV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocG/mAdV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3FFFFC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 04:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784696314;
	bh=7iAZ2N31aLXqkTdUFCnafm+RwMTjylDW7z2fyr2s4t0=;
	h=To:Subject:From:Date:From;
	b=ocG/mAdVePgKRZihcadgft5CLU6nllJ4Wi3JJmeAGJLzntOwAJvBE0FsTjiwgMnPL
	 hD2g0B6h1/X55B2WxY0dlXX7D9lp4yYxpYcgIF7Ma56weD7y+xlUHNM93kNfiAxXTG
	 OlgfTwkQX/9fLs53e04zO4ILVPMmUwGZqopxa1Nzh/fqqrni0PG3JxNYmBNKeKIwmm
	 f2zELwLDe/wzm4R4KZDyadZ52Y01Aw8S5GFJixolnZRhQhbd8Nob0ZO/qWxAH5CAE/
	 xGL4F42X7Mlok1eAXLVseKpRcCf2+oYf931fk2ezFH5xIVEl4JaxDDs4P3uILLXGYp
	 kQJM8I27QD/9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB4D2C44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178469631389.27753.9327583070000511528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d398090bd66fe09a2ab2b1833c7e1da9a2295acadfbf1cb593c269c2100fb91c
Date: Wed, 22 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784696313
