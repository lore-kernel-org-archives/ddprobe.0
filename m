Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A2917E8F6
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 21:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716845063; cv=none; b=AtuoLJIRh4gCSxtugqWGF2GizKn6ZuyMkIkyVy3vrfXlmsknCQxPb0umKaW5Oci+F29gZ2PXULje5d1bbNjsW/J2Ax2c1YmAnDGKHmmhk7mk0ArCP1NGPeQEIvSiMHiFIaJNLDxTthWslTWf5T9wNeOdUj6Z9qcy4cGn0Qg/WWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716845063; c=relaxed/simple;
	bh=/rDnF1UTUPSUdD0SFXlTCPmHxp5NS7jaSftgtizPr48=;
	h=To:Subject:From:Message-Id:Date; b=r35ZXF3cwe5a3bN6xwHWE74G6Q1zaWBqbpvC5KSdc27jfJHCCAMPSM1dGsneOmkBZugDTxOIv+KvJt2NVlC5Wz6RDPknZBHc8bVCVWfTfFoOZXvSP4a43Pm54yAiCd5s3LcXuVfwMxJaX2sG78Kxgx71gaUGXxFNEpyJaALsbJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agWDEjki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agWDEjki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6D50C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 21:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716845062;
	bh=/rDnF1UTUPSUdD0SFXlTCPmHxp5NS7jaSftgtizPr48=;
	h=To:Subject:From:Date:From;
	b=agWDEjkiz44s3uF6/Q3n8P97MZU5PpNgZ7gKnok67ru7dAHNOhcuP9PwRDKCl3CaU
	 /4btnRmNPbBQgdZxGdUNDSkTUjPoUdXOktJgo7jSkdRZmNOxRJiYFV9xCB1tzqRKOv
	 rqFR0cvEZvdFOYX7vnQCV+PzGywsFpkCUD0dx7hzBQAS+XAUP8z+ZcPS8Yfl0EIV7W
	 G6JvbQ67pAmSz62XFswWUSeHLqt+6/PIxLc8Cc7WldhS2m5v0peWznczBfakAZuY5c
	 5NIV2xjBF2m2DiRFgeTomy3qUbKKY7JHdxgypDshdQhpAS9MvwxCR8uWV3OdFw7AA6
	 sGFjqW4LNX+gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF017C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 21:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171684506280.19059.7944879010503803695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaadde8f6bd96f792bac9e92e8476a7929cd5c7a68d60a2ea145036316001c61
Date: Mon, 27 May 2024 21:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716845062
