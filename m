Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E46394788
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787611834; cv=none; b=aLxI3GPnEaiA6xOp20fcNLchgz62RhZpRPS+tJOcR5GipXYLg2SuRrwTtG6cDwls1fBUNE99uSyL/bEmujzNsy3FKPlHPPDU1PF8BGLe/LSCK3//XEwhm1Ii5ZBdb9KbuJGldFzR0Uytei2tEAWNWjcpuscbjAtEyIDKfvwRKdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787611834; c=relaxed/simple;
	bh=1vtqTQCs+xfKowHujjKtMNVDGt8RRvWS5OHgj5D9fUk=;
	h=To:Subject:From:Message-Id:Date; b=IPEnRo3b+D9AjAvDeTAwmkrEkDeUGrKJAzKFnJ3m9jsR7Wwqdo35LQflgl+OUqsO6L8E2no/V1GT3qUGoBMQ49P0RV/vEe1DKtssBlyN+uskWjC0qPFGAw+3ZXroOe4DST0vFVao8ECSTOItqWRMIUv1EM0X9jk4mbzA0t1XZq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVQAq2SB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVQAq2SB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3088C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787611833;
	bh=1vtqTQCs+xfKowHujjKtMNVDGt8RRvWS5OHgj5D9fUk=;
	h=To:Subject:From:Date:From;
	b=PVQAq2SBvQaC672xw4meCscpqBjrWbcfta2Lnmfp5a4kWpHTMb4dhqJE7meNhlIKw
	 M5aE9+dvSglTOLayO+Ke5b08M2pQ64IbtHdswBAUG0HROkNKQdEhBjwLweZcdfyYUB
	 RAhaMuAY3IlehlsyUUIwgeI56/+mKP95G13aY9fX+rpOTg1ULwkjszaSo160X8PSLs
	 UPmu39Df8/mlj5YHqmm8NaJ6GqJwvm9+NuzYqOITy9KTO81758Qh4NCeJviH+s7yvY
	 ituDVJMKZGygfbiiQ6ULaYc5F4afJZD9PCMZcdHacsanmOXDuYyyhWd5oSK3gdYqiU
	 g9JY8/UfRjoOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE92C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178761183369.32247.5648356170395931191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d0dfbb67c519766c953568066fe1077f854f30b4de766907ba98b1ec20fd28
Date: Mon, 24 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787611833
