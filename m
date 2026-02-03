Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1436F30C614
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770109434; cv=none; b=HotP9hk0emq+FUBfAAicSjVMgevo8wm3uLf9e8nGi8lyYDDxUFhp0lbtZXAQetHReZn9mKkJw8pSbZb+hAtgJimSFkOmMiuppAgvMADS/4tkXbMxtUkeadFEIy9RCG35qbXlYu/tgxiAV2t3BGKxF1co6iXYbJ7cbvs+lRZzdtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770109434; c=relaxed/simple;
	bh=lfmvXP/DRmCtFT7nwIKj38wMKD95HbpLKSlACJMlh1w=;
	h=To:Subject:From:Message-Id:Date; b=rwiWUgFwaoXteGbGnwemwpzkjpvteSRg+xD26EKQxK3mWY9PjhXSrPixwgETq1IEDEBvMWSxw0d0J3ub4MKSigjFodjA4/R6g99/exxhbCx63wtHDKQid9nT5RpX254tD3qy6ZkzsJnC3pKI//y8+nF/58RjGrr+DmYUYHCc4LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d73dm83x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d73dm83x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A00C19421
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770109433;
	bh=lfmvXP/DRmCtFT7nwIKj38wMKD95HbpLKSlACJMlh1w=;
	h=To:Subject:From:Date:From;
	b=d73dm83xzrcEmda+hqZkEe8TbSxTyK9to+HW4b8pnfWygGxz02I0fOpIDRtgvw1Xu
	 jfUrJlJncakM+YrdSOVto2EMV7KLwymEKxZcatwwzM9GUxU1LeZS+P9llmC0YO6zdi
	 gbR68k5fki0Cj1L5JBLlhs/VFxOzvvjv7htQKGVVd0IVeVf66iALQQnK84svL9ZpR9
	 obJ2iVeJ3d45fnji9yRGNLw3xePWCBf7MYu3lgvGt6RYVVJVGTMfWeDUfBOC60TY79
	 xIq1MdUtt5KFHbtpQMq8xDLECeukVh0ZLuS3Q5vcoqYXxSo2daVmnx6h6JjzdVEsDP
	 HH04If12wX7dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965A3E8305D
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177010943360.1525.7461381644614284431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e1166bf51ccbb9fce2878aded1f516eb6a0e1b70b03f5f0e93bc6a7b7591e72
Date: Tue, 03 Feb 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770109433
