Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF37043636B
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772144694; cv=none; b=oujTxF2McA9OBlshlM3/i7yKyQVEMYbUoPEHo+Tu3r/IwdJHZEo0OejwizcmTf5MAd3RvJP6LDtexFgzEAZFRtC6NWzL/Jqhd9BYc13aiRwQdUCcHEONXQUD8p8artxKp6qfb07d3n+neF3MUM9prb+FtoNs5adknwNOOMV7C1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772144694; c=relaxed/simple;
	bh=SchwBkrlFy0Ad+i0VflY22wY/iMjtWGve6wjw0VCTRg=;
	h=To:Subject:From:Message-Id:Date; b=aSqlLA03wtBdZCWP59GRmJR5IQCF+Visyx0u+eG8YqYPoFafq9EQvGa0rLB2yJzBka+VSBSBAT/N9Ird2gQwmc+BLvss/z2d0TC6X/tyOfe9U9WK4KW1B13rYKB9NxV12yW6ilxyFOYpuI/T4us7MC0hXqdHfHzLztSFT2IkG0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jE8iriuw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jE8iriuw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC30C19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772144693;
	bh=SchwBkrlFy0Ad+i0VflY22wY/iMjtWGve6wjw0VCTRg=;
	h=To:Subject:From:Date:From;
	b=jE8iriuwOwUfj0UkaadtWzJmjiR4D0NG2Qf1djULYb14avAcTOQe+cpVsNWIPOG67
	 +6OZBmKEurYeUn+o95QlmLPT5NgsAPpuCHxKlCpkpFPGe4VGWyj8/5La/5fC0h0MCU
	 Plefm9UPqkJJbb9EnSnz+ynLx3p52DzKh+c9E/Yrhijy+WUnE15E3PBne5n+lAGrBW
	 HwI5bgz331FQHSnJJFATBa2d2O9ZmjwBGKflqfOHf0Z9OOMEm48ncGDvgDIKgqAJmM
	 gcACUf3Z9tPNd9TmSTDDJUMy+EWIeLpnjRTG3FkmpR7x9s3fRc7nLRFta6ppdP0aet
	 gYfjYDl2mrMEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C519FD9E1A
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177214469362.25001.17876321202879444468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dab7553911c23fd1fe8f3634e9fc1aa21c4123fd50234359f886ba9f4704d19
Date: Thu, 26 Feb 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772144693
