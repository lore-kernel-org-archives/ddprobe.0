Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434D72AEF5
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752788994; cv=none; b=cyQ+D+FroeZM9l/kt4L/wHF/eFlTrcGDQhrxS86lvDjtVHtZSxU8PgwUZsBSBtPD7Pc0JsV1eW5isTrkauIcBRvXxMQJ8atrQDdMHlWdqQyD88xljyG7Uiw0ET4cjmfYCQ4/5oCCnH2TPf44KaBNiystlKMV8SgU56QDUejH0sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752788994; c=relaxed/simple;
	bh=pFPhF+aRxA7nPMsIBYF28fOGv7Yn0L4NAmIIlJLlirM=;
	h=To:Subject:From:Message-Id:Date; b=muHEM1TYIuVP4PZ95iEcbISOFXX/kq5JfsPARm04wE9eIC2BvA0TaketRvRyzHgcvUmO8C1udluXaN6GdsPnKiyxrZDcikoNuN7DccapaidQGb+RHgaJO7FcXY26HW0AL4pY+nrEE2ZkHGogX/OFOxH/U9GSCZVOwLLwS2YiBzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0rEz22K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0rEz22K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96C8C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752788993;
	bh=pFPhF+aRxA7nPMsIBYF28fOGv7Yn0L4NAmIIlJLlirM=;
	h=To:Subject:From:Date:From;
	b=V0rEz22KFmC8/olgVLCbCPj20iN1SIofug05ct698jMKVBvSDhHyd+PA/WVXunufQ
	 1ZBBB4VHkMeKipKkIzHZvt+tnazxqR6cHlgkYOHW69ch6lLGtQcgB3juuswykFqwxN
	 Wad3AEyJln1G5xllHT1hQDauw/rkBj5djglljj/ovGjy3C8l9hwqdbOy4HNDcY2vHO
	 VzkAprQiU0TCLHWKGJU68hN9x744MeYJwYoAgg7bfFFTUaHS9lgvC9DNl/dc98IpXE
	 CfeCxBVJwCHshLTARcF6GQ6jiEEBnOlNldQ9vZf36kmIUPigqC/VxbtdIIYPaAoZEy
	 wyjsZHoBXyTxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C08C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175278899359.6216.8664487274578943555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c6e466d5d9bfff7199e9558c18d734b3ce87574b98c0b0706c6f4e5a89ddcd
Date: Thu, 17 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752788993
