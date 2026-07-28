Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144B33BB4A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785213634; cv=none; b=I5Cp1ByHue0NbuMkFw+ZtWxQPEg4FaiRZwMbFoobHVLXC/NOKqK9nhQcCK1MuNfqWxf+6qJTj5Fdt1klgwYGfPtQyAWeFeWahqUojCGVZGg2x3WwWa/YUjzY9tvwJXlxC1qBLyLDzqbm2oLZDCVcf3b6IVeTUtlGPRywtoqEgtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785213634; c=relaxed/simple;
	bh=66kLFwsMJiToI9XLaJK5ROss1WgDQ2cJS3ftt4j+6nE=;
	h=To:Subject:From:Message-Id:Date; b=MmAJWMhiE2HysHtW/0SMqO3bECxExliec4q/og1GVgYyv2Vq8WBM3y5SGkrgGw/xR/mHpW0XSEQkZG3tAQJid4njvLQlFscF/FhLMN4Y5Dt94r6mfT5sArevTy/E6/S6DjwQg6miZIn6i9FMdG47SwqIq71WUoXQX3spCF55L5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FybhgmXx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FybhgmXx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA13BC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785213633;
	bh=66kLFwsMJiToI9XLaJK5ROss1WgDQ2cJS3ftt4j+6nE=;
	h=To:Subject:From:Date:From;
	b=FybhgmXx0YowGK+kEq5upD+qSyLo4gvwFujPhbAAWvxH4jt6wcn9xv0iHrKei3lda
	 KYp1/1WVBOuSrmlBJYj9L2Tpp8ATChIOZk/RblLla7LnWGOGKTucUCLDNcI3pbHFT/
	 QOiZpqN3u5jPHsVj0NwmOQRte5VH4+1uQ0vZThpYIhhNXMsUq0eKs5pWMUSIhjrUGE
	 7Uj8J/JbtDplTwlCcxJJ2sASoBBnI0RF40ZiWjAWtlt/y3RRBk3QGhl5yhhbkuDqKf
	 sbhTnXKnqmkehUwb5bpZjk9i5fymt8SaYUDMnMJN3hcssL7FhpkpLQ8n3vSJn6kYP2
	 3kf6EUPaaMVBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6DE4C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178521363373.2025.16539512960682712757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 538a5efa433296e3b3885078023eaa234749cf2df9d46550fe1343926e8bbafd
Date: Tue, 28 Jul 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785213633
