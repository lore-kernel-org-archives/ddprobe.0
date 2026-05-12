Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A7F3CE0B2
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 16:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778603434; cv=none; b=d3l3F2j5gB0Z2PmC+T3NapAuo9VY9vtnAxa0UBrksrLphDC1S9eVy0Gbl7GEI2YYT2q4v431Nhsi+HpLFhjD+42R335z6R1KHusEizyGJlImAuuqOuYSmLgVMyc/1XMZ6DPy+FEtAAvieyExA0zY1B/AyyY9LPU780Qxlb+kB0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778603434; c=relaxed/simple;
	bh=fc8mPWeDNmneOO/aYDKvLIf9llIxOTVcACKyZdcTq30=;
	h=To:Subject:From:Message-Id:Date; b=AoIo0kEFJHimmgihLA0Nqr2/daO091M+rT8LFIblYHYK0qW/5JgvVcX/mR7riBflWnRw7ChdV6GVGgZEEf66gynXSn8UUL93PbectbGmKEZvvlOtIs4Sl3riBdr7+D9qb3agGlNna6uFew5ZhqslQF5EvdvGLC5sRvVoydRnulw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZxqsftz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZxqsftz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD8EC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778603433;
	bh=fc8mPWeDNmneOO/aYDKvLIf9llIxOTVcACKyZdcTq30=;
	h=To:Subject:From:Date:From;
	b=LZxqsftzCwyWhhYHci318sqPNk0F7x6I5UN1J40uCj7DDkKBx0PSSuepgzHUZIlAj
	 EX/qxT1hSDFSLo4EVkBHHR8ZxbwcFrM7QVc6qI1+XyKqiO9SFN1k7NCBlxfpoktaOy
	 Iql5ooQ8lvbXdrbj/2ktbjymlblZ5GELk/hsasgUREh5ECT51x8xxd+M/TIaF/+cth
	 SUlBVNhWsrqqtWQ3Mk92nHm4nd+vYGYTOTgLu99KjDOxJj9Tr30BNLcGEsGDeN8Eq9
	 8CUnpHutdSaAWryw1RqeSYahSNLRdS6sZK7CcG/xBUIhUn744hkBFIbjrosEp3jWK4
	 m7ba7ErWPO+jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9BDCD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177860343368.31795.10264181601025638610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec4bd1a95ae6c64dbf87d86bded5415d0785de759c9e6030c3e726f02feda4b
Date: Tue, 12 May 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778603433
