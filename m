Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E203AD52D
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789741234; cv=none; b=lo5sR2Ky7CwwQOFPBzYR/o6I97UPTsTrKKTosoqFqVZBlS0DlRW0lmiO2Y16x+1OHV/W7nF1jYg1DXYeWaVP7ZzwXOyBGR022jYyippZEtxtzxyHckxZG74WN3ChoULGnE7/aZShdFSMojklZ03FPVymvm5MubX9XPSiaLlyGM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789741234; c=relaxed/simple;
	bh=0tu+Uoc45Mq87SzPOGUB37JF0jT2Kch08pw1WVupgIA=;
	h=To:Subject:From:Message-Id:Date; b=P/rlrg/YCDHjHXoTScysR3uPLxDWajrkrxGYiHR49it7uoDSv8Ryx1mum6veAxHMBP68tM11jEG/qnzd0PHHK49x/HzTmp7D9VQnRv3/4QBPR2Y6BEKYSqkNrmmcju8kf0POWdJWAfgghgPpO7A/YqsyAaH0ZDir6xsI0q94/mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8gd0akb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8gd0akb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD428C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789741233;
	bh=0tu+Uoc45Mq87SzPOGUB37JF0jT2Kch08pw1WVupgIA=;
	h=To:Subject:From:Date:From;
	b=P8gd0akbhyNYZYgebT8m3bR7AbruagHijESQ4k4ppUh0oFe+qCjXbjcLvIrjA5To4
	 JqdnElJ1K2ls/dC/z0wo6N0atoJ5qymrHSP2EOas1mOiXBqCTlS3D9R3rtfgqC/JEj
	 Klh133wjgEZt4y/ruHCWNtPigoi1gyshS0cxzk88vW74OFuGN7cUVZbiuZRvba29x7
	 L8ZBbxzX3q96efoJUxrJw6GmyOtj/SY1XPeju+LpSwIwOb1UBgYRsZK6ww1UhJoBSB
	 F8iyyKr0nGxdAg8UEVMnkNx22eX4UmDWMn/WwyJuFXT2tQzfPz/Xmt/Yep6wsjAH2C
	 MzwyB469t6mrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAC4C982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178974123369.27033.15471027076195713050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 247202bb1652dc350fbe04d499b8d1c864b8290b744299619ff2030f01d03d81
Date: Fri, 18 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789741233
