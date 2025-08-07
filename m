Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34BC186A
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754585994; cv=none; b=LCnyV3bKrQ0QB2wrCVSQGwgcTY8dz+LLA9PNzvz51Q3L4oRhymgeA3GqrFL61mz8+FzMzcZjQJSuggdYl+8w5HTFUI94usnVm6zQ3yYPdabGnsxQv94rQEH0Rh8QS9QCmLoKLbZf4mmQzxMuLQ/PdpotmYLH5zeJVSKhEn/4PQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754585994; c=relaxed/simple;
	bh=h1K+FZ8QhRk3PjHzGbWUYcyDAQOGStkm5/cFR0PFZl0=;
	h=To:Subject:From:Message-Id:Date; b=U478OEGXE7DXXretZSjuun0PG0iJg2uPWb1o5AHriDkezcSNXXwd/7wFCFlSdXwFYptZ52VOlG9zCY9x2DcnR3rUauicyoOTd9KJ/65uxxPj6gmV5P2ZFkDdlLvRXy/TboRye6M/s5tFq0q0CBvSeKCG8oBdYae/JW7KBci016c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSy3cnAD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSy3cnAD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA18EC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754585993;
	bh=h1K+FZ8QhRk3PjHzGbWUYcyDAQOGStkm5/cFR0PFZl0=;
	h=To:Subject:From:Date:From;
	b=uSy3cnADJ/3KfHYw90sTyRXqZ+3DffC+amV4tCOPnMK73DJUAtB905YUFlipsKXMS
	 wfQWD1KBRVqKyKR3To8wU2d7umHftVJdmh/c18RMhVXjMXPSPFAmbNXuro9PyQWNut
	 +jAjZrfwX1JhW0tKs34o/c7o1rjoRw71aSc3sLfKno1GefeYRzn1o+PH3P07IRLyMW
	 oSQjXGGEz267kQ3VYKijetLFcoaUHmF9GlA0VIBaKYUdhIiyNsgnJW8OgTyTAKAc4z
	 4QAwes2+21ZyiqBkKFIwouACleo92egWBThSD39oclguFJT6UhwAl1rec43Cujj0XF
	 1hvxA/sqWSh0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB13EC87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175458599369.27167.15081770615843922491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d83ff9ad7601887da1b8d69d3540ad13b6b726bd7c911162be05d1b311faa6f9
Date: Thu, 07 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754585993
