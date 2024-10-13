Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AABC143871
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728829554; cv=none; b=XuCLvl8v9hpy9IeGJL01/mfjVjG9wePQMWYfVwpphcFdoDGVOHjWaa+IcFyPsu/Ueioe5WgAKKH07svCG3hNUCL1sBUrAsVOStIWlt5r1Ej7gGDkWvw5MiiiH2hUEw/2sdilZfXkFFB1c/ETzktq7U+WzalsGRqfRUKHh0NZHzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728829554; c=relaxed/simple;
	bh=tmmgnTAYHxtrd+/5ANMlkRSojeDVEyccDaW1bfLCTaE=;
	h=To:Subject:From:Message-Id:Date; b=PBIc2lffYPeasGWeaE/lYCWW4H+1l88noFuMjcnP1y6fgQS3s9ji8PlcgDgWNwESIJ17P1rnf3FAR0TN9qR/DBPMPYdri9QmHchwtxX+J9otmiazygxFkfIk5Y3rLaY2XHaMqMYCVb/ePy1I5RddAlD7+JxS4ebpXTuURjGUbBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIIEQhnf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIIEQhnf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEBDC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728829553;
	bh=tmmgnTAYHxtrd+/5ANMlkRSojeDVEyccDaW1bfLCTaE=;
	h=To:Subject:From:Date:From;
	b=RIIEQhnf1bNFlTZaemoBSoju4FeCroFqrxx85atSrw90E4jlZBuBzHMIIgDL95N+r
	 j5FBax4UueuZrzS9ti/maDINDmmutUjQWqL5niL2w0gAkGaQkTup96hcz336Mcj2To
	 YAn7J3b42jXKLBvSrKAQVS6h/Xydcc/MBAgC6MAftvLMRckI6yLc54UdtSQE4XSqAn
	 KLO7FeKahZMSGkiAlY/EXSRg2Qp1Jerpc4xyXcbtleLqMsSwD6SUgd3hpzzn/Z4VYu
	 0c5dRcLsItydTJeo8evC/10IfnAoJU0qI60gV29aCNvO7Kthr+YNFT7OyM1K5nnPa4
	 3FPfsaefnhv3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9918BCF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172882955360.24475.4013695588288135875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f97b0d0906aba6da7316b884e0623603a2eaddfc204b00cfff0f23affe4b433
Date: Sun, 13 Oct 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728829553
