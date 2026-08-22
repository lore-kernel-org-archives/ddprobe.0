Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B1921146C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787367034; cv=none; b=ZLolv5YU3fhz1jHpTX+KkwzkiAA6MkUkhUSzY+lJra66nSzDiPKigBJ48wDoqztxViOFfweWFK1P5ImKime/7Og/MuvgXyHWYQ4H6th8OGq3gSW4zzIvsRcfu+9Ab5J2lG+3q3oEl7Hfs/OGdOx8D7rZ7XEW9VsbyajXIBiloZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787367034; c=relaxed/simple;
	bh=tmmDvqXrBN80BZ8U/WMwFvDuCRZw3OspE0ivccatiWg=;
	h=To:Subject:From:Message-Id:Date; b=EQpaMszB1LtAKACX0Wsvarc/HBEB5sOtj0NJiQi+H5Hift0BWfm58U3an6NyvQtKMwoPHkHxRdRbdYUp3bp1/eZFDqQ5uflQhvyQ+lRnl84y2nmyoo6JNClZN8utQPzkYXFJI4VGWycB5Cwcom5OJEkEENkg3K2izH3fJFNSYnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SG5fpeE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SG5fpeE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7300C19425
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787367033;
	bh=tmmDvqXrBN80BZ8U/WMwFvDuCRZw3OspE0ivccatiWg=;
	h=To:Subject:From:Date:From;
	b=SG5fpeE4o4PjKBHYgCd+ENvvfvbRC01m8YY8nhkNhwOM9ucs+h9lrrwtCXt6BeQZD
	 hy1uD20srJHFGEchDWjgNo6ePFbh5PV/4/LJ811xAeG+FMSOVHxrLPHqdo2JZ6ZQ2D
	 OCfyxVSEbc+x3p/WPaMqpsCekHdKU4SVCM+XUTUr34Fvah0IusFLglC6UusU1qBEYD
	 g2SkzDRX22YqWjtXN3nVpPRXLuHSVY2uOSG1IJwbQtyG8Jn6FtuwCkmss/NW5+MAj2
	 KEWV+PX74yIEyEBl6QXcGsKsvdL1/LL26FDVLPc68u1AbFNvp5FVKNS4WTRbOTLgHO
	 sloDFhKhuB8CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E34C5DF94
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178736703369.22216.11258641606857210381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc2905a6f593cb37791ee3b276a5936068acf1fb2c0ed69c6c4ce4355620b720
Date: Sat, 22 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787367033
