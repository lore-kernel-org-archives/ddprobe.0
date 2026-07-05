Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7A4DDCD
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 02:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783218514; cv=none; b=o3UWeqspmPmJSIkd85FmvutrHCHINAIZ4FxavwQMwJjbQ7L3Y1Bjvi9nkWGlwKyxYDAGysGPgOvFhejZ2LiM1eIk5z1vitoXnV9pRDVJ1/sQ+eBDkvW2V8YmEgMBQA/JJtOI25tvt/OyF0w/BT9Fup9Qj0HV6b6321to1r1zUsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783218514; c=relaxed/simple;
	bh=3ha7QtnufrwVAWhQ1c3hbouKq85MChF/p4pn5dg1sr8=;
	h=To:Subject:From:Message-Id:Date; b=KA83ets3fQonaG6jLEu+OyUNbLEIVlwDwO1JW0v+KqeMmzId/3zmN4O0BJjI+W0BuYfWTpYvekIuYnC63eVvgwU4fwjOb1Q5n2i2NzBHLAhRC+UgSU0lDe1HrqFtGNq66mCE4K56qiUzxQ/r18sNobD4YVdWAjPocd7Rg3QjEOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbgHEGYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbgHEGYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF88C19425
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783218513;
	bh=3ha7QtnufrwVAWhQ1c3hbouKq85MChF/p4pn5dg1sr8=;
	h=To:Subject:From:Date:From;
	b=sbgHEGYnS8pLuLu4XMLN1mDmj9yaMYfs6I9XFGTMpCnwPZcHO+UExBH0T4jsIYJ6T
	 FLmmwFesvBFAiKTYwjuQgIRIFsnqCW74U9BTaKBGQ7gn2IHnSiCkDvqzoWNteGAW2P
	 KU8G0Kf8wGCvn04Mrnrd04prZ+1/BXuGTk9JuvhMpAJrgXWuPAiiYliA1Am3drQk4f
	 hq9A9wleVhHDRzZgmx4D15xHKQ0xeHumMcBKVEZYbTYNsBZ6iepRpXjEszTJtxXwUn
	 KF5di2ekSw1ZBtPBT9BJLsiCH3WlddusGHEEtREhf08lcMbjWsFIT6bSVpPp6gRzbz
	 z3yiNz56y4OJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE81AC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178321851368.3297.11174645312945577399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ccf6fe1d7d4b71355937a27e4dbcfb69af32008acc6e63a7488640354b74acd
Date: Sun, 05 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783218513
