Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1186F3597B
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757646594; cv=none; b=r3fLbcLBlVKiamJ60jAdi/DW7o14Fo8WDt/9UsEu/A71/E0WC2cRV730tzD4j8DWAusT7wUXdVgBpVZQjEUCvA5Pf/dw0kFFpl8h6q9t5XC3S3V86oOGsVA2B8VUiMmCsSpzrazGHXafvRzlSIzyVfSz0pS/Q2BfmXVVIBkMZcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757646594; c=relaxed/simple;
	bh=SBRQkBAHr01R0vQK5sqHwiwaR/Jx2t8OJEcaYTNRAWE=;
	h=To:Subject:From:Message-Id:Date; b=llq2E/8IdqRLMa+IaTwQgSFZLCl07PYAM+r6waUBf/uMfV6UGmsQ7fvtBXNqzn5ywqC4pfWoS7mIEIGTzLUxJYmrLZiMklFLemQUStPSGxNm/hD3OmQYuVAkbDGPkMtQx7SYm0UGc0o73+JXyJUkCqR04+IrBY36eF9oQV1z9Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4Lm+ChI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4Lm+ChI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9748C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757646593;
	bh=SBRQkBAHr01R0vQK5sqHwiwaR/Jx2t8OJEcaYTNRAWE=;
	h=To:Subject:From:Date:From;
	b=E4Lm+ChIT7YHrie/8Gseu5tJ+uGpPTs0eroRRLf4PBubgrcoUpewXIgXHIn7dGqnN
	 uB5LtxeL8Ty8ZqPeym+J7vithUqdIuEb4R3VxJBGOsCf3NJyMSqeuNz2BsqHw3+byo
	 5IPk8kG/PVCt4X27xmK04SwlbHIa73CyCz7agfxXNJ0lcvNJvytSY/8zaOmhNGhrv1
	 GhksIs2iFgTrjBxy/yqfXk4/Fd/9olLPlFAOeh5CZyv/r/0euvAwANxf9pPUZUK/1A
	 Yxab5j/F5mhGU08ZBP2qSeEyDYkNFyQQx2z5BC+CSqOwjc0bsU5//NHsbcIsMggYh1
	 UUvn48NYUqaxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E8BCAC587
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175764659358.10089.15601620080451028299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d412ebfc486262b7b0d85602e100edaf22acb0961bc521c542202154590240f
Date: Fri, 12 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757646593
