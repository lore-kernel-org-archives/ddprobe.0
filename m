Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4F030FC17
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757942394; cv=none; b=nEmi6964WMV/xUApxLO0IOPZJxIWTsEoVbrIXhxkTSW/k7THUZCBDxR1qGnJ9HSO3NVkCB3sE9gTHbfckQMGAundL/CUgkbLv7XquudBcSOXpFFkdduxEYgQ1fiBnvvLT95j6MhHulK5ICfl+WO+WOC7epW9eP1wFgA5VN7SP5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757942394; c=relaxed/simple;
	bh=h1eiJpZVgEykDTpSOA5PE4LZ9hd7jwFe/w/5Vh+qOEM=;
	h=To:Subject:From:Message-Id:Date; b=jzSgzCTbjPYRcHeoDtEPNEeCf4AvmBATb3vrlN4sNraH282Ncd4GlQ/C7SW8L/ndRVutdQwcJSp3B/2qhpIN+yFfdsiqpNzkuHbpKRgEdNX/xfeRuX66ajiqYBppiGTA6RwCPfLpq25sB06RRc/Gl2ADweXRSJk/rXspfHynEek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBLTp4H8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBLTp4H8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69F8C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757942393;
	bh=h1eiJpZVgEykDTpSOA5PE4LZ9hd7jwFe/w/5Vh+qOEM=;
	h=To:Subject:From:Date:From;
	b=CBLTp4H8dbDFCl4Bp/VvdKeEDPKB+l+CSv08EEeMVLR5nToO7dyZDVC+mSQrgXvft
	 lwe24xf5P2cHP/ksH92mOLcj/bQ3gFJFmOLIxVa7316CXI/q1Dd6vT0xAsCC+7dEGC
	 FkfH7NuHSxbXEKQtob1t3y22T742wWfVap3NbGJapuEPAU/0x7scppqcicZggIxgOF
	 SaKm+mMCMPSO+Sky0Nz6MXh+FmYS6FZfDWwsTGyKftbtSIlYkS1t/ai8PM4xPTQmCE
	 NCY1RsjtDcdWFF+rXFi2T1rlIxTJRHCjeOXldhZ4JiC08fxNNP2AMDUff6MhO10pwC
	 j3J1ihqq935gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968D8CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175794239358.7241.11522335508617673818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec81bbc230f7ae46441c33b10ea6cd0bc4ba64885348dba947a5beb8ff4cdf7
Date: Mon, 15 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757942393
