Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E9714006
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 16:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713715823; cv=none; b=lUyMrJkeTf5Y7MYxSoCzdEg9OjRCrctj6N4UDMChTgZKl0RlhFAUyC1LiYdlcELqbCoIGSKtIm9NN/qB3/Q11A6tFUosQS41WtV1nUQfhaEctv4rKTA4v34VafsfeNjHFGQ0ZroaOiP8zsUpCpkX0GgrifDMejy+0lnV5Ut7akw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713715823; c=relaxed/simple;
	bh=6pcimAc5Uw8TqdjoIEIA2v8lDZS/ZWZvo4UA7R5xoMQ=;
	h=To:Subject:From:Message-Id:Date; b=K5JGRl6/rk0UWp5sySDHbt9HpOvQDD2xXSWQYvJ11gmaAAvHiZuQKecf7FTFq3NB6YWsHY1PVMuM7pkb02hVX2b/u7zmNZbc1zrb8+eBXB2RFwEyYbGfg/37Dt3h869u7YSTTG8dKg4tyC0gOpX48VRkh2sLc2MbcyjnZVFKshg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjEDSKlv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjEDSKlv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B13C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 16:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713715822;
	bh=6pcimAc5Uw8TqdjoIEIA2v8lDZS/ZWZvo4UA7R5xoMQ=;
	h=To:Subject:From:Date:From;
	b=SjEDSKlvtMEvSb2uSBCIIkfpVYbY8MjjleyyrlXpC8jXMAx4OsBkN+KCLnbru4QdZ
	 M22u4EVEdT9LI8g5twfKiJJPEvQ7j2AffzTM+Az4I29FXlPH5lXE+tELiFPvmoJKfY
	 toHYElybv5Bz5gjDWkLDPhYbp3EiRtTerxG1n+N8OTMg6L8NI5JO3xDz6YrTYfLYN0
	 HTNelcupNEhbl3Cy189Ezj3LoRHxAUW3w6QJCz7KVqc+vXczSXTA77Qu4MfxgqPnqo
	 eWMkvnASWLVIjIhHxxvN96+vx4nT+BO/ziVSjCuCKl64P2LkkNaPxu9DYtpKTfsWd1
	 xFqsyWssoHMiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B14C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 16:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171371582276.32295.16085063030993598771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5424a1bd73745ff64592818fd6aa5930fdcbafae2e4ec6db41028a1b7cc3342b
Date: Sun, 21 Apr 2024 16:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713715822
