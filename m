Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DFB019F135
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753781994; cv=none; b=GJT2XUpJkLDP1WPcLtzqUrRxOjlKjBZgn6Z7MM5zE/ZsEsuvGlUZpqMQg2HVdEc6S8D9Me3kAKyJ/a4HJCkgs85TBDaWfSfKJqxPiahwcTPpLgEPjmhOA+xvG9XffapG6IgRuubz6efWX9b26pZSUz2D2Wp7B49g/u9xea6xLEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753781994; c=relaxed/simple;
	bh=EXTy6QkQCzBy6xG64wg8HYWdmoSjLfbhcMNycnVQiTo=;
	h=To:Subject:From:Message-Id:Date; b=U/bj79oNyeWbtXToIALJDnFOxf1wFk64CWVQvYvxQiqjTUpl+LR7VyAjtw2pQhNxuFN9Gc1MLUbkI0uQkbuUsJ0HkJ4u4R+tnDy5562FBLc7S/TU0bGgTikHuXzcKddg1zSuhceEAQoxGMECiVKGPEA92Z588wbpKrgo/jq0i20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0SaHAR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0SaHAR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A345BC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753781993;
	bh=EXTy6QkQCzBy6xG64wg8HYWdmoSjLfbhcMNycnVQiTo=;
	h=To:Subject:From:Date:From;
	b=t0SaHAR/zzyNioC+IoSSnFDb0/qlHIOMn6qT9BYZt5n+MzZQQ2i2xEH66Y8qv7Gzt
	 2A67fUPrxqG9H7bestJ6G51r4xga+CJppVYyPs1ygZeJZ+iNRX9olITFNWsJrtct2X
	 AGveNGC0V0GRlSf/LANF07NxRR37PrniqNBo2XV/8v6pU8lpJoO71eS4eEodVVphSi
	 +RDIPoFstBLwJ9doXDHtDBc2pCajn+d7demzNK/DHvyqTU3JsBC/lKP05/AmY/8wxM
	 HKwa0iICMHlIOpBQbU+/c0ozVZZQWYicBHstVNyj8MH5hKxMgUmxR0Lnd3QOpu9ONo
	 Wxj+fLTxR3WPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F922C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175378199358.9778.4526512386862069874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91005738dc27416214ad3c9d892346f91acdbeb5e530ddd8b8b8a0f2ee5de097
Date: Tue, 29 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753781993
