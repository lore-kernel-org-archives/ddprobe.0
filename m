Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CA230BF6D
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761123594; cv=none; b=P9T0+1VE8f/1uzC679eRheMWu4YiUUHIXActgfx65RIhrrkh7xvIFFcuOF5w64Jyuou7o2Nqfl3cxe9Zy/EJcana8Mj6547TN8fQiZzQwACfQrNSvn5x3eLFdFlJxqnlTzDxKs9kt882H1gj0zIB+Csm95+9r6NCZE+02msiqUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761123594; c=relaxed/simple;
	bh=LudSAGrkBbUNEYBv0Sypm89QgC1PzndFfBgJsRHI2pE=;
	h=To:Subject:From:Message-Id:Date; b=sAgwt6fq9QLumzJ8QHDtgKuV38q10PVrT18gUobWZevUizr26bAYbvWedcU8qVTAMcmKiRxUOoUAjErHArFnOz17+RJMEDKN3cya0JY8q9BG3QRS3+jzGDtPKnBehsbuGqsQljrFYZRS+Q5PT3CH86QEINf+cZH3w6Z6FnQGrzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tof5psXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tof5psXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2477C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761123593;
	bh=LudSAGrkBbUNEYBv0Sypm89QgC1PzndFfBgJsRHI2pE=;
	h=To:Subject:From:Date:From;
	b=Tof5psXYmAGM0UCtXey2MjZQ9sPDvMVusqzc0n3o/HbE1Pg5F+iAfFYNxx9FsChO1
	 V1KGOA/WKTP2g6JR/854FsNm3yWHL2ZnC8L0O2qjiPk7Pf3Sl+OZ44kUfS6UgCHj8U
	 NDP0Twp+LzxTjtjH5C263orzwyKAuagiHiLv3mPqs1lHWx6fp5usNHGtpzpjOVwqE4
	 nCSoXpdbD1oR5gxA5fv7B1iCW8n7IE67Hd5IGjFN+rnyNhqeeMlu0TeKE6rEzfJihf
	 8Mla6oxNjStZq6mZzPvtH5w9/WswqHHLwl1lp3DTM3EUnunGkuPDuMDOAisxqtw8e9
	 JZc+JhPhOaq/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92105CCD195
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176112359359.12572.13399304975524852651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47563f914c8fa18727e2f1b0d5252f9480e9df7e5b8a07d95426756a2945c966
Date: Wed, 22 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761123593
