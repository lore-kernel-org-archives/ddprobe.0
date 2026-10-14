Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCC551589C
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791988834; cv=none; b=Ygr7QYjWW5+ZjWraZlvyz8/ClyEcTDS5Hud5R0SBhMd5IewDpeR5UjaomJMeSjI65VWG49f6lzAn7OF9rsNFGEAF8hkNdXOl4Vx2Kcv6Uy6cs7/O9smQ5B2tvDPr6pWjASogOasZQ8X3ffjPzj9iTNiuO/uNsUhLztlo/B7nZpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791988834; c=relaxed/simple;
	bh=Z2kBJe2Dr0zZjgI175f6vqSMaRoLr01rSCck9oJnFNA=;
	h=To:Subject:From:Message-Id:Date; b=I6c0giSe77sEfCgcPZyhsCNd1uiE1M4rul+wHo7OZrmerfDGnPWk+Pln2c1mIXT8YeJH3HpFDJ30yK8DvYs/IxuGpcI2KAJKlgjcNDps5T708s2eOuUDqYWQCoJTh518dt6oeQ8qfBtBo2WQfWytVuvNZyPAfTfXkGTmc+yYAGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaB0N0s7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaB0N0s7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8040C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791988833;
	bh=Z2kBJe2Dr0zZjgI175f6vqSMaRoLr01rSCck9oJnFNA=;
	h=To:Subject:From:Date:From;
	b=ZaB0N0s7Nmw890J/4rYSBgm77kZEAflHg3yTCCoM852bjGzwC9S8BehBDhlgeWv7Z
	 Mb1hajAUEvi0xNVPKO6+sB4PhtXmQ4F8yka2Xr/MBOWCq7iN5tEKnPO8+z5g8hBewX
	 7x+PDXAuborfGLXJRuLwQRT0IxRTMGU7kGlSgCXDcWYO1FFntQE4HWZgHUwecS+YCh
	 Y9NHz9SMS+FvbFN3MGiSDvN18ZgF97zrDTzcc340ZWQSudWzvbS6uwEdQk+h5oI2ML
	 pc3x7mp8rrGtMSJ/UPhEAlMCJHCcq5lgra5OA0+SKe6QR1tNYc8LoIK5qnKKtNOf01
	 NrHOtMOy3+lSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18D9CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179198883371.20008.6461057354106111194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a5fdd8073f8d7e0e54c3a517e72ce6744f2fd46f711e724bb74e052e4b8151d
Date: Wed, 14 Oct 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791988833
