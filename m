Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F7B247291
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790919634; cv=none; b=cB/E6BL5lC8FqincTzBPBVEsLr26CSVJ95gVMSqPyCyN/uOvUUsPaYaubAtGC+pAU0J2XD1m35K9I9caG+uh64Ldmfwgr2w1Pt3Ktd9XpzOmV3JOMl/7HrPbS7lnCjeqHyXoxqmG8MVh4Yv0NycPOxi/LBfFeURybVCEGNC5mKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790919634; c=relaxed/simple;
	bh=3KtnSqe/kNifMp6yjezalCp8QLW4lnsQYwUJwlAiG1M=;
	h=To:Subject:From:Message-Id:Date; b=PqA7Am+EpUzYSKYcp+0+c2g//WKAKkHSpNFlmeaOINP4Be0sDv5U2ZyZ+hZDhyKCtoXa1n3nlVT1UF1Hyajdku8ytU6CZdw/YT1NFpeF0mgvBzI1xOT0TqYpYF046TJvUi3yQlScgkxR0DylW8pe+WYyBiUx2AzlhO0adVo4lsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4sDcLuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4sDcLuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3C5C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790919633;
	bh=3KtnSqe/kNifMp6yjezalCp8QLW4lnsQYwUJwlAiG1M=;
	h=To:Subject:From:Date:From;
	b=Z4sDcLukR/RzvyY8cfAAnCoiiTMi/72YmVY8XdIx/MbJVMvMkBk+qaAJsRWrhYxgz
	 UGmrTHq68UEtgij+kVRor3/cG9gSp46JpGMj7hz+DaGf5UjrtF6IfTVGrRW1IoxuMW
	 kVlDSjPZHfmuKSSIeNowZr2KlHZUAuYK72wto0NihDRu/lTouJ1739tBiVOK1BM4X8
	 JpCB+W3pJzfXBeZqV9DE5k3MPfcfSmkdAUEQ67dK6MtTyfsip14Phb/rxhaUQJuqe/
	 ZH+42lRjEO0No69PGR9/DBXFQlhE5NJ6ncw2jE4d+sgjUDjgs3TGJUCgt2+y9XWdVY
	 i0tNGxuAbZNnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA4CCA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179091963369.22620.3928274300196838375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0dfff1b531d4e2c1f74ba70e66b6d2153ac8164cac1d79b2c5261be8d68a7dc
Date: Fri, 02 Oct 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790919633
