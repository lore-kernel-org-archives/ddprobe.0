Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C91D3F1066
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787914234; cv=none; b=WjQD3tNIhsyyqsDbzPiS9/vdPln+6V9UT/TVtIxyo5Aqlg3W+aq3TdAROK7Q1GtoNO+xoXD3BYD+TulfV8WWD5uZdtJQC15Q/5llQUuv0LOj5vSjXcSjW4l753v/ED2IlNNnSBeR31f3G64k4gAfr8QzOy+193cLNv2GxRTOE1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787914234; c=relaxed/simple;
	bh=v30Mpzlcy0DxI1nBI+G4kUfq2Lc1gMa2TnqrOiTfw6A=;
	h=To:Subject:From:Message-Id:Date; b=ccYA72oSvNto9Cephl2uQYLcEoUIDcdChHCOxgxipuC3wWMD53/KIZfopkHZlUQ6+8MfNE0XG0FmZfYlWi9pkfHymZ0YLdJ8+0Rlv7ie4hifbhc49r+P7rEgM6qUZxB4cJdWwfTE7mfuZIWYGxyvxr2997AjsbFZfl4OFDw6JcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPHtKLmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPHtKLmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F89C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787914233;
	bh=v30Mpzlcy0DxI1nBI+G4kUfq2Lc1gMa2TnqrOiTfw6A=;
	h=To:Subject:From:Date:From;
	b=dPHtKLmMm0X5POaHOQmk2DrL2oHjCFZXt3s9/4UF83d0/zV1VRXH9uCevuCmcNu3r
	 X32CQV2BFA8uejw2tNN3+q3Hr5tL4u+ZD6j1enhWINwpcIZlWerBrHYiCkpwo5TQaA
	 RQu2KuhmvrIUnadzv8lKdnkSA8on9dMMhQ1quOHsrayP8e+KotwgWQIm+CnHqHshCP
	 lV/STXNGdb5hSc/GFQ8UzPDo9Ip6KSLKvwEkwQ7R/AUpfo+pnhfSB8ZE1/UX2uaIiG
	 siXwAESYnPrZ9WNbo/0Ei5Qk9zwOI/Mq1uE2nmEB8g8Tqk2H5Chx5WRK5mVgekKXe+
	 QcXlLpddhvdEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1861C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178791423371.4189.8817598445611278350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93bd2c6f817ad1f7bc9b910e8d0522ba907f2b29bbca51fd8e0c9a5e92ba787d
Date: Fri, 28 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787914233
