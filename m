Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD06730BB8C
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774425893; cv=none; b=Q+2YjW5KuPseM34E/Q/kEVObUkzGVysl2pGxtg44ZJR/gesxO4Y+P9PmJdpAROlSL+4ZglJrs75zNRyKra2jLv7QW7kqL68+08dSLw9LA7HjA125yeEDY1hWy70ghBJaz3y2mxgaiyVyv4THmIQAPSyIXtdE4TBtwolfmwNlqWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774425893; c=relaxed/simple;
	bh=g3Kq/6ICMXaM2uB32OiEl0GrL+WLx4KGOmXfNxBre1I=;
	h=To:Subject:From:Message-Id:Date; b=HIfU6LnatB9poUYfxgEQTN9Tpmhep/huWHO/8v8nvmoBiobWUzrEEEDtx/quzE88gik7H/3EpxcpHtDiJK/ifElrV6OndFb+W7g5heFuFrIog4uE49Z0HcXhVBnkYBv6UeIrGwSrxGsljvE+Pz6ryMw2DJOl80p9EJ9AAzODeFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udR5nH8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udR5nH8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6634C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774425893;
	bh=g3Kq/6ICMXaM2uB32OiEl0GrL+WLx4KGOmXfNxBre1I=;
	h=To:Subject:From:Date:From;
	b=udR5nH8C8GTyeG3ntr1n7DjhE2JwZmx5Ne0F+6NkGVypr5bJKvtztwjW+795ESrE/
	 TzK+PM9/hC6Wfm1RMWFSiKHzXLEOJIExtziET8KIkyTNXAMiVDX6txGUmcgnEZP2yQ
	 mLeTVy9Z8O5sXAshvpZFUDDxzeygKuxcBOSMTb2Y02LKI1tZioP/1oQQS0I9925KbN
	 Q3+Ag9Qp2b6cIjALIXlhacNXX1t35qubemYr7Z4tlIuL7AA/YZkk3ezCyl0jbEmwJf
	 btRrs7/dcT91THlqQmOC/IhT2ej3T67LNR33ZARxw7U1nhEjcVL9/BkMFp1GL5yWJn
	 8tvPxxVd9V5Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9252CFEA82F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177442589359.7757.15864191007741717278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68bfe47918f1c420c2df969b876b3dbff646fffabaea71409c0d07706a65ca3d
Date: Wed, 25 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774425893
