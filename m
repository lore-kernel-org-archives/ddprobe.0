Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286015695
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721800554; cv=none; b=Drey780V91967tpSofnpx0vd0LR40lPi+9QKmTjnNoYTsf5E6J+2Q00abR6clOciHvGjg81anZovzll0WRLnx44VfSUzpe7kJrWklfp0Sfrg/Wqvf/9kOA/LRO0uknf0wVAzKzCtJ86zgE3nyE6pfPLToOuK3HMaZeHhYU17lBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721800554; c=relaxed/simple;
	bh=BIeSPjr9aTKqI/IsSqbbmstjnCtggbsxoY014SECwOY=;
	h=To:Subject:From:Message-Id:Date; b=Hz7ymaLkshqzg7tdGuCPF7gIVWBJafecmML7KbK1aqYjF3iPLoriFJmfJW+bBy6iP0HqaOEI3JbN1Vgh7IpgcFoJFaq+q1T7lBb5uPpTAk5JN2Axk9Tz22y569ajgcXNtLx8EWlhopkl8b+VebONmddA+SuaJXM+PVS0PGr9FM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9vbeNRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9vbeNRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FF0C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721800553;
	bh=BIeSPjr9aTKqI/IsSqbbmstjnCtggbsxoY014SECwOY=;
	h=To:Subject:From:Date:From;
	b=t9vbeNRk1EXB5o2omzfGPAn7tCqIMX1bPBmewBpQXBmzUXH1OzyZ/mwxykt9VUfZw
	 40QEXI8oBY27ztUQAEKZ/72eKM0suuDwyESPxo5qZWDObF0WEeq0rfLvuEZGYb5Wbr
	 BHjg9c7jLmaLxdl+ORchgmkQU26e/CnH3b37t45mCTt4TlkpTujnFy2utlWcs2x3RC
	 f3CXn9IIAO0qRUoTlIAWRiqcPiaado2NxJEK9soil1Rjjk3ds7MKFPUPsxk1mCAjmQ
	 UUl7ZshYlhVQoE+LYGdOiFUphh1xqCVVJYoVRve2M3DbQwLmxFiBQsXLkNK9JSXP+n
	 /UqhOIDdOW6oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90177C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172180055358.16775.13789225154316929510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55dfd28d39a3c9cf2ae759effa4fde8149a0d3c85011709ba92ad0b0b1d13d6e
Date: Wed, 24 Jul 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721800553
