Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB8C33BBB2
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 16:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763655114; cv=none; b=dZJcbW4xdNTFbk6dh0bVU3L5/uXWD+QnGRTeRK/H8fIcCMph1iKtEGLcHvL7OS8Ey+mjsQrCtmpkvPo61YBVhuJnBvuOYkQg30FU8MKc54lLIslUt647Zt0zsnIM1AaPQexXrWmVLfZoZZqcP7NRgIesc1YOFAWnCV8cMhF5PGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763655114; c=relaxed/simple;
	bh=wmcpDhRgwzlu5v1MYinsFX1ROOqaDqmHv4Css9Hk/Cc=;
	h=To:Subject:From:Message-Id:Date; b=D18oG47kc/WV8/z5Oskhj7Lohfm7mH79Sv3DxfZ7huwTet6s0PmYnOdipN+9j3R/mfJ07HV5Dz+Q8Sl1qQOwqvZdympNyZJno+SF14HtDundTg8XF6TWXEuwYlk1a+ZJ1tOxl/VAKdtRyUwhWoqJdI5kPVtHNTRVuzPiL2Nt0AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJgPaS1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJgPaS1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2204C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 16:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763655113;
	bh=wmcpDhRgwzlu5v1MYinsFX1ROOqaDqmHv4Css9Hk/Cc=;
	h=To:Subject:From:Date:From;
	b=dJgPaS1DfWg9wgFocDQDKhUL1Dg2JM0fE++Y7N52f8O25HEvEasndnbNo6J17ktu1
	 5U1+PieZJb7wjruLUBk1gRy7LLL9Ov4RhaE6FYogOy+Hsk12CfY6JLdbI26KXCokP2
	 mPv0MHHr0cRNnl7P+p59sPYJqWmz55cHA7v0LL5UOU0iolYdcLbI1EwySKNdfngAUZ
	 sIBQry1zw+ubzTaow2mXTqFEVWY9W1+eXhmNmzUUFY/aTOuikMx1YH3iobD4Tkmsnt
	 nFG2FUVgVGXxro/6Nuh4MxB4g1/2afOYQT9M+wcnqRbrTr0hfXj1Uxzi4K3OCdQZci
	 Sc1mftBDamVnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92372CF887B
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 16:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176365511358.25308.3776124190190754024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90329781bca0ff15b6552f9e320867d1f401089f773e81daffe1e49db4d4184c
Date: Thu, 20 Nov 2025 16:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763655113
