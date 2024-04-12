Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F1601B968
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 04:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712895563; cv=none; b=KgxOQqUyWyibBKkim6aGYeTBuHDQH5ix3XB4Jk32xaybFLM56QAp+OdEoqJuFI8pWNhvcCnP2pkIkYepWU8cogLDYrouRVsI+KcgoysJ79I9p+XVEWysTmbpr8oN+PoahVeeQbqhqO4Y7Sh/QSY/bjxkYx0Q26xc6TfyZQLvlYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712895563; c=relaxed/simple;
	bh=8SloMBIzb9zmJp3dW0B0n+ifnA74tmlzeKFWBzYpU3c=;
	h=To:Subject:From:Message-Id:Date; b=aL2kG2rzO9eiBgO28Muhyec0zKXAp8pFf6iPC6hkNIGXZmpDsLL3Rpe/tIdRa7vaRlXYSfEgfW2ENJCXcQLnBbwZCNx8rpWEpXLlnnfhm04dAn8DSgaMNecp+0J0J+8JNjgNGkZ0ZuTXdhb6X8h3wvH7i0Ovic2dqc+udBjCV4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myWjeVyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myWjeVyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A53C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 04:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712895562;
	bh=8SloMBIzb9zmJp3dW0B0n+ifnA74tmlzeKFWBzYpU3c=;
	h=To:Subject:From:Date:From;
	b=myWjeVyRjtcMSa80V4S/4QyehAn9IdLIF6tYXg6S45hBZrBxSN2WmDfzbl9iHCytW
	 witK9cCDr0Uw95sbBZUKW2pQQfwDJIuyLmKa4M5q3sAaFBPF5grg2YxXY8MeMsVsZf
	 Y/iCJ0dvvx9e4EGe6sdguhawmOVFx7/yf0edoUZmVqQKCpRFq1VMkQMW39NnF8Ww/r
	 1KRxEk0ibmewJnza7gw64Kh979rxvtr1FAldIyQfZwcPTw7+zynKpwIyO8QDKxKpb5
	 jxViLVK1rRASFP4lJtaoH/0zH/WG969qZ04D1tDkYs/D+3YWXBQM2n5AUBKHLTtSaQ
	 5NSlZA2940w6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4096C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 04:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171289556279.30413.18319962825563816834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be975124ba7258c04a9f6322f6548e63a30477bb89d6241d591348d48023f427
Date: Fri, 12 Apr 2024 04:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712895562
