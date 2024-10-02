Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2088B8F58
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 18:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727892355; cv=none; b=pr0RptyyudMwYpK6uc/Ed1SDMragDyARZ0e35UaI09+JrT/AoM6jT4AJBQGudXBUZVg6c99wzK0/VS48bOUeVhq+jYn5nncqUXOn7Lfxt/tnRaCXGIPTAjJV5/1fJBDMth6QR2w2hSexxlyqRGq2H8vtwPJ6YUabhjM7fpzC49U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727892355; c=relaxed/simple;
	bh=GXPrT5filz4lSU0kiwXbCuUILUEQLbD7zsc1ytm416g=;
	h=To:Subject:From:Message-Id:Date; b=GLXPNdQ0IlfXW5rRN7M0Q4xv0FporTdY+9rHhFfxaHTL63FoGlLtsG4vitKelX+yxwEPSN3V/tTLQgH3JuDzpfUn//hngB8dSXRHP5v0p5h668XIgiLcvX5qppWqLTHJzmMAH3MuUGKpt0OKmtQ4IsD8Vc8RCJBdyE28zuEeWV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnUH04Co; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnUH04Co"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A19C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727892354;
	bh=GXPrT5filz4lSU0kiwXbCuUILUEQLbD7zsc1ytm416g=;
	h=To:Subject:From:Date:From;
	b=XnUH04CoJhGd9mJHSglcG0RtcKjZ0Skv1XNCGtuZ79bHkw6zWrFwLuYfLSAY4YKmE
	 PiEnOUKkoELbeG0wxytLP7B2ITiHSN8IrZb1cH7iUiz8aI98nLqbTZIbIhLNgawC9+
	 jgLoLk52zY3/J3Hl1Vo3oFQAuw1w6gXK5dRW5vzcrjkX45i5BOvcHXfkIKTQeEAsp8
	 zgT8lM1RdauCGhIOlhHEX5k/CjAcVNhK4Z9nr/RdMsXO/ZDA2AP/CUwej1Gj8nBF0f
	 Dsi7/9HbF747Pnke9kFSoUpJNfFMZycgw+BiVTr3XtLDOohCHI9nNt+KBVi5NZnlIc
	 KXOH9OukXV+Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90943CEACF3
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172789235358.8327.1850841452442399512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d368bf16f2053814ca556d698267e9abf5a0ddc01116d44b25d4f32a908421
Date: Wed, 02 Oct 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727892353
