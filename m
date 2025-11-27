Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAF98F4A
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764220974; cv=none; b=ZlDh9PYUNeNGTgffurIBDK6sm3qBKj2KooQjS3n1ZHsA3y77bFqS0yPErJEaB6z8s6qoL2FYBMDIu9SuT5Av+iwDmI80t4c0STYNJ5HhhTBWX70jBLOF3dfb8ssPlC9d8IdV76wGyXaJj3KxE4VYP+d6zZf/ecRj7za5sNSRNvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764220974; c=relaxed/simple;
	bh=hnXzB/zXAeEWUjIRyF3qxfMO/lul2xfVCR2eSzFaLXg=;
	h=To:Subject:From:Message-Id:Date; b=YrJEbllrjv6WHaAhuN1r2rSh1yLThbk6ONZMc+o9gRZbdEOlHN9on4i8X3yZ93L09aS6Wa0ToO+4aOeHpcxGBQuNMWzpm0xyCgGJKfcm+tQQ7q8LYuVGTr1Bg+QKQbXFtquZGr6LdWE8dKevTzOvYxnBtOoaA24g3vZCvOKnEUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyvNlXqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyvNlXqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4761C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764220973;
	bh=hnXzB/zXAeEWUjIRyF3qxfMO/lul2xfVCR2eSzFaLXg=;
	h=To:Subject:From:Date:From;
	b=pyvNlXqs0xWIjFkStNrH7W8YbaMUm1lL5UXvdQSfSkjbP2Z0gH1hGJLBMpyXpF11m
	 BrJmHqzp/3nKZzPTxl7buPFz/T141LMBrDmPdp8VSobupPOl6RjoEO3o4wNTUfIMXX
	 KDp8zUmiWkkFLDGbGWFvbTCvT39SBso6F519ZCWN0HLaCYo7/TBFB8WT0QOIvkJV9h
	 U6UdZT4TP7LiampcmAwyUaIUEtGf+bPd2Kp4LsWWu+cKQiHJ96vaGGOBJtkanmXlEO
	 wlBsJhr3OowQT1mRmAVdY6BC6BSGl4DB0PVfVO0zDeVFshcK1Njvl4tJiqQKka5JEU
	 /0rgM2AofQFlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920FACFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176422097359.1187.9408487446843176859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc168642e68a68fce8a7d3241f255d33ac2232239cfdc1861ad19a1a288c9f19
Date: Thu, 27 Nov 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764220973
