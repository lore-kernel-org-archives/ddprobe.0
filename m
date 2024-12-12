Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35926210F47
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734001554; cv=none; b=S7zKfiLnGyYaKxkfuOBY7vEUV1FvnrCm3GglKvvXfBBB/d+MJg82JEzr1E/SGBRCALWOTE0oxKOfMxWKI225pEgnSRpr3KiGR5fvblCaxVa2aZmnrHtCuaQeJJJT2lLaIEi/U/maz/Tc0mWpexcbt9P3K11sHqxfUDzwxhDKUAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734001554; c=relaxed/simple;
	bh=mr1x/tgxuY8deXpSEy7cP9qSzISDrNTBKcYkxZOwjOo=;
	h=To:Subject:From:Message-Id:Date; b=QfY7TWkRkP9kxc35rfxNHpVRUURcmOwxg9MBul/VDIDDPszfsrQApLx40ceQR3kDwUh3MPj9Zd0lsN0I03Z/f1+VLP9kFNLB7ePrXCxeAl3JKSdefq843jtBqTR/AVQPoNUOY23scfXmnoijtwc9c03ClZfvxrPFI0Dt39Am9vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzlY4R+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzlY4R+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5591C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734001553;
	bh=mr1x/tgxuY8deXpSEy7cP9qSzISDrNTBKcYkxZOwjOo=;
	h=To:Subject:From:Date:From;
	b=WzlY4R+V5ssJetjoW8Te3M4N9G6gEWK6Z9CCtvtd4xKQAL0Drq5FkzG/TT/VcpW+J
	 k0VeaK+sf+FnS/SSxtf1jIq0snZjWcV8dr2Y+DWVj8cefLvbQ5cFRV+HgmoA+617Pt
	 sky5KOCTOpo67afPSjBQzP7TJIsKwLKYYEkFWPCVFR0g7ezasVjWdfWXGwgG3O2Esn
	 Cmx7x94cz84HDCBicAmLuj7SHsQPWZkhFG8kxPODxZOARM7aZx7bjVV7reklFTjoQz
	 q8K81jX49YIoxezSparFr07XOK1h5HEJnRRSZawvxf1iETTaALYgvzpugJA5XMhzAJ
	 EHIetZw5ymJEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934A0E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173400155359.7880.3234448892866808244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 675e3d428857be01fdfa65395e16aafbd147dd83e9f70807aef95e592552446e
Date: Thu, 12 Dec 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734001553
