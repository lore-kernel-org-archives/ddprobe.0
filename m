Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA71DDD2
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761398394; cv=none; b=sMmXtzhFBTeqSyyrMxla3WHl4JwqCmnsniZNDr3CYw6dy/NNLkbv2Wpm3Kf2eua48G/ejeE3g+Oe3x5DRVV94ve/bu+S2FpVWl5UiM8xipWDUnP3RVSwkMX8px41WlPsizw3dymruK0VnqIjRGt9jO/rjvIf0qn2oLz2n+XYCek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761398394; c=relaxed/simple;
	bh=q880RwpMhOi8CXdcQgv83R0WMoV0RGapgBkTIx6We9Y=;
	h=To:Subject:From:Message-Id:Date; b=rtKcVk1/8RRaCm8wkdhjSOJtLCtRBd/infSCr7yBG5Xa1wsyhc+pXU6V9CUg+M/EcFFj/s8OK9S1XgTcnw8DWBolXSczzAF0gIal5KujK2crVt7Gyo66dE5XY0Pg3CNalitSboUYH7VaGAcqG5nac1Ed1uGaBcWxtlJhXvZmK30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQXQo+zm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQXQo+zm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A776DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761398393;
	bh=q880RwpMhOi8CXdcQgv83R0WMoV0RGapgBkTIx6We9Y=;
	h=To:Subject:From:Date:From;
	b=FQXQo+zmciTJc/K8hQkeLr7QvgHFSE1RIwoQnb1NEYeIXrdiC+fipgIOTblpVxr2C
	 G2q3gpUKJA/CbI7Di40TwaBn0fVJmgXOwIaDU39tisEF32O1XkaueyK1gU2w2g8xcG
	 woBcQqSKDlzPMuDk5bxryoFd6qlfDsjIK4uI1sQUjez5nMKnVxWikosrRm6wP+Fj++
	 cE+vrFkbLfkHBXr/vBAoiCNqmsv+BGKgkcxap+gjEtw9mF+hIUx+GAZdc8dcRrvteP
	 v6LCFSJX/8tkJsIlQYaZn2ibl6jZRZqd4RQ9wYOvz6rvg9zrIN/0yqFA5Xq29vmXnQ
	 a7D86o16sO5tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9397ACCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176139839358.19849.8001186891016586014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afa280acd28cf36484a07a93bae3ef5686a41772c59ffb97a1089c041fb89330
Date: Sat, 25 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761398393
