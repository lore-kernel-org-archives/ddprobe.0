Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228DB283686
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759307994; cv=none; b=F32juy9g9igynFn/gsxsYEcSQ/3Ng4sk7a7nu0b8iwVtoZf6x0tEA8GFA/7LMsRdxYCEwx8COT99kxoJfuHvuO799nr5uBLU9k0H9vW4B8877w6WwsnxKaKCUbl5Jhvz2+OKBb3AAz3vumOKbp5zJpm4bdbD8U+m90uXwoY6AQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759307994; c=relaxed/simple;
	bh=i+RV9VI3POm5TbFeSt0iijdanh6I2GRm6IKovWztisQ=;
	h=To:Subject:From:Message-Id:Date; b=WZCk+mcNpX7Kk3SV1wtkz+4ou1pN3k6COiK2lTdU/vWcfWTUIVRNDqkFrqdQA847CS2sA+GAIxKLzPljQqL0+fNaoZlnOS12RJ4tSqwwh1XYI+XduA+0oC9m3g0y1uAwBJl5EnzB2Kkw3Ya4gVwW90Hs0nmhuY9XJKBceFWV4Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asewckIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asewckIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7301C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759307993;
	bh=i+RV9VI3POm5TbFeSt0iijdanh6I2GRm6IKovWztisQ=;
	h=To:Subject:From:Date:From;
	b=asewckIOF66k4EDXUh5cTFa+c8GERxycXlPkDZwLjopdajQqxFUWRiIMFHQCNQ2Fv
	 YllMTR8Tjckt5WwUikotAmHaAhE2umLER17CKGzzZ6NLMuGGM8IWgq57eQX1LB7Asy
	 a3ZxjW6UArff9Q/Bq6s1rvtCpGMGrCCF4EbBIxL/Fs4hAKspDokh9qk85c3ebdvbBM
	 jdNVi9ExkGZMNm1DQHgGv1tZ5ONaiXuR5i2YCsWbyhhVeHh3jiUitaUWKfU2PVxp8u
	 LGp5qV+Uyezu24LKN5x/CPPklqM49kxUuhWpQFdClijYPb83P41cWthiMi0aEmw/GL
	 r63pF9Vk+LD8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9462ECCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175930799359.18891.7042769677199276505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168b93ced539d608bac491174b4d62e021d67ab3087881f6bf35b1853bc197e1
Date: Wed, 01 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759307993
