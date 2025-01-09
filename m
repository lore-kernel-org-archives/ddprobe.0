Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199072AE8C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736393754; cv=none; b=sRPg/fOIpNR+IecNbStMG7uiAXtmdcSLevu/jtB1Isf02TTkyB68hZNgj1lzLVskxEDCEr1qyKwVrgluWPyNAHgNRjvQL83XjZnU8B/1YuEBEQ4N2plKu65RNMrl7Pi97WPlvDi/0YoRh3JMScOuvklvVnVp5KzC2sWAWoiQnZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736393754; c=relaxed/simple;
	bh=OWvRBkg3+HtJJNLxmVPA9cpCaHL77vb8KYlJIuNtevY=;
	h=To:Subject:From:Message-Id:Date; b=aC+1rU5/cZzW+dpltZSGb+TMvD1g8rzDP7x2K1Pwm8MyDODAI77NivpgW0/C+Sq6mTe8hp6zC3a7pqu3bmV5ucdrsS2q1bsMzC8fzW9koQwNJWtEPPywrj2rJibgR/i/kLYPHZJdcuHilbyCgwVbuTN1ArIfGpvn9Ri0Bd+NAsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgXod/qH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgXod/qH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77BFC4CED3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736393753;
	bh=OWvRBkg3+HtJJNLxmVPA9cpCaHL77vb8KYlJIuNtevY=;
	h=To:Subject:From:Date:From;
	b=VgXod/qHIB9OJ0IP4jIjlJEmFZkGsGmM3fhlpAK3QqAM9/ckmdHv1F8iHrDp8+4yT
	 PQK9xsRCM7XEY5MAYG9zm5rjcs7I6SX2rdFEVEBsV/oCgXmstbo+q1qBeqtPqtAh2j
	 Zq3bwwOBxKYOvCiPq+tdr2rh4l7Rk+oyX6PBTkWFIm5fawBcocd7PGKdhxhMrbFJ3z
	 Wlni4qfdYhGfyoXIS5iIGqFDmgCuL6Tg0wzf7RZ6tUOl/NHGDiGoxerhxLONSBK4x0
	 LerkcdBNv+66vHJKGbNoFFpkggNwY43pqBONae6dWwuvsQC5F7d/KzR/nuLrtVlsbm
	 VPb1VCee+XTiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D85E77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173639375359.2770.8924477147472856524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d99abf4d62498a03290240c37097d9708e6f04e43dbd5fc64feced97dd01876
Date: Thu, 09 Jan 2025 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736393753
