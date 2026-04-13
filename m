Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E30C1DFF0
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776038854; cv=none; b=jRPhxncsIflSEyLqHr5j69wKlEtLjIoZ5QBRU2m9oW7ZQbE4xh2N2Js+/4VV+3CIDRxgU5yEjxaoGLuTDwXA61nmI/SiCTtcol0mR1QbKEXGVc3URCMNr5jjkq9MxtNsYFogPvmsmyfOUitGCPlITLXghM0uKrLsayfO6mqLlpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776038854; c=relaxed/simple;
	bh=uJTkj12kOn7plPyfqIj+Ix2rMOWoPIr0T3ZHFhrN0pw=;
	h=To:Subject:From:Message-Id:Date; b=qYD8f9qElKZ/szqCk0kwKP+d31Y8miuQt7rRK3bWTKglTKy0W9+/DLlbu7bJzaSifGfVuUuPxDhmle5+EcYLtLnpuVS2nlwC/LmEpOlkM7k3vnKpvfmoTAn3VFrrfE4TQWiCHApTdNOh4lLQmKl9l8UR4YTgoamVvwJZClvDgIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbT61oto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbT61oto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF173C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776038853;
	bh=uJTkj12kOn7plPyfqIj+Ix2rMOWoPIr0T3ZHFhrN0pw=;
	h=To:Subject:From:Date:From;
	b=QbT61otovXOhKpNALsznpeBUOP4KcPfCtgMRMum5Mog8xu9azGjh28ZIhRVXLp2i4
	 O6Lr/ff125cgzQvi3MaCvlcXh0KUL2s06X6DN8dtFdfMJWak2Ovw9fNEStZC7AvnCI
	 j9gyYj0EVgPmvF14LiRIoxNPirCx1zpKRKOrXqCOb7WOzkcBUxX/TKSGWLZBsJ6yix
	 0Fd/Saxi5ePuw0933A5ikkLy3GbmQz4zaDqC8cPb4ALlWXkeElfCJhABdWgpPSYhkz
	 RdWqCO0apHcT53lqexbVzZa7o+/Rd9ToorMOWToLomS3ESWBzzi5nXp5XDJj5xn4+i
	 kL4cGaoa7xHmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC38E93804
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177603885368.26497.13968242805424743993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1920c4fccb2e14656041b6989c0fc3ed3bbf71b064b9794ccb46666540cd11f
Date: Mon, 13 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776038853
