Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BD633B97F
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777270054; cv=none; b=lFB0qr2+T9HmNJ8C1PYA8CjUnf3uH5LK9rhCLA2X7elElZovgwqjtKFet4Vvzi3X66TnpzYSpFbFFtPZTIGmiv3H4l5sMZSbMN7CDl1w7D6w+z4ZJT3NHaqloiZSRf1dlci4TUy+sUnxoiUGYmTeVsZiWsLRuKHL1vysTHMQ19I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777270054; c=relaxed/simple;
	bh=fC6t9Dxhf16qpBrrIntQR3n2iT/3fLO+1yn1XgZ6dAY=;
	h=To:Subject:From:Message-Id:Date; b=VPqb+g1RxDAB79aFrokQJxItjFuu2dOgmJP0NhMx/36YdEGibMRv3KFJsV6sOmYqUXoHCn57L2ehV3QjRm6O/sm7lvMspQvQGZQCDycPwboUQxey1sDoII479mpRTPCRJzLRTtt3uAHpgclM8zUiWD2WRAxDNbigOThC0grN7No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m24Kc/NV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m24Kc/NV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB498C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777270053;
	bh=fC6t9Dxhf16qpBrrIntQR3n2iT/3fLO+1yn1XgZ6dAY=;
	h=To:Subject:From:Date:From;
	b=m24Kc/NVBm6cRzV9JocerAnAg+W580tat6dCHHYGlSWK49urj2ngkD0BSR0gFtfNk
	 Ptmf3RrUXbrlRcV1WV3ixoVFtMr5cx5g2PaAHo2KrguDEOUxIPC6TIGMM+8luGa4aN
	 0yKegcsrpEjBHHIrgXMCTHkmgGjOSso3rw1XJqFvnxVfw+I8RAcIo/8meEte69FtnY
	 TkcrEiXtuUrGn6jPsU5K+gcoUKTXPb3SaJfcTg59uYAnOnLRY+TeNhD/JtjuncPV5M
	 NDQDG6UDBEXDvxH+Csz77zAKuEj9R7mnslxjojztHwM1lL/eIP1uBoM3C95+6KNuE7
	 yG7h5PUhH5Uzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F8DFF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177727005368.15040.14372381852546016543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c06fcc167621ccb8229e38a49a1dd2ef41e8e39e9bd90c6a3369bf5f0263133b
Date: Mon, 27 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777270053
