Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4854D2E6CC6
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 20:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763671314; cv=none; b=dxuKs4t6QuKkQYMvSagvbGEhZtYKio7eyEa5Xc2Ux6zmW5udDvvvwHiwM2vKl6FFjP/xMtfEO5KsbmUZIeTwHliRkdRm3W287xsoGYqR0W5srnClrTDQJnpub8mwctK13qKWMGyy1xiMmLXrHAStN3R/eVy3mEaUkV2oPNacOPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763671314; c=relaxed/simple;
	bh=pCWbA191KXlOs3tYtAKy2iJC+bPlA8yzQSt3D+rP9yI=;
	h=To:Subject:From:Message-Id:Date; b=iUFT2bYAS4fKSy5z2CEKeGoAQK57/RgntA+xBbUtnYwNypX/RMhkiLE2rF2UiW1DuI2OoBGqitoPmDulFxbTvcUy4NdHYkVpBPgbyrE2Y2vV0i2G5i7CUFTbKTCZ9imsPsXPxgGlvEkBZNBtBb+ctSXtgIZw0LI+5hZHptBqgoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZOnY0no; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZOnY0no"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE94DC116B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 20:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763671313;
	bh=pCWbA191KXlOs3tYtAKy2iJC+bPlA8yzQSt3D+rP9yI=;
	h=To:Subject:From:Date:From;
	b=tZOnY0nou80UeKlsXYedJotLHV2FKDhTgGZjeAcZnyYtwjwbe+MbiFLSBIBb2Zsr9
	 YexosMWvVNHT7PDONx4XTfcipzD8rjRfGRVa8HfKm31Qsi/B8Cbd2HFprXH6ouv2ds
	 wsdq+17j+bRcxVvL9sa68bKMvU5BrFsv0eF+ae74CQAxFSvJmjpt8oqgfRroQsc4YS
	 JhddIVIXgLx3m5azuFAZ8H55wuPTPIwEV5Ms7h98CivNltoZZvaINTaSbJn5pZaILF
	 RTZuyu3rh4RE60qJnSP37Y9Jdw1+LbcXDmmp91I0anwYQbGyS3nB6w6AYxB7CZo8nz
	 FbwcGQPV77jAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB64CF885D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 20:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176367131359.22386.364118316977098157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4548e2d2ac7ee7bc0e29c77fe6890b101b5d73a0eb6a3c26e14221e6bbee20fd
Date: Thu, 20 Nov 2025 20:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763671313
