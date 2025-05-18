Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377FE4B1E5E
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747601394; cv=none; b=S3xUiPjSJMDeqQZwZubRmRCN++wP2dzOb2uOPMQJ6c9uLzN6GFtZSYclDQChyG/7nR1i4AzWK8TctFtNkxzvC1YwgIdW1t8U8aSUrqgsrGBLBKW33anTEvj+KDAu4NmH1j5YZNN4+4HPEqRO35usl250zF0jiUMCdlkAyyRVdOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747601394; c=relaxed/simple;
	bh=b0ECm0yZnu8A6OAYdFPv6EX71HblEdgylwpvcmzyEM4=;
	h=To:Subject:From:Message-Id:Date; b=leHHgkTisNFLeQgRI6Om57HQiRN7r26gW//LjGNSLWSQhII6PYVekxW+qVP5MDV0dd66Xrc4uPild9mtoBUhwyii6BHU15F+WNbyc5zKfAPKUeZdXY1wlQsKTffZLq4fEN8RhazPxdhe/ilb/Tjx1DXzjWia3Q1tBvDjW+MOhBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5hENPpx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5hENPpx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7221C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747601393;
	bh=b0ECm0yZnu8A6OAYdFPv6EX71HblEdgylwpvcmzyEM4=;
	h=To:Subject:From:Date:From;
	b=o5hENPpxukoVaICeLfcZvcP7Rp0n/67zY5k1XIzaE9lgCu3Yon41w7Fntj9X9s/Dr
	 pFNWz/+CuCOfxSs70BbYFZ2Ds0vDXkXbITrGEgtDqDRtpaOV92eSKQmWiJrLN9xGt7
	 UmhdAUaGY5ppk3Eh0KK4u/spGHjVnrNHfZkgl8z87ZbVZse/nAOmx+K8WHzGwJy5ng
	 El6YmX9UvJDnO3zqBbHQBV0Vusbw4ywcS8RqPxtN/K/Ca/2P4WViUpp++KZfuYa9Zc
	 zRqMwnb1pvlnEWmM8Vv9pQIVC/YgRlWGWiMGC1Gctj6F4Pqu3Ux6vMRscHVAHH0sIQ
	 PDPRj6S1feGxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92004C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174760139357.15507.3649992799905925335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b25702ba398b2c1ddb1e3e9af98051c3cac80706a6fd6f0cccd62a363d8f9b
Date: Sun, 18 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747601393
