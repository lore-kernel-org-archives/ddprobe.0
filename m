Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3791E515
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768102434; cv=none; b=Xk32qAJLxLoe/lctvH4YGy8Ry+GhQhkqPwh2x0S9mdcHhkp6EhQKgkWd8ejFO1eTEvBgzocvdOLEIk6kE1xV2gy7Q9RHWHG59o4y/B/H2Jf/jBwl9FeQAXmxB0adKuhzyhQa5nEnwBLGCtq3JJxGL4LvOqd9f5n3twCe9xiBNl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768102434; c=relaxed/simple;
	bh=aKjfqHHjjlRIpp9XTRqwahGuXE98o9iY2VqXBoaFNjc=;
	h=To:Subject:From:Message-Id:Date; b=guXc9n/gOmcyjeqrLETUMDpkj9Hr41Jw5evVJh5a5vUVxbFMdmaXWgniVvqcq6Ku90UHnLdbtQB5Df2Ys+1wq5zkr5YE58wCjIijrvzS6FY41Brw0JOi6/8fU8Old8InuqvTWiftF3UjkKfz0gYBbbpPZCNWjZxUAjMa1YPdTfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFR2WPDy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFR2WPDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61CCC116D0
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768102433;
	bh=aKjfqHHjjlRIpp9XTRqwahGuXE98o9iY2VqXBoaFNjc=;
	h=To:Subject:From:Date:From;
	b=lFR2WPDyE69gDNZpZxWF0sYk3jvl2MWS1ctsQhYDeOSVw6t8tvs4hbv0JyoRGQdAn
	 VQ4h8752AztGUmevpnZvYBZwqA4ba+jNdHvx6xbuXbUszmhDw7YqX4NBK7lML6k64S
	 tFfhleRa4aI43vL6Al/F4/8Ra8yNBe6Iy+r7MCmnX3jH7SrFmsSMutwbJNtDp0NUvC
	 hDqyGTVIKvL/JJdbrLql7ZFNRBafRd6k6mBwPShcLWZJ/R8wbdyoqd99s0NcbkYVDx
	 0dc2rwEvXcObxAvcmXJRn6Gt6bJPO0qrjF5WxRYULmg7eqSOkL+J2O6xycZ6Bp+VCH
	 o78RFh3+7Ptnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92233D25030
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176810243357.16402.5288983997858596300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 753bc4167d8985c1adb0d87c2b947ba38dfd1346a6b1db6e897afb6da62635c1
Date: Sun, 11 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768102433
