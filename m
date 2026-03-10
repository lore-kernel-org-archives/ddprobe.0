Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8E03B6362
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773144894; cv=none; b=Byc5OgcS+NMkTDm4+LNhD9hIllTinX19P5hRqqt16u8SKU2a9XPoKIcYN6svJQD1DD+rvxHCpO4Z4mKyUDTIm6P1z5Sa9vMv6wTrJ8/VTKmZlH0M8ab3Lzfl37LNcmMtdVh1Jl/7i/zneF3zwRUg7Y2qTghZIpPixvyzc6uJPWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773144894; c=relaxed/simple;
	bh=KNV19Mqyomgeu3YwBcE/7cKfpsfbcCca6lhit4Ts6gw=;
	h=To:Subject:From:Message-Id:Date; b=jHca/RXeNF9sxPR0WqiDFmp+WolaHkwlKjmY8NN/IR53pwBCUUyDRs2T+luVdWXQh6WSUiElKGiRUoLUKXHams4o5v3G2NELPl1RTdcUnvEay52Oh4ynaBm3WDRtpL18Sm998IPx5D1cvopyzddQPCEW55udPRijRrwQaGWr33Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SViAO3g2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SViAO3g2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E6BC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773144893;
	bh=KNV19Mqyomgeu3YwBcE/7cKfpsfbcCca6lhit4Ts6gw=;
	h=To:Subject:From:Date:From;
	b=SViAO3g2YryCOjmB6tf6LE5ZvVIgf1Gye7JfjdSA4+gV2n0JYdK1sBh9kLwLoUrIk
	 nK659vnqMh/77S1uNo3Jdyjiy8UHFmAypPJVo3RQ+1E+RAoeGNK8spuu8f45wv1KLb
	 ddKXpdCazEimAHeaWqt73bafx3Y10qKy11IlxatCb9C+qq+bEgQzVhdFR7hUdK+oL1
	 YOXPZnkuGuAAKQ8omzXwNE5dfWHmN1wD3JFu5pE9nrM0vx8LrUlfuQ2pj/EHdLefOu
	 2LTGDlImCYLZ4vFqQqoLR3gBR8a0PeathH0EAuTmxVLu3UmW4q1230vS/LArnSHWZ2
	 bRkHgZjtgdVKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90603FD2D64
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177314489358.8175.164006281224367695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a7622026f40ca63e7e437e571ec0f8f7a4ff4c46fecd87ab583babb0aaad60b
Date: Tue, 10 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773144893
