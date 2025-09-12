Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D03C27F73A
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757719795; cv=none; b=AlAFcsK8hJ+fnXi+yR+VsFKRJqFobOl+nxnF+k7T4ld4kUYK4iELk8dCylODfuQIJXFT6yNqGFNi7oU02CLKW9q0NQGU1kG5G5xgWihy3iGUCqSFjKUofdPWTyjvIj1ILgZU8FsL+ewfoJYgFHV9Xfw5sG7LCdWkm2v/GIfTg1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757719795; c=relaxed/simple;
	bh=BVwmTL9BjZzTqUQ1jSrhKYivMwr/1oT4yJz6pUnK2UY=;
	h=To:Subject:From:Message-Id:Date; b=I7OFO3hf6TOH23dhGwzUDUhSc4VUVoIu3Rwxk+jkgmryuLhFGRrYWMK239L+bpcmguZc6ptUdUZ1uN5bGuIExgX6zzNmb3fwwfuENqNh0Kna2ma1pWJr6L94h2MaoEmF8x8AZ0ZCf9zbiUDOvOBQWAFDrqBvjlOVYCikJbT22WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtTIrIJz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtTIrIJz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15D7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757719793;
	bh=BVwmTL9BjZzTqUQ1jSrhKYivMwr/1oT4yJz6pUnK2UY=;
	h=To:Subject:From:Date:From;
	b=OtTIrIJzrVgLUK3eCbQjDdqc0wcbvZgAtNtdSko+QVS0/rPLhK8+Squ/9KeiIQ3JR
	 jXtPQ8aYUyycvJ46jI1/hlKptYalGVZ/kmyCNupt+PUj5RPNJY3PfJMmbvNxq3loyD
	 SxsrQpnyjN9ekq3filKFvapyXiKfSYEmpOOhvRCtxD4ysuthz1aD/LXWT2Sb4qabZC
	 QPPKDEQ7Cxk7xRDz/Pnwtap/ehlCH0ez6iaMDdLVER6p51BPjnuqarGYcKGJGOvzUS
	 3lkkYltRqzxHs29LIqqfJUDxFEIQgVC5PLL6eTRgInynTO+NoDg+zcQziCte9+Y1UZ
	 Eu9Iz/CXmb59A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F271CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175771979357.5624.3060068824036079886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee1d471ec4a998bb03d4ece199fa34860aa013b85a1ab226f4c085cc0997440
Date: Fri, 12 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757719793
