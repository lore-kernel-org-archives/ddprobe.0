Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7994633554F
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 12:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779365434; cv=none; b=GE64s0/27XV5a/ieoC7iGxmicWYJlQXSS48R0Wy75Kwr66CW0lLj2J+Y63qDlWO2Cs2r6iKaa2MoUgD9pPYGl+0T7ZnQTnrmkic86r3rGtpv1NTvXk1KMQ1btyDaqPEP3NttTaFkDsetAvgcKU8ZVxCNhhBsBpOgjPRsh9NKNa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779365434; c=relaxed/simple;
	bh=jck33dIlBQBF3avi00DtBeDGSLPfVIBHw2UkDU9Zr0s=;
	h=To:Subject:From:Message-Id:Date; b=rzZh4A4ZEbkgD9jibiZDrSDyhAXT1vl1wY4w0Xs7siBi1ry81SXpFyDrXMzLRSCsi9bQjFKOk5cHuS2GlkNmo8V/EREkl/lEMInQs+qRupPiBAkCx4yPL6y3FEINA4+nt0hff+/uXLHaj1qtoM0JZJutTvpk0rwD1nL4xvzk1G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLi7se2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLi7se2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0D3C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779365433;
	bh=jck33dIlBQBF3avi00DtBeDGSLPfVIBHw2UkDU9Zr0s=;
	h=To:Subject:From:Date:From;
	b=GLi7se2oUKKqyVqxNshxFTZ1oRGtA/WhncrFPcfCsBdipwmYsyun2FTHYk7mgl7wq
	 xOECKQy5gMzzYqRRmRnBDTBd1Zcwtiv/nNGsf9jKcBsRPCsU6U0qnV8n3Jdiw/1UdQ
	 qVc832zzgNLrzh53bsp+fkp9bKu5NfnMMU9opvnorZp+ghPL0j/ADse324ULLKVDBf
	 MduEAF6k0X/PR6CuFtm2b7SDJyGplBIt4diDgPjeOW7h+4h/owrFxg2PjME18dW+yv
	 9mQvF+jumEWEUOP4AuB50r5NrXgh8PLjk81e8Ry8YQfS2UoS8kmHAU5HGI0OvU461f
	 8SeFXvnHI5WYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0EBCD5BA4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177936543370.13349.11853704557721984565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47dace414baf1b8fac2b782671b4878c39828fa49abdfba8619882c5b162b2fe
Date: Thu, 21 May 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779365433
