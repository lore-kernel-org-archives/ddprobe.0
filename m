Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F1B309F08
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 08:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786435234; cv=none; b=fF4j2uT6qOoEDaqXbYTJlHfxrMm6G2aUeXxNVi8LS9zOVwhSP5YMmb4IOxJW07PNq8ZUduXt1v7iGwTFj0rhDk8QOPq/ZzyFVDp/bDCjYeQYp8LYwmmBRR90lv3jJAbWVX6lmrXvMHn6CUDmG+O6xysReAvuIT2s0XLhqBadOEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786435234; c=relaxed/simple;
	bh=ibkdHl3+ynCaZGyg/Vm6YhL+flViqDZaK3dMlNV9laI=;
	h=To:Subject:From:Message-Id:Date; b=FRF7NAcFKLT+eNYRYoAwU+g348Vq8njt+uEUsVoX0oNactgrveKGzh5t77fjxmMeq1PC15mqsz4d8NHxezacnVaWWlZNe9C00XNpoeQaRc3dF/1NqJKgQcY6gkLwNnW/XHWumBa1MH4FvwsLr0n3/z4/G2McZHSbsoTXpede1cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IB7bR4K7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IB7bR4K7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA99CC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786435233;
	bh=ibkdHl3+ynCaZGyg/Vm6YhL+flViqDZaK3dMlNV9laI=;
	h=To:Subject:From:Date:From;
	b=IB7bR4K7j5Zaw/tlcguHpXNbuJppOjJ2iuORU8Lt/bih1heveMgD/EGCDIAZZLiA6
	 F4ghW6M7zX/aOViiipJJCTMFL7tmUFyei0ADIBcw3pfvPORsw6gAOnkuq/YP5BS+o/
	 OFRdHPTTS3Hr8m2uUNsvzYabZQSE0iL4hy8InENDTce570P5sNsxLpxEIb77NNeP8+
	 YFEXgZxehqpYoZC6wh2H8HydxHvQaZ29k5IMFPmOoxHCvEiuVZc/omuRijOC1Tz7Iv
	 5IBHcnpc4S+Hoa20nApGteekHiL/m/gcG5vFhaKY7yUGR2HUSwG6KWtCzuCc8q3itZ
	 sp1pq9qKcrDEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E2FC5B574
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178643523367.18452.13012593666785150115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f7c718c6066bfbf3a9f4a6846ca2404ef3a591fc46070b1b67f8d0e389d6453
Date: Tue, 11 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786435233
