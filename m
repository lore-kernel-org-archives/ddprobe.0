Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F43A4F606
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724343354; cv=none; b=NXxS0cP85W9DIijMf8yL6UvP0MOf8MVmRNftKDSdxYrf32wN+Bvi8QI50RXwtdAfUYpYO8YX/2UKFRs1+12hG3lBXXiy02D4vdtv9OtV0dreQT7o8W5t44ncZjiVhgfxRbKRiPiXYnDLTuE1RSFWGzZPpu493O/bEPHxV1JKwcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724343354; c=relaxed/simple;
	bh=iqkBgKyUkjR867ZJRNKGnrmNWo3fpOd6qlblDMahjvA=;
	h=To:Subject:From:Message-Id:Date; b=N7FZBmyWLcKqPz00Q+PWyRDaqF+mFZ44+AC1kylh+OWm6ka74OGltyCGm/A3tASyasYMPqNmd87p8xv6d2mBkvDnsseTarRBQEudLOA4/sCprpPanE+BKrhwZkKCA4CBzKIS4LiT0qknmxoUMeIx8O8Heeq9shzjhjGXDhQ7Tes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FH53UYEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FH53UYEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8AD1C32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724343353;
	bh=iqkBgKyUkjR867ZJRNKGnrmNWo3fpOd6qlblDMahjvA=;
	h=To:Subject:From:Date:From;
	b=FH53UYELHZR/jAhe0dQeDQ4OsqrheDLM1B5Dd4ic+Smt+B+NJtNnc7s4Fwlnb2ygB
	 aNKQLnCp2KbFwIsOiuNBxIh7uOsmk63NEMZFlkRvjE6v0Ct6Ftu8fFpeLT+tU9aXcP
	 nTLRcqj44mEL5l8+utNPt4B9wNir3NuqnR0TUEhAoO79MsW8j4fe8Eop4VsReaie0J
	 b2NGDI0Nuyv71KcLDTRQuXDDhgBMxCmPSXe9vnaIvGI2tYo5VDmpKAghgPzvH1BC63
	 zP7qkj7lEB9tzY+FlbKoKQKmSowYrJGgxvON6WHjJ/501f5DhjCwVuofQHJQ8SsSpt
	 LcfgapIm1Xcdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A90C52D7C
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172434335365.9653.12839366007245667750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0206d83975417ce155d38381b772d6b0d233c80feb5819671b9dc5ec7a3ad7d2
Date: Thu, 22 Aug 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724343353
