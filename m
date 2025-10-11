Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCCA81C862F
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760203194; cv=none; b=tD3pd3DV/MIK7D5ZmHssqfH3nVaeO2ealQNBHU36n6/1fkgB/X40q+TVLF/BC6mPORRRwaYTv2uM1USHYrF5WvrdGoqzcukvWzkVcFxK+AlrweNqN1CKQbGyrMKEq/z4vcb3LnrPFCJiHmNHZ1jZF4LEcog+wkFiyQGSHscHS04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760203194; c=relaxed/simple;
	bh=eDgKvma60KtvLuurpW8+S2jrYW+6Jd25juorR95Rvww=;
	h=To:Subject:From:Message-Id:Date; b=PW6YvzFYDEoCOz2mCplA46feI46KCkQjCT7LZwChFuW230720i+w58+rnF+iMPvxRr76gJBR9CSsueEX1ZlBeHUeOt8zhAmQafV0RDxE1EOZeB2bbTg4VbnAbhYtjKjJS3qjepUWS3gbnLaDh4ezhRw1J0tOZhnj8aEHC0ON/Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6Ral/9a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6Ral/9a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC020C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760203193;
	bh=eDgKvma60KtvLuurpW8+S2jrYW+6Jd25juorR95Rvww=;
	h=To:Subject:From:Date:From;
	b=J6Ral/9aRVEuaxQ4hSpe8b1DmfqeE7P2XQtveCee8pmYl4YuRh4o1C3lDV6/GdtbS
	 QMasQZI6Npc2yg1T/VZO7KJdbDrovDpq7rGyoPuAko63mQP3r9m5snH3rCEthcTWDl
	 dMjpkUf7HS25juCrPkQeYjIywD6WPcZJ4W9DAKXGf9O2pbcHJhUNk/bEw2bLAx/aK4
	 JLSBPtrIyT3lpNw5NDAKgzj4D+jRiZWYklTm/jI9cdK+OCOGFkUq8K9TXYtNBmeFiY
	 n2sWIR7urQV5unnDmf6/fuImwe56s2Yp90/5C6E2szU6yOMMu9xSx+wGZxiU52OkA0
	 +13EGGQuoW1FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9190BCCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176020319357.30847.616465765958623996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcdde7c090f5e70ee9909bdd9ada559bde3a091e1efbdb4c360f9577cf723638
Date: Sat, 11 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760203193
