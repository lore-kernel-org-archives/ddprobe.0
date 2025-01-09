Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0931233C9
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736400954; cv=none; b=cwW2S+hxMbrmLQvbNl9ZqVC1cku0fXs+qVVrkZEca4C1vBW4m7ATaRCTacpF6hmcHzlvlHnKD7pEBVDtmB9La82XmO0b/gsYe8jomyJW9DDjaGXWQQkKPnJ6mP6+HMFyOKIUfgJKyVPIr48sc5fll5A6HTqw58V2dWptPH+ZNJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736400954; c=relaxed/simple;
	bh=wzT60EPdmtplXk/xDcpwU1BWwnTuxIMyqe7w6tE5/Vs=;
	h=To:Subject:From:Message-Id:Date; b=rl7mXOTQdpJefrAxRBBNUwS6kI20sVm0vc0Mqi6vvfq6lMRE+Obit+QHwyxRb9coOsBKIR5jIRJ//AjA/I9b1r0Uh9Rmtzc0PRb4nUNHzrev0oP3mTmjQc5n/Et46Wgn+8h2CEOJyc2H2mzAt6LBgbEEZSjFrTFlngc7bMJi020=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9EvPaZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9EvPaZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51E5C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736400953;
	bh=wzT60EPdmtplXk/xDcpwU1BWwnTuxIMyqe7w6tE5/Vs=;
	h=To:Subject:From:Date:From;
	b=E9EvPaZbP4xFyW5ASB2TDHiULYoiFkvS2nWsziKPOh8g7u1osiKvBmlT93Pp2Bvsu
	 VBcO5saL51Ok875fy+Iu6dOQKJeG9FR4Zsloyp1gHjRYukNg0ExKfNKVrsPCaRY1Dt
	 bRHfDqU2R1j8ln2vPVImUsc6YLZpN2J3s176cuspUI+n4RXiNxyBOwqxONcZzoCxta
	 mNRMBMc6IOQm0HjelclGPYDCOUbM4EaAcxlHnN85wl3jJ2/AixdwsWbxadMjA1GJ4w
	 btJF9OxhIWQ8YCjQlzPI7KxpYBvAyYRgWNE7VgPegXuM4Qbzd04/3Bbcx6c0UATkdO
	 8PQ5yaQUKKQbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953C2E77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173640095359.23065.9017788556210613572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abdc8acaccedda18f8e019df3a8a5f58130abebadd35ab519e4322423ea1c7a8
Date: Thu, 09 Jan 2025 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736400953
