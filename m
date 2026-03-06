Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F322436C0D3
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772767494; cv=none; b=oD+Pl5B50vhVPvuIRjNoPf7lCIlhrOWWHMpQECVWrTuEsrGFTWLkzz4Zi7a1cbNQQCyeqwkw4psql3ilmfMJMiUqRdQV5LKqBLXB7kBiRXLqrFvfcG39H/gkGjDWVXNTn7CqaJMzd0aqYvX/QcSWxw1J4Q+C01Qo4L2jBaCW7UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772767494; c=relaxed/simple;
	bh=Ak9EAN5Cn/0YTJy/dVCda9a3ffry+mY1WJITVffJNzI=;
	h=To:Subject:From:Message-Id:Date; b=FwJGhIpBxZ71BNjo7R5JLpy3BnU6EYl8Fsi4873cnBx8sgxCmGgWMZiims/CBYfACe+QjwcofeWMpOflAUiblH5hg97jrPfqpoalOy/fCxOjrJ62fNpLi4NpIXNHVoekR7E/D74/PfmbYzuvNnh1R8UNYCiDbdqQVqPThclLakk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHQZkfe6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHQZkfe6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1EBC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772767493;
	bh=Ak9EAN5Cn/0YTJy/dVCda9a3ffry+mY1WJITVffJNzI=;
	h=To:Subject:From:Date:From;
	b=kHQZkfe6fUh6tg1qh2IQHdGdzcAJR1aFyNIaQbEOIlTTqFb9RXqDTBJZpinx13yiz
	 4ZZ5/3V7vi1+8PXAO0r/MYkVqnFMQLaBD9ndLmyLGjiKT9LMd+z7ff+I9GR9lL3oxi
	 auJDzSboDaTELIBbE5jdcB7QaRXedmtsQkTUgwChFK0buEzBuDYGxl7HS393sV3EJy
	 BrBE5st9tfl6D9Lze7GbEP/b8JnG3oAYePSS/UuSULh5ng1c1qWjw8PmVe/0l+mS2t
	 AJr1UanNzGRTFxfxvcEwFlTrH/AXcPhI1dCPNhzPEdtaPbQEH4dAbmcDTdM0YiQq8b
	 +B3Zi9hFqWbbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6D7F513EE
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177276749357.5246.12147971785894180661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc2cd128d0c9fe406871a2f59b872ef7ec0fcdcedf069c63af578d0acb029cfc
Date: Fri, 06 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772767493
