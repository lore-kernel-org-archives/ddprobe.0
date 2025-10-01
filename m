Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27291442C
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759277394; cv=none; b=On8SSFeDspeFLbspTi1J8utdCUklifrhMjLQtP70SQcsXYPDoNEYGXMSbYf16iWDap2i4bhBAphESoU0OQfTZxS4LMrhjXI7LWVmth5kW4laWOWdBk6R8rDnAP9kRGfQVnD66T04GQ4Sp1ti7PnrsgHeZ9Oc9vQreP03lwPpW88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759277394; c=relaxed/simple;
	bh=8LaI5ai5R4ETJYV7Nt2MmAid6hlOfIe4T4XhglRFsl0=;
	h=To:Subject:From:Message-Id:Date; b=BU5vQwSc/oVgouxUQGO2MzL5d3sjGC1+iuTRUVDJ4bD/BvUJ3R53j/adFbLp3pjnEU+H++a9DZRl3D7tiKZ+3+phlbK/JIPSEwf8Vm+SGKWwQcAW19204X1MBh9UwYWFvZ1kavsP98WKJgo24Zh3PFRMHqOP/+zNBfunrnwPSVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtGtfCFE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtGtfCFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7AFC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759277393;
	bh=8LaI5ai5R4ETJYV7Nt2MmAid6hlOfIe4T4XhglRFsl0=;
	h=To:Subject:From:Date:From;
	b=mtGtfCFEKiDo8EFjfJG83d7D+hsr2iuvouuH8DymCC9BxwFTjSzO5ZepgTo1wlAwJ
	 0hmYFWI7rDee46sWkNfUpw/VTabwFSv6oNHSjOdjY+yuTQP1Fe5bY3s1y729vQDWwv
	 dDsDnwgIOgDHaGT9SbAKytmDfTe5jB96Xej5Tskwgljr4bPLY3/tZlwQD9oymP2axd
	 PwIPAhBkdIRPB19PdF0c/h8XbtMXPTa7aDX9Fjx9GYDxRJwg+z03w8z6rD7b/YT88B
	 lR/ANa5ulXkGp2QrrshKYPgkJYrPhDhkFKsAFi5YQSnJDZ5rWtRwNFJ409Z9x2WF+W
	 YkehHmj+Q0H5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944D6CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175927739358.20312.9040028430716126623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d9d78704b51d5c5045add344439cbbd7e224ce50ebbee41594a8c77ca7c68b7
Date: Wed, 01 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759277393
