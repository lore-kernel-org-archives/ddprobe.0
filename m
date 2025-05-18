Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B2E1DE2BF
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747550995; cv=none; b=QzNEcwtvjEFHDhcZ0pPppLlmIhZKtDHV5TxH9L4tA5VbWIRYYWT1uanN8R8ocLGl5zlVIvJhGEOCXumeq9ZWHbyiH33rAbiQe2gG3SCKAzCWRulglIt3fOS0qwBc1SekE4cgUXVzLPYu/eCGIpmFXOSSEDkPeVtxstuq5UeP9ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747550995; c=relaxed/simple;
	bh=9PbNjvZHSmXOKf/9vsge9zDjPACvbmoI80fp4ZI3Gx0=;
	h=To:Subject:From:Message-Id:Date; b=TX5tL9rPgra4rsN6uBjefkO2q0y0qrB24ys+8fCj5qsqT3UxoEOsf87oQGU6akqtQ8hixgmyJsAwiYmz1GZMPO1skcwskFqFht2oknwttytURA5wj9KsJ496lnNYTe6zatGUUnNkmVpMIKzwG2mrq0nxgjXb39k+4X43wqJElAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GoqpniEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GoqpniEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5572C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747550993;
	bh=9PbNjvZHSmXOKf/9vsge9zDjPACvbmoI80fp4ZI3Gx0=;
	h=To:Subject:From:Date:From;
	b=GoqpniEszwB1mhLp+S2PTZ3p6+zn6Y7GPWnT2u4pSsJQ47BWjc++wDhGNPJP2kSE5
	 t0rK29N6q1E2/hdfbKELQW11UXUKKZ26LKgL6obvOdCF5+g2/d+0uXPg//UcYOvZA/
	 eBzTwN7oCtVUEP4x6VD0m+5Ltui9p+cJ92GmLFCqByAFI9GqFEVFi6RW+UbX+hy9lD
	 gUeuirORM1hI93BvN4EepyoVs02f4l70ByxVWT6kG8p6mY0IXHl7LOc9jPCBGTaxHG
	 ymD64mSEwZo1c2AAtD4fy/2ZrDFUuI++rfs4B+I1Pstmy5rbHCqhrJR0w2o4EyCoju
	 15zcdfp6LjGGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9362BC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174755099357.11734.13911672239354512480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb54fb6a2404dbfa91e719b28f904ffa4244ad19165469a665c158ba5a118ba
Date: Sun, 18 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747550993
