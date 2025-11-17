Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5632F23BF9E
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 12:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763381514; cv=none; b=Y9XhMjz5Sr709MMOFKnZq+V25Y1eTGo51ulhGZNTysKlonAeijq3Wv+DDcIvBQOgEl0zc0VtnawR72si9+rPsB3bGeMqKIe21N6e46ikDU8hHSviB6vISR8jAuRcwIkcfqPmUu9zNTBBt6Qt4g9CQ8WLWL3paDoiL15MFltr7CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763381514; c=relaxed/simple;
	bh=y+6zimdpvvzH+E3y5AN9+3qbp3g2tqGDQ3sUU0emOu4=;
	h=To:Subject:From:Message-Id:Date; b=uqXUJSDZaTiQimkIKmBlnLUCvhtiPfEjyT4iWXaZIyjzTcI2S1vK28gBCi1VX7Juq8r0IEez54tA9rrMvnvTc0Tnu3MJLN+1IXSeshSxvYYB5Gb91oVMJQIZ2z49IHLcAyi3aQRMQbEg0caa0nFwvPDLg5RVF0zmtER04mSFNrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8KpkERb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8KpkERb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5423C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 12:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763381513;
	bh=y+6zimdpvvzH+E3y5AN9+3qbp3g2tqGDQ3sUU0emOu4=;
	h=To:Subject:From:Date:From;
	b=g8KpkERbgRSCnHgIlhhfisM37cZy3CTqTCW0fF21Rqjn91+/dv/OsLGMG4n4SeyH9
	 SloHUopRaryWVGlWg//2uXNG+HW/26hm4faf78tSLr3nuYC2vFKuaKLRKrzaEXp+LI
	 LATfuf2tlqt7UGTmkiY/3KsFfd/+1Mu1rd8aUb2NwruDS/BKd4+UYyUgi79NjgV2v7
	 48NkvjJxN/yJYr71mfGHHHzlY8YUQWcgs34KOl0v7IdaDZ8AWUSyFmdKU4yjOhjYtt
	 24cXw1jwKA8r7trJSLtv+iD4oDsn8vYqDTosQU6s9vuIz76ylwSiY16p7qKyk0z3P3
	 Dz/lPp+AVb3wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC47ACE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 12:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176338151371.24609.15795666154029686671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcf11350fd8db571aff40f6b476ee30e82bc2b2d7f384c476bac3f944a96a75a
Date: Mon, 17 Nov 2025 12:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763381513
