Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4581ACEA6
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751213994; cv=none; b=hOObXQHXenFHYyyed2gkiAeAUA2gqiK9Xes0gDtmqZDsPLVPUjgzviuLIZvC1xKmX6sOk/zsvJ7lN5w9kzlXoomXB1ltv7O96twSp/YwlqynYofRcMCYC6Vzdtkm3McGf7lLEY0MVrXEkjrBjsAiSNyEjdll7iwqxicO1/wYIDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751213994; c=relaxed/simple;
	bh=40NczSKioHmpMLUVQxllZkSxhNQOM23jTj2afKfxHQo=;
	h=To:Subject:From:Message-Id:Date; b=HZiRXYQfn9hroYwOrhkTfoPFr4aNcanSocPXG4pFGGu0tk3VKWhH26SqIbIK+qg70MyPIRls0FP9yUOCX84qnsZMXtStWwoIEiME8V3Zu+enF0qO+Lu7wAr0N1ASmJzSkQ9qL7mkr0nDFgUnLcWZoE027a8WaE5tgQBRxoGREhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8PqCVmk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8PqCVmk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30EFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751213993;
	bh=40NczSKioHmpMLUVQxllZkSxhNQOM23jTj2afKfxHQo=;
	h=To:Subject:From:Date:From;
	b=I8PqCVmko4TAbFGd2LT4ukzG19Q2ehRARg+fynuJydjpTFy+UhapoEtX/r1EDt3d3
	 14erjpd2VU0hw04w3Nti96d1nqDOsg0trmrMPP5VJmVuG6XQxKqFWi5ifFml5LwkNT
	 Vydk4AAeeBq4nuKmcmn9ksfyIoCFNHC7vjGkeqndBebLm4LbEYmBoTwRN+Gxq2YCB+
	 JzYUuoIIsLeG7OlmzuRBgKgLinKrF+oMrh5H+8AcoVl05zbN9XN8hNdxkrX879a7wL
	 0oN+fN9yz8pfm0o78tJ/jHIrUAY1L9nFkGRJy/leTG99CsLgEjZ4dPGV/W44dXdDfA
	 Zt6Ad9r/fd/CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946D2C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175121399357.29987.3138893724270020297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b6c752301899ab6e62e0c6aad56dda3de68723b4c1a3166311f51ebaae4adcc
Date: Sun, 29 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751213993
