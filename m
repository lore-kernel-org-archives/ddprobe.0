Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D96C2D7DF2
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767650034; cv=none; b=PS0j/xXfnJVHqUXuy/7g6xjvr8isphky+kTuHtbMCskB3tFkuyjkgGEpZWpe3C9d6zTxtAE1N//nNPWqCZbZByO2/61uR3kBHTEfeJ7wJ3KHBRu+3gAgm1gdLOdjEViG/yaKcMED6Vu5k0y8j1keBll3edd3+mowZrgzDTxN8Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767650034; c=relaxed/simple;
	bh=BokT0AYslEjoE0horEOlZk15BFKE8nPnSIH5f1cxzVg=;
	h=To:Subject:From:Message-Id:Date; b=HWqzty/l5wh2r0DvJSqL8/Kxyq0PuigiBYlksBw1dgcP4s1n+gHeGRl7tV4sL4MMU1Kuxoq6Y+sH9wcAOUp6ChhzObD+zaPTVJSaN6OX0FJY5rOdQQW2+mxh55kAyYGzR1vnlMA7AYlRyxVm2sbDGQu2WEcYarOgXrasKH3Rl/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYLb9DBm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYLb9DBm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69D6C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767650033;
	bh=BokT0AYslEjoE0horEOlZk15BFKE8nPnSIH5f1cxzVg=;
	h=To:Subject:From:Date:From;
	b=rYLb9DBmzeMf9lJW/hwd1U38yGFmyh1pF1KF/3ndYD6eOXOZQ2BuvudZBtWhFC8T4
	 tDLG1K94uxtFkqC/bFwEEZq6IEtX3cn7+MfHXigTdqfGrG/Lja1SqPPpl5Lw5JxFPF
	 ERaYWK7ciLeRRszOtBwacza4jnMoTnOt1Zt0ZcZ0cPdXzumIdyHoRc9DrYpG5oCvK6
	 BOBzgbkFfTvmjaycJwNTetZz37gVRgZu6Cw/anCi+MiluJE+PecQpDt0ehmyyPgT7W
	 D4lX6shknAsMJgq+DgZbpRGc6g+P03lUp4jagHkUKrDcI+U7nl0gNwvAYwEFtxlhsq
	 +pH02Z5d+3oZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9298FCD0412
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176765003358.10627.15442596547452128741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee5618d92f6f55362e752daf1fe00e074e14f502cd531fa9ffee1cf6e5539cab
Date: Mon, 05 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767650033
