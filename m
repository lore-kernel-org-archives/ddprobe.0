Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D08D279DB7
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757709595; cv=none; b=jhGpaud0u3zAXS278B1963yXwTvmStUNCkID5foBPT2wRR/Uu03j3TvtjQV116GGLV9IBS7hb/TRz+cGWrELtlleNbOxtvZv1NuUhltuNRWM63LeYEf8bP3exK9gwmBE9w/LLJoHKBt2EUofvFLGV7PyzUvXHkl4BixPk4bl8m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757709595; c=relaxed/simple;
	bh=W5ipH4CdoHlfRRCh0gIMZjkUzuKMqxPSCHfAnMcs2PU=;
	h=To:Subject:From:Message-Id:Date; b=eRFujo/k0P5VJsUlHB3PbOG6A1V3Lom5BH4ujTnd9EM9F/KHZhKQf5t2FntCgeKagUO2pIIsq/KbG6fXyccuz4jQp0Ld2tEEfySt2CnQubwbGWL2XWmhNsAbNXF6UtHzKkV36sFHWij7XCIlLY3ABDtxn0zRovSLo3kud8dQUPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfDr+Ce2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfDr+Ce2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A421CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757709593;
	bh=W5ipH4CdoHlfRRCh0gIMZjkUzuKMqxPSCHfAnMcs2PU=;
	h=To:Subject:From:Date:From;
	b=MfDr+Ce22SH2ydcFCMPZLTyQX5I8jon5HAgRGIEbnnZXdWbSmXdxHiFs+idvqjzLf
	 E2+A7z/eVrejo0Tb/VBuSNOJxS0ixDhP3DUZmRROpgPQmHu2ZOI3Bov1MLiLBKkxhj
	 0ES8RLXl/UF4kyM2ROpe9Nx8pCWBBGt9kBMKeBd0xpjwUGNP4pB9meP18sQNZVpKiF
	 lIo5aV7PazrSBHMdEZ/ApRPEm/qwa5LOa/0DruC3raURwFc0k6Gl7xaK65LqhCD9Li
	 4A1yKHBXgNHZejmXCnHUY00pf9QBI/heBWZNgtJ5TBzf3n6JdEjm1dHA0Ui/vlsLYh
	 915O3kv+lb3pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF38CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175770959358.26033.5495623368615627652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e122b83ea048a6e783af11c1eb1ad2f6cfacb673addfe9cc0402ea247dd3ba5
Date: Fri, 12 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757709593
