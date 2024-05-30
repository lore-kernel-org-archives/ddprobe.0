Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512486F30C
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 09:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717062263; cv=none; b=IFG2xriEowiRvCk553SxxtcefJXV75Byl5klko4ClLygWuh61Sv+YCiTNc+O8V+I7eaihwnCCiDubfrjorR2SVi/kQBYV4AtcVC8V2mk/x6hv+B/SqUPILcRhhHTyQIq8vT+sbZacWNIXOToTicQkOn6KGbcV3+VDDQWVUTsnCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717062263; c=relaxed/simple;
	bh=4zKb7EFgjZ2mLSKF7qXFHMg+JWdYqZmqGziE8tba7vE=;
	h=To:Subject:From:Message-Id:Date; b=UvQXlEhffs8zXu1d8bUKL55L+r/6lMC5umdlLKHGBmQBFFNhe3+yNCrCf3+8CcG3BLbYkwdPjdR8B4YeB+loP8FWfYJoVnUu1cl2lbVkeVwubxa3yzTDfL1QViUV3BfiZhUIkuLYjvZzwhw9nfKrTRUT5wtZoAEnFtS+zJK4WXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTZn0O8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTZn0O8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D735BC32786
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 09:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717062262;
	bh=4zKb7EFgjZ2mLSKF7qXFHMg+JWdYqZmqGziE8tba7vE=;
	h=To:Subject:From:Date:From;
	b=aTZn0O8uyxxgg8fzlkf42j+tv2X7/kimYPR2R1khQr1Ttu1DfwQEUqZ3AoPdhGej9
	 /r+TxwfnQj3js/NwJk9n7XCl4lMYr46xKq07bBYvu+sNutqW3ciSYtFRHpOGKIlABd
	 9GLhQiOPeHkBdXYTpvq5Hx0hwznblBwmV0Qgd/YPD3kGgb9x9TZY2UjydpSW14xynT
	 kr9Ah3kd8bGONiDRJI3eo/Zy5XmJ5rhGMS4osScXmUZCUFU3XgkCsNXtCTF39zNm+k
	 SGPmL3I24BNzlhBxCuiNDb6+vM2NDLhmPNmfbrrUm8kt0ORbrFSJpK08X96G+Y0BoO
	 t3//ZhonVqOTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BCFC25B7E
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 09:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171706226277.13114.8017482595077184788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a300ffb0cd465910c6bd175e3506154fc9f281635ae763579c5a788e264613a
Date: Thu, 30 May 2024 09:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717062262
