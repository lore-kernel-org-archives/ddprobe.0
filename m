Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFC22D876F
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 04:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764217374; cv=none; b=ZUnl0M+TPRgKO2W5wUhuMsxB3Kt6Hnmh1S/B62QyLUlZwxlJrkh034Vx6qSZWFhayZ8kMS22gCBc0OUgYSDVuy/fKEME/vvmlpOyaxX1vYh+no3NuKZceYgqhm86ByaoQ0oSugUrrEBR+/Ed96i70/5TckwT2xEgSOp0hMLtgJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764217374; c=relaxed/simple;
	bh=OBBUAk1m7eAk5YEwFoT6dJuSmbcwQG35AQD0S4uAc5c=;
	h=To:Subject:From:Message-Id:Date; b=DRy8a/RiIYxlOrIe5uKmi0PDatgcTAGJW1OzgAfyiND42BzfXilnJKQFLKulwzv1cxmXtLyfp+nFt/aT0Mz8rviZmiX+bxlFsZ6IZFpC+uwBODXmCtfy1idZGtcwqAn8yxq+E28+YhUIHkBEl/l8E+T0OE2N3dn9uqnu+d5kbKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBULoj76; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBULoj76"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7474C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764217373;
	bh=OBBUAk1m7eAk5YEwFoT6dJuSmbcwQG35AQD0S4uAc5c=;
	h=To:Subject:From:Date:From;
	b=WBULoj76pt0kIKXbPtb+LI+naIq5aQGiRHDkVPvFmM9BSmdU5npzZgWK2wsCd0uUL
	 wVVRtir8zJc5pCWqXXojMw8pMt3X4hhO9Bx/IIIRaphzFMm3h9lRYJXXObkZ8svx6u
	 9qxpdpHSRCTei9nkswPa8vgZfp4UxxEZfgreiVe8euElhmU44OC3lVBfnNLSwxBnQl
	 Rp97oS8X2LCw3LFf22Ke2dGC0Hu0FAWgRUCN7qTCTXL8E6blRHLk+E/W23lAeRyZui
	 08zAedU/1lM1orRE1ej2ZpX6ERvfa5/jZ/qL1E5x9EEmi3RA476VVW2dvXx5auMUay
	 SFX71VjrR29lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDB1D10375
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176421737363.10247.7309175017852097170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c682b35e32b667fe781e2332259b6e26798a3a92402fbe4941268a1230e3c11
Date: Thu, 27 Nov 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764217373
