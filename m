Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F63E175A66
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777727854; cv=none; b=eAIgrP7UietfDbKlJEGwymsqVwhuqhUMFHp+eAV4EBeYQXe2gpRHqd7mPVxr2uWC2JIAc+vVMi84knWaIalg0LfMJ8giloB6O/TEwwwxiHsLhaGwXaRxCXLsdWK8TdBtmbdiJZr8zh6BmwoGaGkSRmCqtl9Vc87E/PnuQa/+1ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777727854; c=relaxed/simple;
	bh=oPU0l3pE9a9ME3vGYvIN95S2UhqsSgKy0r5J/sUQT24=;
	h=To:Subject:From:Message-Id:Date; b=MNZ+GaQ+wXHSH6LjijR0t9HZVCeDs54YRK9s52JINbgvdxEZXGpUbGHbgF63SG8i1T2q0dYe4d0kTxnO7w1IJwiNrgOwoHL1MTIBK0WycVZq2+lOqZqTxOa+LCSPrjfs8ItuCCKumUU6+rcL9Y3oaAc+I8DAfVyaSRvf1X0zbzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BohDpoZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BohDpoZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F89C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777727853;
	bh=oPU0l3pE9a9ME3vGYvIN95S2UhqsSgKy0r5J/sUQT24=;
	h=To:Subject:From:Date:From;
	b=BohDpoZI0PZNOu1kv4DxumH/D9BA5acZzfgs78b8uWGm8e6oPwCQleHCb0w9Hyo9M
	 zqlUG/8i3mxJfoARVTbTeyO10EpldLUNuttaM3L13WlFYhFFBz2/4e/GnOxvfuvFYQ
	 PEaRBtBN2NJmpmCYbwbzyz1fUSyzR5I4Bv77rfrkXg8v3j79OFr9xGfbGqwTvYOtrr
	 7IFycnUX5+YsK7eNfdW/2LCLVrm3A2rCZdMW+UdHnPjclWKbRTQzFwxGxO9oU7FpXA
	 hVMxExRbO47x1VGTA9/4bxz6h8jXOq4TLf6/m0PZ8JJAnqqDB33eA4FjnPCBWfr1N8
	 HC34LjD3Gg47w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10A0CD3423
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177772785368.27654.15329017297609029231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b12c650541f2d60e8a5290b3c34451dd8a539f73b2b0e09b47a5d3db95e866
Date: Sat, 02 May 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777727853
