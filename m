Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AE621772D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749485394; cv=none; b=G7AVvItS9AsV/qPEiSR0t4iI72hd933XIaHGj42Rvquvouc7Ngn8wBw3wMQaRgU9KZhc5I2ZNHNxRpXuV2eJgYT+zYHxkY/T2gK3Mt7Qxdn+PNa+RO/jasmFSohvIkz38y2SsyFmx9nm0z/d4cehuhHAzcnEkEJwx4WE0wobIxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749485394; c=relaxed/simple;
	bh=kU7GkI8btjLLQi86DEtMAPs0fFRtNxfdXwM40YTWb+s=;
	h=To:Subject:From:Message-Id:Date; b=p7jUV40sSHg/BN3soCB9DGSlGiNRqmEvLZaItFflFQV1iM6U9KckDjOH9Gn9lNk7yyg40ct1Ft0UWvbzZAbUywJjbYVW7jT1tqVVHcPguDbFba2yaOKzW4DPh3rc8KVRIao78UXa7QO2fySC7n13kUkp770/zKpyHQUIJTeg8AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XadXkwtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XadXkwtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CF5C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749485393;
	bh=kU7GkI8btjLLQi86DEtMAPs0fFRtNxfdXwM40YTWb+s=;
	h=To:Subject:From:Date:From;
	b=XadXkwtCfLEovUawNeIvi88Y8FKJ9DtJZrRo2bsukZPpYhajTEu1XOZlQbSXy8Tw4
	 BsZ7Y+dj1TQZpDm3PxNVnB5MsFP+77l+QLA7H8Gd0NzoCF8oZhnvWQP+XlmAV74aIp
	 vN82/FC5G2EWTlERyWaJVSpj42iXrTwAyGcJoanGecbaxqC8WZbySvpvuzjz2hIcg6
	 evFtngpp1cbW11oHYDHW14ly3g9/cFw0RZrpumslMK1hvPa5nLTy+zX653g2aiO7Gq
	 TsffaX1t3ZezETNZh3mNhtKQxwzFDUXmWRrT4hGtouC1OfzDIuruerEVoDzNYHTVSf
	 FPum4uFnkmwDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95863C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174948539360.23959.1810384573698202195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 154eefe25977aa46c27dffea3fdac0a51a6c79e6c7b55d7238307fe8bd996022
Date: Mon, 09 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749485393
