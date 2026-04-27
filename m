Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112BF3B774F
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777288654; cv=none; b=iVSOmbHfXJbY1zUWUqp/dE3l3gwq6wsYC94fq5l//yzzt/PLuKLiBT4k7nGi5/t+wMxgnphjloULBleVgyk2Qojlr6aCPZvM9l22rPereUNJgiiOssXMTvhO4/xk6LwRgTOzFQCDwYlmwi0waMfZfOwknJS6UasyPy1Oyaa34WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777288654; c=relaxed/simple;
	bh=D4rYe5AQBYZ/mceebzwAgn+Xp6zZC0O5DJAmDEeDRpk=;
	h=To:Subject:From:Message-Id:Date; b=FSGqROF1Fo080YUFlZPZWkobRLFjWTMVuN+ihpJPtwvsUlavF9+2ue+/Xc3pQmV4jsLeHPiK5JSkZZOs0M9TwGrrzwxw3m7pgmQJwsP+/9N9zC/Vm7NcXQS03SQgreEi3Dq4MIHq6lqzwICDwnw4Kk5y9u9q0BW1lfj+WPeUMi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bP165d7W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bP165d7W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3643C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777288653;
	bh=D4rYe5AQBYZ/mceebzwAgn+Xp6zZC0O5DJAmDEeDRpk=;
	h=To:Subject:From:Date:From;
	b=bP165d7WhUoProS6HZrxgnhyRplX5x+MkRXz9KCTKwr2shuBTvFBB3ftvk+KOOrWR
	 wFZJr+UXOIKiK7rwxkebMMw6OEcq1l30K86uQWoj36/o3TdYmd6b8sizxs235m+5Fk
	 4bv47IYcR7+nvjrmkw2P5c3BLzZ+0i0Zf7zBedvO2Yzpku+wjEEUSPg1STNrTMgusM
	 TpnvohfG6x5+joKV5zqyPO7TgywecCAfRwRW3OjnX4N+YjAQtAQlOnJJjaFJNhVfHF
	 Qro/MdBb3wTl93VjgOK5ZayNsCX/sfm66dMynVEdEfqPzP79w1XqAalo+pJ75WhxL3
	 PmL6+peXstezg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CC1FF8861
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177728865371.9448.13438268058785149898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58fa92db525561f9163596d421bb2c32e8bc863fb9d33faae05ed4b44e5199a0
Date: Mon, 27 Apr 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777288653
