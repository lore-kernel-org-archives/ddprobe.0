Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE7B2116F4
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777235254; cv=none; b=IJ5Eo4+nK4f09i4YPSkSumZKMdMr9LoS9j5HXMprqk9HMfGP8X8ZyfilPoVrxeVR5M7ZH3lIoB4tLUO8cFK5RPdG4PECoZ2cqi7HyXaWlfEpIV4wzpviFONH0S3oju8a00c/4fTUNejXf6KXrSfO1hLzKEgAzfoysBi5MlnnbEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777235254; c=relaxed/simple;
	bh=m3SvPBr0cNcRGveEDEAQWnL5H06KkFYx1ij1pmi4JXc=;
	h=To:Subject:From:Message-Id:Date; b=WW2vlBqeimgiOKZyJYop5EXgpxHq9Nuu2N9bGwDF1T91Nq5eFixFDT2u1npaLltqpBex1gXH3E0is7qMQq1khZqntrJRwfg9aEsGbDr4fX4XINOEG1Ssa/M2A0i250J8T/+MWrozmkwp9D7wct4YoLRD6M5hIt5bhHa8D5yyysM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yh0GjLOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yh0GjLOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB109C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777235253;
	bh=m3SvPBr0cNcRGveEDEAQWnL5H06KkFYx1ij1pmi4JXc=;
	h=To:Subject:From:Date:From;
	b=Yh0GjLOTV6ebf8OvTAlnx1UWXUiy7fc7YQuCyaqUbdZKQEDe/B6HIMa5mSuyvEfMH
	 /JVHfAj+eJSnECizKzfiy3ITHTtyno/QEFfAuKV0naRslSEqowmOmPxtqMoEJB6aO6
	 jHsgh9dEya2zui0OO77H7bkHnioOLAj+znjyFa6D4gOiIby9ATYntmy7VKGprOYMav
	 9XZhjnsT0J7/cq29FuspNFWsbnVChUIxc3cJ7XHhO2FNGaccMw8OpywNNg1Ju9WDsX
	 LjnPrkyfStWmH9MLL4k04NVP27XxOKgEEMxIO3CuHea/QP197t3jMtbBDfhcR/ro3n
	 2HUo+yVPzBUVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7D8FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177723525368.7944.7469275892876413568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc6390819e58ef009f59c119499e17705f3f89a9ff4f5de6ebc4b0bddf1db317
Date: Sun, 26 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777235253
