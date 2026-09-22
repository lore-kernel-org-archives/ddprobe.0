Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A0F3C09F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 03:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790047836; cv=none; b=e1wp7N5JWfOCjWMG+3cJnpWJ6zDmeO04g4WWB5nxi3THRgg33ELmXLQGCk9UoWBJgnqcwnAnWovsE/QbJ/iziO2fVIej0yUKwch9M1KsBO69QmX7+TxTAhV3uTDSCV+RmpZmslTPtYSt7NOwqqKx+oP1oMEuxRcbgPgaB8Jz/nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790047836; c=relaxed/simple;
	bh=k/qELIx0Z63UNAyIGzzI33Sl+RSVMZrjvK6ZScvi3Z8=;
	h=To:Subject:From:Message-Id:Date; b=DWljQTRDeqSsaH6dIhj+4XMS0xMerRR3gDF2XXRBjGov1TZTivtAsns3lV4d73mvEXpAoXhePteFDUnI0JSO6ybcXAZuficOaRiYC1f1dLxIWrfIVsqoYvDc8Dp+wwH9+QDGA56hWRvpJNOSPcCKoqa10VvNEhcU4wW2OBFsA9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ScYCzhrs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ScYCzhrs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC404C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790047833;
	bh=k/qELIx0Z63UNAyIGzzI33Sl+RSVMZrjvK6ZScvi3Z8=;
	h=To:Subject:From:Date:From;
	b=ScYCzhrsAfrKYwt6+PRrdbtmOw4Fm+ytp+/16TcNpwKuFJPddEOJvoIkw+BWfS8Xh
	 ZOlV2XdxabAGlXc/hDMZ2O2Howm+s2XjZPn2Cq5S036WSngpBiZJkxZy5u0VLT/VWX
	 RtDklUlbqb120zu7DdqQVvRc1zl/oJWOI8OJM3DRNFmLzONlcndAeLbJmPRc3FHVtR
	 zQYgpYOUyCfSmL3lSWUmufVzHNokq0nxd8NHnEolYbz13WcKhF0fImoaOewahB7+OZ
	 7GlPKX7Za32vWVrrcjj/5wl5uqCOUdstV1o7/Vj+G/OnUrmbYPA2uPGc0yr2V0l3s/
	 YvN0Wqo8Z6OZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9933C982DF
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179004783368.4028.8527774614538514246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d013cd7eed593b4770e30c0bacb6027308d48e25b8495304abc991566dae3107
Date: Tue, 22 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790047833
