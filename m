Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F88A15E97
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 21:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765832574; cv=none; b=RhYWsMhsRSdEGZDTZa15w9zIm+tI2eAGEtSzAsmdMYE0z8IydaOq3037H2/H8JRcaZiHklge60DKZVm70vMZqXLOU3ewFqrap6CraxDQYaamGSlB7LVp/P0qL/CCZf0vyh+INyhXwnTIhk/9QN0Ni3rRsB9Bn05vyy9zOVHxes4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765832574; c=relaxed/simple;
	bh=ngkczjp5HpD4ENc6rBtWag745/m42PoXSfWS5Hzx2G4=;
	h=To:Subject:From:Message-Id:Date; b=StUmqa4cW6aZbAIa2YX3+r03aLfNKP3mO/iqRyrbNIhbkTDjd82SRclf2/eAgMqBPpnsBWvmM/IjC8xlIB1PO/V0VHpu6ldOj6wJ7Qbmyw1wM25gqkOHPJAnHfSIAojxrA96nZu/MmLJy4ras8jgjdPJrSiNAHZWs/z581KVBtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rcm3ftir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rcm3ftir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5FBFC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765832573;
	bh=ngkczjp5HpD4ENc6rBtWag745/m42PoXSfWS5Hzx2G4=;
	h=To:Subject:From:Date:From;
	b=Rcm3ftir9gY75yvfwH0q5XqAitcIcJS4gP9tno7EjGyw/WPa1qrWxppFxjLRGZn7Z
	 C1NwMqoVtL4sNYQ9j9OseDpXOT/zjQEyJZaUFCdPNLlO4thW9yodhwi9NQZWPbWaTv
	 cEdRZGV8NoIhHA1b/vCq5SctAAToXw9JYPQ+G40wOnyB7qdPEwCOtHBKjfTOnmE8kZ
	 ijcXUtjO7jJQjwUbyOJtEUI4fqu/T2s8FxT2Um348/tSaXi9kqvKlOBgy0foxQfl8A
	 yTwKEXEYij2n/mPYMlob92dPtjqYiEZgI5Ep71nTzQe9rlt6KLlOkDxJfOBu50GyUu
	 noahnQwBQiJBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D32A1D5B866
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176583257385.20861.15478535285692259677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40135ac019e17c3b8abcfdad3b0d7c1317cd02f05791b5aca21ad2300ec56764
Date: Mon, 15 Dec 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765832573
