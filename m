Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD592288F5
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734022554; cv=none; b=S88rpYfnJX5lCqbkY7NJ/9HEtwRySGRRkSM2itreAlfu4XW86DkOQLsJML9o1vW+7y24ztF01B3PayEx80qAu5aG9Dq5jF5teKnEDuKlgU5H8IxVdNIDMMealJ71Wgg+LgKNKbO+neF50CZduATa2qbtzzuwIR5DmgJvrpeaG+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734022554; c=relaxed/simple;
	bh=RI/B/UCf0sdp1FCu3NSXdoPGpqIVqKtLWM/Xqhc3uCw=;
	h=To:Subject:From:Message-Id:Date; b=JZOBGV7E61Z0VQMqE81h7zeOwl0mHTHjyfCTxsqzbQcOcFyBaiXGgMNWoIkUqaR4el1TQBzAAWC2/aBv3TxF8ohCP80Xi24VYCGAlwCIUaEornWysXVg76qQmrUs+2v2EmxFCGbwSiNfFum3PpbImoRffIrJOQK4EGmcwXYt8eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHcmsyJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHcmsyJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92D0C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734022553;
	bh=RI/B/UCf0sdp1FCu3NSXdoPGpqIVqKtLWM/Xqhc3uCw=;
	h=To:Subject:From:Date:From;
	b=bHcmsyJD887xOYmnnJzk+9nzQAqCdNBIow3DntMlimdDHBHKTunSXnUnTqYVcsmaP
	 WR3fsxcyPoY+po/Kwp2Shpm/FCCXaDp8GiPkddUfdvcfomzle/ZuM0zICKPtqB+0U1
	 F8l1dOpjbFm5ndO/hpTgn2ne778pRpqNe6EuAhL4YEh+RLgLRyqiDo7FFFZdICEBVE
	 lZrBiUchYqDSLsiX1mfsnFttoUESgyczubLqZiNLqzAy/aHhhACPCGIxz1BjqZivIP
	 sPvC7XW3jW3U6TRMFPLoKEtzXWuJ0qvuoMkiTeWNxwTDvKxd2COxo0L+fpxWIhu1IQ
	 Q7yx4W4uRhu5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99297E77182
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173402255361.4629.11984013335087536834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df660787295b635a75ef24f04d62d6094a42c2a0b2df6a75de4c4ec1d87170ef
Date: Thu, 12 Dec 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734022553
