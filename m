Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727BC47F3B5
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791201634; cv=none; b=IvY6P1cIHunNU5EjvsUVa+1IABiw/90dcueT1PZLNSDNEt5vOewS1EeQIsaxjCJoz0TyuKMB45lrd6FE8AbZjNgHBYPkpctDUlHiKwr7uDsuEblcTGM1BuenkMXNNT/S/GMFOIkneLYGA7jxIXMv47w3vLB7kTMCiABTHczG2QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791201634; c=relaxed/simple;
	bh=Bwz39pc036kxpGiuopB1cEmtXURdq7J8XedGBfNZMpA=;
	h=To:Subject:From:Message-Id:Date; b=BtsPbjZgKC69vpTSRpxgJ6JSDRnY+K9Q6DzwR15iL3/sdLJFtmeeCkXX5vilH7MipZxRw1lLlEWhMBVNgJahmR9sUbSdGWybTz22ODaH7OlnbnhBS1PfrUBq+mx7TQUXkmwxOpicHNx97XgfleIzJ8rkXXOy9VF2mGMDB3n3W00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCRB37km; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCRB37km"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B05C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791201633;
	bh=Bwz39pc036kxpGiuopB1cEmtXURdq7J8XedGBfNZMpA=;
	h=To:Subject:From:Date:From;
	b=GCRB37kmUOzb+0VerprX13e2X55Amc3mMX7IB+WxQDgds3MTK4BvLUfm8lKiKCH6E
	 aARuCMOiX7FB09VWVFnQVbX+QCTdoyLjq3QSMUPPLIyj6Xp5ghBxhHYQHBi/ykueMN
	 KKmxWgMd/ZUL64ZfxiKTCDvQJw/ff9n6ZvpXaxfIGAlahVOSsHcq6KQGzZQYLhDHGO
	 LwYEwZMm5khEdk7jDZOAgn+994rTi14DN/O79ihZeF7460ksAp8zop0ByjzfkodO7l
	 86WG1DOvRRzEp3uuW+AY+n7q6Nbk6M6EkSY+CkghupP24Ghu71rDx6cKPcJrwHCtCO
	 SqrYLaov09iGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B235DCA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179120163371.2174.17971467565976207025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e3ff4e93b6ab52d3ec838ca53cf356b1b1acace4347b081c30587ee66f4e0c
Date: Mon, 05 Oct 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791201633
