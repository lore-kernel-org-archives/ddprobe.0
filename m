Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209E33BD64A
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776945454; cv=none; b=Ih4eTtpOUva3jKvHiePaR08f9iRLERLU6oMhaY8J1UFx5w2t7l64+tPbvJAssrdLuRGiYLvZciQf6xL5XbSkjSRZjJvnRBxSqUY55+fT2uaZtSxAt/uGWBUWvkW35sUM5nOgBVs1ggQcvJmYuAS0/exywn7F5wk9fUHNZ9X1Ht0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776945454; c=relaxed/simple;
	bh=ZNlZtWg5R4f/DeISkoqpNBH9KgSDFjwZBM6FbV0tgRE=;
	h=To:Subject:From:Message-Id:Date; b=TGINvlyPuGK5p+NfjwnsbqnCnErsa78hKRPYrqaq7423nuWIiatht3m/X8yxSohmcYviAuL+DiH6/Gcst5vSjm+igEkZjTptUraR9xauwDnmEG/I6coQtEMx1saEGCfu+9L46YUYwCx5PmK2ez73226PUgXOriOp77LOUAvYTO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0n5L4nK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0n5L4nK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CECC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776945453;
	bh=ZNlZtWg5R4f/DeISkoqpNBH9KgSDFjwZBM6FbV0tgRE=;
	h=To:Subject:From:Date:From;
	b=D0n5L4nKcUmSBdAQAOVTrMy52A3oZjf+11WnkdkfcQ65g3iRRh+nGLFt1VwyX8WEG
	 dbd8h6dwEXCFGm53fzlFJ75WB7hDU1PDwZ66hnX2ELALN0lrSwyRFiepY6YcWHBCTY
	 yIrX/NqeBhgJKKnJaPs0NJIRJ582kS89WeLr6l4DzuAh/kppunwNS/+KM+7LPlrcrC
	 LsY18GB0XL/aSvjAE2AlRvx8voHBUUI9oXJZlC1Px+Qi98c+/axr3uQegAfhUJ4hjh
	 wXStYV4dm5CSgjj+ZmUAquB8feux+SXvndwo07zuORHEXcWqMWm1/wSjyywu+2vcFI
	 YNzLO/r542yHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A958FF9937E
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177694545368.32241.12614907512108235995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16c9ac95700deb13625cd1a2f0ff361b0150a98b8d291fa231ca39b47293f6a3
Date: Thu, 23 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776945453
