Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EBE2F2E
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758238194; cv=none; b=WawXCDC1vsEryFZYd0J/HQCY+48CABmPiRjKjq9OtnI5lz48DVOaTKiDRetHZVLDdDdC5TykUTLmCqbxEJgBquUcyMebvcPAmTcAn4Du51Iebp9vmlE77vsh5XFJXUJjxUZSGKshNLsO27qLGjHel4UBjGoWofE6EVuD4yoLVSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758238194; c=relaxed/simple;
	bh=pLTfu5w7zdOlt0sl2Frjsiu0mmymnCn+Vn0Mvh6O++g=;
	h=To:Subject:From:Message-Id:Date; b=Bn313v+6KVFOx3YVp0fKTY58G4ZE9UWe42Zn2isd0FjnZhqVCf2vBNvpDUyWxGcVAL7lw2jakOarxOqlX1dC6lkh657o0JQPKGm9X3O7u298PLY29h/Qnu5rsePASXRvYJWqKTyJ3ginfjp22dvcCbhaf9VN1QmLp3YaqxE64X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYz3YfOn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYz3YfOn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5473C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758238193;
	bh=pLTfu5w7zdOlt0sl2Frjsiu0mmymnCn+Vn0Mvh6O++g=;
	h=To:Subject:From:Date:From;
	b=sYz3YfOnuDtrPs2pLKS2KUZrd5snxsF9FuNBHfzKEGdz9T4W5hZmHTa9iz5kV/t3t
	 VPK3eLA5Bio63HlvBQKPuCrGfTNMnRHFLfKS7LvtkqX24wyqptIJvOx6xFQrxqIHiF
	 DNnjbnjd4wyFCQMlkiSu/44z80tQuHMKDe26ZcGC+fvKZP5hR6q/ouc1UcYhfVj3Xk
	 wRQemb4DL70cizN2HwaFPngeWbjKcTRt2q7ddd/QFV5llQtcSM59RX+4bPWKrYJiZR
	 AhLHmbX7K/AirlqihWJ7oFfeNistMnWrc6g1xMJBpnUNg9ijpJxzl7bYTvnBevzV+z
	 C5e/yS+qMse2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C24CA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175823819358.19400.780573871934723069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 175106dd482a34302626c0d66a32cf34e33e36821ec25016adf6b6411147ef0c
Date: Thu, 18 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758238193
