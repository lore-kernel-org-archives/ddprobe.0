Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30530238C0F
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 14:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763650314; cv=none; b=Aa+kMX34EIe/2iKSeEYcfyhwQ67BrInFBigiFN/rV59beH4+gtG2ywuiCf18RBXzLtjquONtl113zggB1jTgUojk7H3tl0fnQb5uzviJzHePa/pQW6jsX62RqKya+E4CWpYna3VBvX9Hs2yoWRJtQzuoSTBmQbjOX9cfLsPexYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763650314; c=relaxed/simple;
	bh=VXpZqPD62U7y1FIYwbQuhIOzqSRCbaPGFyOlnofCBRA=;
	h=To:Subject:From:Message-Id:Date; b=mgL2aCsjqZFO9JZEqKLWqiTOUkxVHGg4lC/pTDV/9fN9j2yk9ngx00dqrmY706LfrpAJfVjQbxJUNV3k6fWWnkOexfMCqcdtCbgI2iJhET3gGrYmJQQRiZIJY/lF2BDFBavDC2zrPYY5vS89xXI7ZQBGcO39lekJ700IQilQaak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEq15t5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEq15t5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FB1C116D0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 14:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763650313;
	bh=VXpZqPD62U7y1FIYwbQuhIOzqSRCbaPGFyOlnofCBRA=;
	h=To:Subject:From:Date:From;
	b=LEq15t5+6GWdMSYjuSnx9KeB3lmd0T8R13j5XhfBAsuMgkZs4RoKfC09gCo/U6umD
	 Ai0+Qv4kB0qlYaf1YZpJ/H6qu88QS0BJ1hhaCNvtwR4rDksr+lR7dLyO5VlUyAgwdn
	 3jj5UJF+5JjeurEqqfM4/iIEo4s7kGzCMs98D1OmeF+EA5/C8vDlgvFSxmcrywH89x
	 mlBOXZxMxvLv+IgiTfG0i8qrEKHSjtYCHdb/ulpFLkN0Hh8LlB0v1fHm/UpBUjsTP4
	 MHj6y4kU4rq+cDN4EimG4lmwgsI9psV8lHNVMVAU4/DpSaLIRTQVeJhguveqLCS9aU
	 iv5jX3Z07Srzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9590ECF8863
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 14:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176365031360.17401.12580404548815196390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95b525fd58cac5fd6490de8a7e1d328d6e7f3b5c213907587cc187931f6665bd
Date: Thu, 20 Nov 2025 14:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763650313
