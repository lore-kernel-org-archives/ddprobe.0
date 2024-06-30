Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCFC63BF
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 01:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719711863; cv=none; b=kkrWge6gL7x7bQBX/GC+Me7CtXVaPMysXzxZKDQTTY/XsEJ4GSSm1oRJ1C+U+VX+yNoZBWAe76pSYB4AcxdjO7XiSuKB2iVngyQuSGv+2p9Wke+7BIjjr3x0enwG7wvTNF/zQnHQSie/eO2OBxBUBWmeiaDHobCrsWF4v+XHkJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719711863; c=relaxed/simple;
	bh=B1GPlRnxzaedxZicwuuH+U84aXg5SZh5dsgqkv3NotY=;
	h=To:Subject:From:Message-Id:Date; b=Tze+WrkjXfQo/1Hg7zBnKsDiUBVbsTIZu9jHQkWJY1vA8bATWy4K4qHwt/OJhW0i6NHpxj5/iCf5NTZRWDil/wVgaePfYNEtf+X8LPZUA84P7otRYmS5jYBaIih75wuQBs1i2kai9UrHJ5a9VMAtUWBeIqdCr8yY3vRKCgZS6mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUgmUg86; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUgmUg86"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE61AC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 01:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719711862;
	bh=B1GPlRnxzaedxZicwuuH+U84aXg5SZh5dsgqkv3NotY=;
	h=To:Subject:From:Date:From;
	b=BUgmUg86ObMgOqnlfoCB4hWDU4PYykRGYbfFZP7zBaaMkDKNtGWXca0tDvRYDJbMv
	 nRizsC7IgO2b8iuXUOMCO1M1u2+Pe4Kv2xuI2wIrK1V2BA9/2ULyu3U6f7BM1ZqTPB
	 UtcVcW2qHUAPtmIgOIrWLEuu0O1fdDZgzw2iXEKlqrxGEuO8N0nNwHsjObE1M6MBr7
	 pFXfkGV/73Kcm7PXEAvpvE/8xPg5CUK+UZ8yJN1V9dV6TSr9Zoe09i9v8WqDWULyfH
	 +cS92nKWyrwnmYzMnx0pC0ld1fKsv3d7UN6rCrEvPQJ3RR4P5WyPpSQZrUCFdASUEj
	 ZnviNl5emL7OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB333C30658
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 01:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171971186279.3741.15609113712646022036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c83eef296c43b4a73632b28f7e27862097227aab38c47514b15d9b0f0e2646a5
Date: Sun, 30 Jun 2024 01:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719711862
