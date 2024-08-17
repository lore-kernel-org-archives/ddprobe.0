Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C9712DD88
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723925754; cv=none; b=XkO+n5UzsuU3kouYyO3hUq4Y8MQFEXrY95tU07YduLcZQLFllRdAl4h12ipVTvHAd8v/6fbniPDDVK4Ij1VB+IdypKA/o7ya1Qxl5uso18/EfF/EqelBgjio4mEmvl9QFE8b1q9FxLOLMACXPkOB2CdFfcHQdKD6gX81hgDrehs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723925754; c=relaxed/simple;
	bh=GIa9IHXjl548dOPcaiQTk/QyaiFlnAN0dtzm88HVO3o=;
	h=To:Subject:From:Message-Id:Date; b=g9doHG3vRdn5qzCnJfo2wRp/34q7k6xYfNbUzuGMrtGw096nX5gFwfwe20nSU+uskO8557UNsFhbDsOfVYVVB6XzjHMlaTP5obZaot72+VhvGlKnGSpm68/HrGh+KglZs/cqQiUtxlYDUFLmC4Ma+YG5W7MrGpBD3c90iWfaMQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDp5c6A8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDp5c6A8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCDDC116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723925753;
	bh=GIa9IHXjl548dOPcaiQTk/QyaiFlnAN0dtzm88HVO3o=;
	h=To:Subject:From:Date:From;
	b=jDp5c6A8e27z/d9/mj30EM+zPtKCIPiKtWO1nDEOJeGtaa9xihXUSAVsY88ypmqRM
	 uxK2hFztMs3iCh/PP438QF+bvr6tAjFp5Yh2d4ZwicCcS/3pcT2EH4Mv9vUXIL8Qyz
	 WMGEPq+kJZU3A0sd5LbCOX+XaJM47orYqUVIgGCzAwoBMQPiozJMgbUPla5c9jyis8
	 pV3Epu8m1376vVNUCuk6ub3Wqwlmp6cq3CYx6jo8mtcQFzCu9utA1j/CwckaDROTzN
	 EzJYS1mPXPtQD95BRVnPcWYe4lLejziIDNSyhYQu/9BQiH3hw4NdUIdawqytOrRuT5
	 IDo1OedqaYNFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B63C531DF
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172392575358.20998.693209989194136935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e0d8701c18820e952ffd951078996bb5028bb774ff6440c447202633590bea9
Date: Sat, 17 Aug 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723925753
