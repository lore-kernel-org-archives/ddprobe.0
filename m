Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251D52857EF
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756969195; cv=none; b=HL4mhV67sAQPtxAxuvOufnBlbXR14XbgtSXsEFch7PdBAI/6QoUzKwPlEjGmC8jbHMVbvEUYCTQce+J8yC05THh8Mw8C0pLIxWCscotYQU3wkg8oGfUDurR6AvjisiEU2NpNO3w+p9ukDd6SLKIkS2hDoab+s76+Uj+0VLb/Q70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756969195; c=relaxed/simple;
	bh=aLAmp5hgho9EekVL/YbAZpT+oSMjXxTozVq/N5xhirs=;
	h=To:Subject:From:Message-Id:Date; b=EJamCnnyIfAnsu/zeT/3ughsYsux1FQAzraqW79rirQHnS8DnpgOp+s5KobDQMoT8X+H5SAtuZoPJoiueDvKR1KWwYoK5uoM+V6tvGnep6Z6gBqxnykwX/vh7tqXxYefK50dE6b/cBKIVk3a/hcVQqwzk9UVz0QV4F6yBl5VWog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QpUgA3Eu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QpUgA3Eu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BEDC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756969193;
	bh=aLAmp5hgho9EekVL/YbAZpT+oSMjXxTozVq/N5xhirs=;
	h=To:Subject:From:Date:From;
	b=QpUgA3EuiFINuVFkkQ8xhPDDqJetPC6rsvo2pvQNI8rv4dRcmBQYIUR2lbysyg3iV
	 atEGTqGMR2Q6ow9iftucgxkMZMC5NDgrjctaXnajm4BeoN+i549OFL+5ISHEb0ZbPD
	 4XIU3EKCQyM/aDzlye/DBWsVPJL4fpnlB6DdIsHCJ7VbFUAxOmyIAGgFe1rCMPgmRk
	 Zzy2aZdm28vgEHjHLOTFU7O3m66zM6NDBmB9fIJ5IkincWjleF8jxCGjsbExf2IYKP
	 k7gdBWyp6Lx6lM2xWGAks80mGydKoHGrVsYGeWK7rT/5oKGZmdjfIQ4w0NpiMeWe76
	 Q7Qdw0/hkGE4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EF2CA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175696919357.20768.1432783879354586211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 934b87df8b8bf79f456b257892f48e5e9d86d3d75c3219ba1e296c776a90f626
Date: Thu, 04 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756969193
