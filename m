Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBABF2F25F5
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774027494; cv=none; b=O1MXL7b+mCTCVjj/13kW0ICcADQiKp3n7Mbm3kU7oiKV8YvUs8Asar7bPw+x2WUFYJkz022TKfYt1OYyD0nhWE9wzQvjest9TaviEJtrbs0UCeV82Hm8+eQW7Egx0Zm9WNXrp+rfX1adnBMvAviFURkMhXlKfla8tALd8wLMtog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774027494; c=relaxed/simple;
	bh=iWe4bs3lgMMxHa0Szabg3OYh9v4u5mzq5BcC++80OCo=;
	h=To:Subject:From:Message-Id:Date; b=ZMil4dnnJEIBmS03bGmc2PPJgujjKLVJh2OiQ/25pqOUxopQodaWeCtcFofnM1s37EuVfFNql0omBKEJWqoxYFHdGOvMphyz5Nx7omW9LL+5bcNgFUAcZFnCQq2cuExtfPC7705hDqjUeVE6r5WGO1Fs2ICt39JZfjzJb5XlZ2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvqlk/pK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvqlk/pK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A9EC19425
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774027493;
	bh=iWe4bs3lgMMxHa0Szabg3OYh9v4u5mzq5BcC++80OCo=;
	h=To:Subject:From:Date:From;
	b=tvqlk/pKxGgfJE/ltWWOzloRQPDQNzlKbdQjDYn/n9uDpY1Nokvxv1qvpfShi3bAP
	 MqQ31AaVgzUWsoEsaFlyF2kuJ29cLuVxtotI6vL7t8+RpZtN8RYAGWBLl81zL1Y+GX
	 0H61E1dsxuPUxMPbVntbf6mfE+Fn+dZWL5lp0y2z2T6VHpSr9+LTy2BXKtMLGUwQYT
	 Nwr45BptzsDrQ9nkQRhvY2ppjyR5JUuuOG+MBYMtNX+AVVKlql4sSRhwya6Oy5e9RE
	 NY9W+8D0N6rDcyJbL+eulbCYJIFftZCPtxxAXdHX+BvKO+V1ygasrPglA/YcEQEOV4
	 H8PPVO9ImZGNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912741099B2B
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177402749358.825.5860336107329263143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1de7a1e3cbf569c939dcbacf576f412bb4d3f8341cdd49a4823450f23647ef35
Date: Fri, 20 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774027493
