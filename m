Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2782D2F1FC3
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766581434; cv=none; b=d6WxGQBjjgnwlR2MEdQi565JYq2GXlneRzuj1+UGqnikigY41pZywSjYJ8gIuitBdph9otJY4NCQvsBbxRyGxrQekG4/DpaT5WD216m3CbxaZRRtgdfVHeiURFxEn4HoCAkpl/ZsQxsGiFTNWFw+NKP/CJILp4/2SYeIEkYZRGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766581434; c=relaxed/simple;
	bh=7qQuUxuucDohLN240CGLoECtCGTdFZEL1bN2Q57YLpo=;
	h=To:Subject:From:Message-Id:Date; b=NS+YRhLJ4DLixuBX1RvCt0iY5PJhiSYhmCT/UV5IsRovrXNaQpnR1RLrUGe+uJSgXumwYwYcJQitZwlR8EYdNHmoS017NqAo/o2HLrwcU97y+2haLLDvv72qRY1kb0bwEat1dMKHvnpt4wRZ1rltYNBdMCeCKGna0XyknNUHfC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMKe+aOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMKe+aOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D518C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766581433;
	bh=7qQuUxuucDohLN240CGLoECtCGTdFZEL1bN2Q57YLpo=;
	h=To:Subject:From:Date:From;
	b=gMKe+aOvQEnP+fcQzYnNYneT+f8kSuH2m9+yWYiLiPbG6/TFE36XAozD0g5pIT/Wq
	 8HV/8LxoqoMbCmTVBV82C46J6r2HIvx/bvp4Hf/e6doPLTM2hDODuSZPc5EUTYSsjr
	 tL/Yy/UKYSdaIKZ6nP2mKg7CaLqjxUBM4o4guht2IU9XCgcQAOk50KTUmU/Haq1i2E
	 Pj2LZLGAx/AHykc/pB6Tc7u/LOIDSDmocU3xAyeDg6m4/j9MHwO7clzmWADm3Vm6tY
	 rQJeUC7QxTT7Yv9uYsREg7R65OYYSlyAINLTRZ5j5mqzDByXiCJmChrDLDDGi5esxk
	 x4UiODTGo8YXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2DAE75455
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176658143357.7338.17943435859489720917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed225d2c325650c72327343b3c18653876e36f8f5879bae1a0249386f3d9249e
Date: Wed, 24 Dec 2025 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766581433
