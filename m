Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D024400
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753315794; cv=none; b=tjAVDbhHDUu/U/9V/q379kGzBl2HF+8QA9rp6Eu11PxALUbEXrioljvJFkewzQL9tYOyjuT1gKC6/sI4lHoUfeqwGBVrl3nzlpe/RK62DGZ+z3Uc8k0c0euU+RCiw2t09yxAtQlPlc+36F+F3b2ksNZ58KJ7FuzQn1XkmP3WS28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753315794; c=relaxed/simple;
	bh=OyfL5Ga38XTyHDpKjhYI6Qm3TvmKoM3ela8k4AD6H0s=;
	h=To:Subject:From:Message-Id:Date; b=DAVu00+WUMk0ayQnWMw5SmgtHdRYRUfsyGDSTEtRT1/nYK00Hcjj1AUhTlLS/y9BnpoyKCDZWXrcebcnBgQDQmsOVsBzfjoVBOUYI6DMkpzM06bMQHKo5+zKQW6KMEKOElnLbCq5ZXwqkLUuAQ+tqUvD/Cz+O9IpkC1H0zaSzHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSumzFk9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSumzFk9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F89C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753315793;
	bh=OyfL5Ga38XTyHDpKjhYI6Qm3TvmKoM3ela8k4AD6H0s=;
	h=To:Subject:From:Date:From;
	b=ZSumzFk9RmVon3onNifs4YIm7ZaCU/XznDK5UHTEU2Bzb8coCZUhxJXjoNQibeJVa
	 sRX2uC6dgsPyNG1FD0HhfubEP/yuN6mmdtmkZms9gfNdjyMsiU7xg+NCI3qsnCPOw4
	 JWbP3S30Wdu7tuVCieOLE24V91QlyNQTUVqdkuNqe/+PTeCX7zhZF7d7EeO3G4biRV
	 Gcnfwq68BI2pPb1tgSPBjyACwn/m0/V6mwPGp1WU64qPTqi8LgYNaNlfASaP2Qmm88
	 VctTdFlxtSbEqu7GfcpMml5ZrrwZJVippQCXUziJcC4V91bK5jyjZZqtu/NpQmrsXv
	 NeGqg/WaPeu8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91566C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175331579357.26210.4404293659971337635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c84a38d34ad3c8e6cca8df4b966b3c853c2ad9bc5e7021835cf88b7041d26f5
Date: Thu, 24 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753315793
