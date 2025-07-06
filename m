Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB742874FF
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751825394; cv=none; b=I4VwCJajPz+I+CL0HwKtURviHx777hBN6YetDBCtfkXOmphzJ3E5Sbc9wfrH1+a8Bwgtzx2k9VL2qgIPE6s1mjKoblBWZDHujKwB3h1frL2maAD/W8958dEx45eIbW7G2qBW8eUZ/6F/Et44DbFeZk1TrDym0ra952fr0X8mZss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751825394; c=relaxed/simple;
	bh=LyX8RFQWh9frA3q9fl5O3sOKCKTmLCyrz7b8tLfnT7I=;
	h=To:Subject:From:Message-Id:Date; b=u7CVmenYrGrHMn2TPktqC6aenXEttcq4OqZABSZMqh1xIuWVA9t91OT4khlsiK2HPipgDSsomftpf8/u79m5byRtufiS0+q6BUyi0+aPQc3pUza8MSy8wxu3rBQPUZfeSpbHaKR8YOI5MtFCUbN5fuXZCFmoSiX0cGsI/mWrZ8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7vwOBQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7vwOBQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D799C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751825393;
	bh=LyX8RFQWh9frA3q9fl5O3sOKCKTmLCyrz7b8tLfnT7I=;
	h=To:Subject:From:Date:From;
	b=r7vwOBQdHz9CP44RFHZ6FTXNnt5zkq25PpbVzPqwfDEIB8wkBWkXmBGnSWQ9vMKbH
	 9GfZQnsfTPLSJtfMYls6TjAYzISi8a8yau3dEt6PJgptbt6/VXKb1fpuFkYKwsq7OB
	 TBDarUDj+9HHT56FcvMuaTIfP9r+rB0D/q81D68W6G9MKF0sg7piY1G9l3/DJW+v3E
	 1FnfLOT/YtzgGUbdBo1Rqnupap3Q0iQM1zj6KjD/nLIq6wLhTQvJAhlwVSycWOb3oa
	 NFtOTY4G83qCrvsToWccKnagk7tZebNhNbEN205WOKpBx+EEPhUEjt9xncIOj0+EcJ
	 DSzAJRr65CKAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF4AC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175182539357.25975.4887971792489981535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c408097686e50715f621d0048472bc48e41637695e10ed8596eb55b9fa818e82
Date: Sun, 06 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751825393
