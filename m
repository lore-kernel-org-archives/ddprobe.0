Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335A621765B
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753651194; cv=none; b=gZBGxpblA1SDnH0TvA0Q3I8R5ZS5o2/Y5jdDsEJYg585ZzYAh5/s+tnrF9JeqHnt0o5OI4wROrDMC0V+leEgI1+1gVLWvmOkTNOoP8fLWFQDg6Fb6m74niTzdhICoGZA0Josfa7yjtl3zsY87GRqgcdB9csHpkdpxZr+nEL2a3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753651194; c=relaxed/simple;
	bh=kPbOpt3kBv+oULOsgbSAownLLSBWheG5JYzaeiobdSE=;
	h=To:Subject:From:Message-Id:Date; b=nveh6dv8CD5q16t/GE50sCWfLfoSdZcND2TLCG05UBYR7cgUwqnITyNTLYYt3iF4tBMuAHgSIWUxFzeYJaTqynIZV529y8KE/UWg9bpxaOl1X7pLiEkPr8k4PwoLsMRR87ZWDp6Oz7/7uyxpD4iX3Cuv5M4I0w1cQ90exPp5r/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMo77nQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMo77nQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E8BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753651193;
	bh=kPbOpt3kBv+oULOsgbSAownLLSBWheG5JYzaeiobdSE=;
	h=To:Subject:From:Date:From;
	b=eMo77nQArxvOtSl1m4E0znN7zc6aScEJIcnInPFo6PxV5yqeo6lmpcSV8FWrai6lE
	 3JDeAyTQBE2/6DpfNCjZ9iq/OY9z72Q0kzyzgCmu+b++PGkNYr4ZgNrJKuj85RZOep
	 i70rJ2pElZI+S0WVojSZHBD7WC22cA9FAqRruWeZ4PweLb4FlnaTdT/hzVB8UaiVjk
	 UU3nzpwZNG4rSWzzIwyX+zyEJDyQMyCrSksBCmTejoIUeGRBtsxiPvSNiEggXA6qb3
	 HTtrQVH3gZR378Rt8pzwS69A7+JGNlgkXv+MceSH60uZtOrWx2+kzExf3K/L8+C5wM
	 ism6Yml2sCPXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E30C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175365119357.30408.2574917692201834005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9ea369f832e1aed4e413e472a881d66b1e7c3248e0e0b51995d654a33018c8
Date: Sun, 27 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753651193
