Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4561C5F1B
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759852194; cv=none; b=TwU6ZGfZ6/+l063lu0syq7l9SyUMF0MHLZNY/s1g4thrtUOY29YLI8ZBz2FdlI9O0hFqbior6GXT0oSGOTJ185eFl1SqKI8QrYKO0AXPyILEX+VfYMz++FDW4eRft3IsdX3/ZnRpdSAEgZId3hm50umbyzx/gPqdL0aaPfY9SWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759852194; c=relaxed/simple;
	bh=v/o2OgrBtRScGurKuq2g1/RfCY3swiUKVUaetWHGmnc=;
	h=To:Subject:From:Message-Id:Date; b=GR7Z/Y52fPO+mtuWXjmCPAONgrmjqvHUicBIbY0zK3lEE4DeffHbkKZu5docZBUcgKrBzhZqnjMOR/hRuPtK0GExg7AEjZqr88TecqLX2/thIJ88SNuohDVh/fgtH4QQwjFORV/qDlWww7H9NKynQ/WXs59wUOhhhsC7AoD8z8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plWM9uXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plWM9uXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7387C4CEFE
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759852193;
	bh=v/o2OgrBtRScGurKuq2g1/RfCY3swiUKVUaetWHGmnc=;
	h=To:Subject:From:Date:From;
	b=plWM9uXIIOezpWQY3tCd0tVHijzG/ut4hPGBX+8H2geJTC/r0fedJgwk2PR2zB0op
	 BJ0eYvibVmWSNOIJysy4r17Y99gmYb0M/1rRjXGxUUq62MldiZOxavmS/+6nHs5eoV
	 iwGlAR0FiRpkeUStnm+rbiSu6FxSlSqfov6kaVW+zYxFmII1KYsAkVkMx0fApyilPr
	 3Axn662CkfOWFIib9zhjN8is8d7/UA9WIGuZrwtDGv0JfGjzvbCAYFfLKNKyVC0I7n
	 YPha5kBwgsM74FoGWqqdVfT6OUAroA1f3w0tUQhlgZZFakFdFoIbFC8yXfHdcxCsY6
	 /WTvsal4yw90Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C89CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175985219359.14898.12600287496988861984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f288221a67cdaec2d325afbd2c86fdde5697b6b9d579d31a2fb60fe9a837c2
Date: Tue, 07 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759852193
