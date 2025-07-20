Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1CD18858C
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752985194; cv=none; b=W6X7af3NY3vfyhEN74mFxtSI915pBAvI3xenBWzXAPifUvmX8OBiyO0UMU/XvkxQbXp8oFA7gICzXNWM/RKklIZAKc7usk2+TTmWhxe/U9h0mWpf18IJPuPzCQjzBi/BHDD65rn8mLViF9xhDUfqMnJJBiGjuU3X+BJK8h4lUJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752985194; c=relaxed/simple;
	bh=wezHIvg8CKTZiQ1WpS0UJ4DB6dZKNWNxxTPGsHrt8dE=;
	h=To:Subject:From:Message-Id:Date; b=ZBGq5iHFxHuE6sDRdBOyn/cRoN+SNxijkhWW7cBmf2+4fcsIW3hol/sofVu6HPrdWCcujjUI1CZCoD6q7mkWb49spm71X5iezwoWYEIFjJWOBBlObHC19bs7JStxINFoouA/lzGd3LvAE7q3XV7vgtiOnELDpTuxsnM5PdQ98YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pe589bIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pe589bIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5871C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752985193;
	bh=wezHIvg8CKTZiQ1WpS0UJ4DB6dZKNWNxxTPGsHrt8dE=;
	h=To:Subject:From:Date:From;
	b=pe589bIrksFDHwabz4Q1sc4A4XS5QIp3iGADx92wmJYYIKuii/kepXBYNpff6bxEs
	 TfrTHw32yxJhtE+adtwa50+DpRJTqf6Hu0fVrbWjUPOiEsBfWlYIH6S73D3sJiXJ7e
	 NhoVBAXzVjlryFkq2XU7HIoSBTSsAoGdD/VGlPHzrCTx3ifkoRdPAFbtbaBu6NCWdR
	 hBUDLVWV84e/d3hksuRE44ff9nDOxRy9QhVd2Jrl8yIx8H/Zko4BACEA4seIsR4Xc/
	 2gbWM2wTbPJNyp68e/EqMXiRRopRD6oh2DgKsKyLgl0Ky2ytwJnskso9KqG1hFMYjP
	 m4uQHKQ5QPwoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936C3C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175298519359.29827.8422501726142286536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f459ae97534f18a0ca6d0bd16348a9c514df6c0404922e35b7a01da9b729696
Date: Sun, 20 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752985193
