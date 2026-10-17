Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F163932C2
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792202434; cv=none; b=sM5fN97TZnthduLHc0rSknZA4Pz2ACxs0tJ+yHXtP20KB7URAt6rFivGIcXzA5PFAxSiTuMyFojfCJz82iZE7AjQ/BxT20lrynE0RZn4c4JfPtENvKnY4HUz9O8NiHXG+aWm7IG/SZAcITSv/qvwaYX47c/UvMzf5EKx6Yx4F8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792202434; c=relaxed/simple;
	bh=zJpUDTDtk2VekGq0hHIkdoA/e0/IUHT+gHNVQieG0AQ=;
	h=To:Subject:From:Message-Id:Date; b=kL96+cV5N3sW3GYGBXxrNjbRiL4+sEYeUJtDP3DR5wo5V8wylgyAYnVeRaKLT2lQ34RsNA8Z1HDulocYYmI+CKys8nxDIWLjaNWTne8P+xShO/jtaieAKiwxqnupW1R83I606FuOp7xcz9uB5LpORXSIvhTTT+ewXyK8bTIrNa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAMI7I26; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAMI7I26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C3CC2BCFB
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792202433;
	bh=zJpUDTDtk2VekGq0hHIkdoA/e0/IUHT+gHNVQieG0AQ=;
	h=To:Subject:From:Date:From;
	b=HAMI7I26z0HsUlR9FIbp9lp8j9rwhkvW3eITdGbSfGUBwpBjMMMOCEDMrTSHX1r8Q
	 RmI1fCFggoTP7iYtrHoEajfx5v1NweGGOw+vCFkcI2pEHWAUygf8k5KsLXEPFtD/Qh
	 vy7duaf912cQkich68SY3nl9s7NEdAMohkSfw0bVDW9QYppW24Op7oFqUHvur+z1dB
	 qVWA89u9pCptUHOQeoFGJbSrnMExphLQqcAVsUCtTN5cbF6HoLNc2nnq0Ef6Z4bacb
	 yx8duaiXYQatNSw+5geoZQCDPiaXQ/DEJ2LFUxuVz0Em5M54j3nP5RFrDpjfayAfHO
	 RdGibBFgNVBGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0882CCA46C
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179220243368.28954.12116667054853851037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4419d38f21b5820a5110dc24cfec26d4a5ee5d8e733aec56c9bbca40aea9c8d9
Date: Sat, 17 Oct 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792202433
