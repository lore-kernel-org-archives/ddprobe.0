Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA67D3BBA19
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774914894; cv=none; b=Yid/mCFFtUgPsVz5DQGF9jiOre+0xWvRpjBz0ZZIiBp2vWJhoXY2rHV24vPe4/vtAAH+UR9f0/F1pER84i/vRiipPXo8h5tNWLFVB6Zv671eYXxeVXg9Tt1aYt2SsoMNeR10h4nGqZYeXTo+8vvlUEK8rBP3jifo84hG6SPrppw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774914894; c=relaxed/simple;
	bh=yi373eH/5G+P5NQiasTamZe4bineo8LUVM5KvmVKMPA=;
	h=To:Subject:From:Message-Id:Date; b=q9syCaVbJ3ALFj7YNBkyZu3ohL7et5DMU86cJTvoA9wV06T074bZqva/r0/DWiCfM71u6LnEkPcoCXmxci3HhZI5Bj2CO/OAZ+Wq8spbiW2WffII1Y13tiiL58Ugwg0ragAa/Om9DzSJ9ENKKUgp2E5Qr0kV9CRF6wkUxnXG/Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JR38rv2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JR38rv2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA04C19423
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774914893;
	bh=yi373eH/5G+P5NQiasTamZe4bineo8LUVM5KvmVKMPA=;
	h=To:Subject:From:Date:From;
	b=JR38rv2hGCxSK94F1q7BO4GAW0AwdKhv43D9t7Y19JUEWGMmr1FmYWiWI7qp6NFyY
	 9RDRfztYCWn1vRDlsTpv3RJWNyuDJnZWtwojsxKMtlmmhAz/LU0EaF62BLtgTGtTCO
	 YrqfJ1VfLWF8mdcElIpN6z2OE+EVAIfjry8t1PPQusg0N9zArxYf+8gW0nZHdeDNLU
	 fxRpaR77h9nxWiLGq/2lqFK6xKtSYsi9ly1HscIeqeuhRMKQ0tr7vHrBWcwtaCz0lS
	 sIiWvOIJmDI5RXlIvS/NmxdPlgEkDSyDuVjpVqIm01kNFeBhV8hxxgJbmKlR5k1QpZ
	 aslUSY+LQ/kZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912741061B28
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177491489358.21744.6361878301169211384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d69610479e4bc769aaa99eee1d2b3877598b3cce87f2d37f61cb074870fe2dd
Date: Mon, 30 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774914893
