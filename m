Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AAE649AA48
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789408234; cv=none; b=lJqsGpEH4B73YJXwWKvLdn0ybl9XosiQ4EQkyThMCp0K9I4uAh6wL048gkczPSbF9d7qzprzzczFjwNEl8FG/n2eqdQ+C5jIXlROhdb+EpXgSM/ct3o/4CaVLZOZOFpD80Cn7Y4sWMcx/QDkCpS6rK9cLOqioesiLoHoUlHbQy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789408234; c=relaxed/simple;
	bh=IpRxcXhMYqtrkHSF13LA2yhGgloa+QeCO7J7nRygbrQ=;
	h=To:Subject:From:Message-Id:Date; b=kdU9Eaozaj1HbzrjKS7NWbBztZOOR4g2dkygDkBDFzxTxJ0JYjazYeEtULOrrCg3WW77ZutEnVvxEG7IBkYe8ifgMxVoFhwJcVH70uZcFliJkn5h8rER5yPAljHCPXCJDXdLa7gBARZHVy0bWusqGbpbPLVBB8dK6HXcJF4IAdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWX4u9uT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWX4u9uT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4459C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789408233;
	bh=IpRxcXhMYqtrkHSF13LA2yhGgloa+QeCO7J7nRygbrQ=;
	h=To:Subject:From:Date:From;
	b=bWX4u9uToq+U9tQ2sIrC2V5HuOoqUse1qVaVo8kaJ7+reUwF1G0bVjo8NCFQG9dgt
	 rrREPq9vvGCOtneWNTuycBMqSk6JNb92+ZyNmSBzXuU71aVThmr9PYel1RqwxRJWL1
	 nifeBY4VYUk/A84cAXEULPR9DjyyHhnTeaTQ6YDtcRspsuVhXsBsNifSz9gFhcelFf
	 bxdQnxPnlbiOnO4YEiHeNF/Hny5hBx5zvmb3G0U494mROuaMEzwtp/DX0DIrXi9/8F
	 l7fNb40bBRMTP976OJ8xGfcXoY2BXf+yvZHjRJhwF82uIP1SYBGX/JhUGTHVtvJYOU
	 kakMzhduk+/lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BE2C88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178940823371.31273.5406589860602294635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32906a97a999b9be1091b6eae2bd02925598172dafda2c2bf0c3a889dbfed01c
Date: Mon, 14 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789408233
