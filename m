Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DB413635E
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756345794; cv=none; b=kvUN1eMLUUYslfbboOJxlr4EhX28NLX+uZBxpU6KwnL0Meos0J1iaLhRKTxTbDs0ItD76bLwB0JTShkKt2RtsMi4VueutvUBhsYA1sKxSjFjGzMNygpIQUoy331sLPrVAEEMsVhmCvkR/lCidYHIkym9n7/by+zS64KXsQJt468=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756345794; c=relaxed/simple;
	bh=n69IpJ/YGo7KirpSFM3aCFA5t/fsRrYD3MWNnkTXYt4=;
	h=To:Subject:From:Message-Id:Date; b=miLswXGTm2i8xNJwXGCWMk3tSzwswLwmwIcTuUuLcMko9n5/1kk2IOXophyC8xtDnogOYs3iw3J/3Zy5kK9kLFfdoWGL3+r20nd3Vv8Q59qOaX564P9gq24vFnOnL3OxidKpmfOlFx8+iDl4wZ/CYWnhuBYSUu0NcjqYqTI2OqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBf47sOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBf47sOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1029C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756345793;
	bh=n69IpJ/YGo7KirpSFM3aCFA5t/fsRrYD3MWNnkTXYt4=;
	h=To:Subject:From:Date:From;
	b=XBf47sOfPFUEXbswtF+rh1TKQDzM68TZKPBLSo6lg2hQtn7ZkkHEAI8/k5Cl/nmWP
	 7o+7PCXGC03vH5C8qjWOuECrteeHozp77pfY4chbMWZaw07b12KP4L0SHAtfhdtn9S
	 kkm9TJoqZQ0XvBqwmsXwqSucNmOsWcrp7z3SOYkSRYKoJVwwbtMpPo/MBJU4C+Cv06
	 wSq2EHexVmjRg6jxnQRwaKThmVOgnO3mxfEGbQFxJQjshwPc4oq5dWmXshDrJpPnbs
	 E+qShplSzQUxxzjPnXgHL0HhTGZHhGWifYTKsrfEleyIwa+TA6lE5tQAyWI0NpsL6+
	 G0srxmBC854wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB1CCA0EFF
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175634579357.6383.1483875456913580519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5f1023fffa0431a4a79582d034fb764a579fd3ab6f1b3f843ef69e9e83ce81
Date: Thu, 28 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756345793
