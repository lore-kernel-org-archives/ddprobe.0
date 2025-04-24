Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21629189916
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745503194; cv=none; b=quaxJWFT9pIuFT7jcFFDjezfhcmx2YS9xHKCVeWgxoOKJp5H3+I1W/XKn+Mbmdoz6RxsQ4EyRAcyZcWN9FfiaKdbn47htdA+Ng8YBxbmeqT6qEyHdB/qMnHUmKbmGq+c9pnql4TlXptSqzxJgkPxvZH/CnafGlMMDHEvPIK7BKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745503194; c=relaxed/simple;
	bh=idceLI8bOnK6Ky8ZR4oCUjQOatcbGc2+01g/HsTDvGU=;
	h=To:Subject:From:Message-Id:Date; b=IUXPjT/cHabobW241ex4vSrw1vwL/crGDOkIkwm2iovwEE418jNVNswMGUbXwTVk668N2hs3DIptltxUnvMlKbdXg/hXbihUPD0cJXWf4g1L7IiSOPsxamaJK3isWr8VdGpK9XcxvYul3SZ9Xb4jwGwQ8mtpa47QDISYpxhv4PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouMWan2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouMWan2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F11EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745503193;
	bh=idceLI8bOnK6Ky8ZR4oCUjQOatcbGc2+01g/HsTDvGU=;
	h=To:Subject:From:Date:From;
	b=ouMWan2+PbTgw2HY1sFtoizj6FQDQkUVCpkqOQuhK8/Wyd4KT8cB+KwpUAYAg3WLW
	 FAKVKh3rmtRKsLrhiW7vAAXg73fY8zxctG8gTitn+w1F1Z38msVsE5flIVLZ3MonPV
	 ygmd4Vay+j61daFWzGT7xZKbx2mFYXbJMhywdKN+wEsDZcmdNfImjqDifRh/e0rEW3
	 qoxS+5Ji2egKAsETd2T5oSut/aeaHD+Womo0wwtWyMKmf2WgSA7VOrAwZU/FKi3pHZ
	 74jTNrLqXe29C1ASzP3+U4eCZBePOS9ILqu+LTv6pSOjT+lb+3eGHQ6VWwlRO47Pce
	 abU+88UHzqLZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F87CC369C2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174550319358.9134.6829700990607712049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be20cee1aa92178520da32a41753141f15dfcf571fd9290bd327156b8d1cdd8c
Date: Thu, 24 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745503193
