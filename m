Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E2918B0F
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750525194; cv=none; b=V/yr0sBPQCLwDIXVHWr1AeEdnWneK+6YXOiUFf5k//GsbUdvZWTD/NQT9Zy/9zROCRVUDflrr9cTBycc8Aocr83e6IxEjOUueflrslBEiVUZp2wF4EI7FA7WwLrvu+Nr/wQZcQesPyx1g2WagFNUx7SQzeNjs/4XREgLGWmGyO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750525194; c=relaxed/simple;
	bh=DsiOxY6a0hyYhI5/VzCZ5dvDC74dBWfBrr29hl8x9+w=;
	h=To:Subject:From:Message-Id:Date; b=NZD9jqvXtmA3UtLjJiMLoBnwVXFlmnMrC0LZ3/e6EMWIcKnlZac5qmaCELgkMwo7CDpcuDZshPvjFP798A2EDEzU5HNwzbQxMSDN13MhwfWWk8aJ57J9F3ybFNn9F1D6xc5Mrvi2E4EhrLMsnsRzCv1qS52RGlV5r9cHbhc7UBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZJlRJDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZJlRJDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A169CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750525193;
	bh=DsiOxY6a0hyYhI5/VzCZ5dvDC74dBWfBrr29hl8x9+w=;
	h=To:Subject:From:Date:From;
	b=QZJlRJDQfRd1CiBbMx8c4n72t3drDUNkE0hBlrEt2YNpDzCUZ7BZ+XWRFSFiSXhTY
	 qwu93faDHMm1i7B+s+m12QeVTcgheASZi00yGsyESwmczRTr5wz2XXdsuO/8aZNsHa
	 IWmJ3sWz7gb8aJGfIZGvFz0ETzLaDQMeat3h13DnbKC0BDwKiD57uoWob7+luITVap
	 ZEVMPVEfUWzfDcjQke89dvDkrnqyhT3T5/zRSdCKg3RjuXiYkXp1xvoogw4z5dgAX6
	 U7B/1aqBPYyjrGK8dY5yFoPBxWL7cN+OMj/R2ec3i3q56Fhdug8xqHtfiwYfycSftd
	 JslRxxD/Xs1EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DCFC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175052519357.21152.16081030880092035051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 752f0b77ee7e5bafd2ca06ea28d93b256642134d85ac5ceab932a0796a7c9a58
Date: Sat, 21 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750525193
