Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9733A6B6B
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778625034; cv=none; b=l9KRUfo3+eWnBBFsKWatpMBXOrExm4PNwgoeD4FSnBeMGMiSsLEHzEoUuxT42EM0yhYkWT9GOqqAr4sl32o2uqN/bSLhPm4t4X0p9f/Olz7BwgH85N/R486XQvSc6db0wZE0YgOjIUcC5/SZ+MDIe1qEmTDiUWYR8ghfnefa7gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778625034; c=relaxed/simple;
	bh=F5REaWtf4NyxkN2fciqtUYRgoI9Di8a0cUspXpLIp8c=;
	h=To:Subject:From:Message-Id:Date; b=dfhbvfdFHw4UGzhD5HI4EkQtxjg23iI2oMISW+FmBnQr9QpU8Ig/hEE8Opke/jAR5OuvkjWP1w9CzDS2LkjL3v54VmXccv3Y6R0KtLYrGnTbSHDvxV5QWIP5t3JakJ49RnVVM0Fl/nhLkZ1MeWiXOQChdsf2lKOKtDRYWz3ee84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ey5jni/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ey5jni/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04E44C2BCFD
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778625034;
	bh=F5REaWtf4NyxkN2fciqtUYRgoI9Di8a0cUspXpLIp8c=;
	h=To:Subject:From:Date:From;
	b=ey5jni/vvWFW4julsr2GcJLhc1W42lsaaZ5H6k2YWPRlHPHhXoYY5oHoHGATFu3MC
	 sp6a3B8a295yvyaJNC57Ls0qUmtFAl1MeDl3TJOnzhTrnS0PDQGuUeBsfgKwxWHgZ1
	 WNJXEzdkKveHmUx6yVJ+gNNEdSZ4Bx2BoWpwncOxwXEUmtQ9LCt0EtW3U8PXSVeHvp
	 7vSMKdm2kyufr5PueF1OfLdz61Za/yqQ3G8gyT/B/d8W/QsSkgnFLqoUbGN4uYJ5LL
	 Y+TxSiGk2QI4hlYC9QE3asBFxf3+/IwX2niko9d4tD+gSeoZUtdUUCx0bwrtJx7o+7
	 LSJTPFXZOENRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B97A5CD4F21
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177862503374.23273.2473969386303491005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e41f9cb70f7f9b3678b326350ab971c28d8fdc435500c23f3aa8ec8f7b95a7e4
Date: Tue, 12 May 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778625033
