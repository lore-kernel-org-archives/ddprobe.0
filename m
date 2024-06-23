Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1F1181CE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 15:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719155543; cv=none; b=sHbQXRynpEO9m4+2bJrTXCOnsnwBP46eOLXJr6FskQJ1zf4mIs+CE7HkEvgEQAaKd3Ed3II3MW7kgybhfsVhNV/0LkZU0QTj8Ge2jK+XKUdylbZ3kxO5+kJ9I8u4drQC6ZzyRewCN1AehgzKn/yy2Fi35P8i9tzgq8m7dIhhnZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719155543; c=relaxed/simple;
	bh=36Ruh36TXxhPs+l9zIjILlKbkV+u9Y4AAKcinQk7vTc=;
	h=To:Subject:From:Message-Id:Date; b=RJPnCqzZrlXgmtCiu8ShpyyzcKNIOKD10sw7LDdelVlP5sm3Sew5rnpGlDd6nL9aoBIF2InhcYll462qssjIuAaYDUy1RB3U3JrYsX7ygWGWJsLFMPDSpVZPrb/v1B0D99tusBuNb2aANDhCJGUP2Xr3KF+kp5jHllxS/IHzfA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jl2o09Ds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jl2o09Ds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3A36C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719155542;
	bh=36Ruh36TXxhPs+l9zIjILlKbkV+u9Y4AAKcinQk7vTc=;
	h=To:Subject:From:Date:From;
	b=Jl2o09DsHNRHqpoJzS+ItujQ4qg5+WmT+71lgGT3w5ZSWB7Akqj6pTN+rykzMhcKO
	 rbaKNcuIr/SJbGDf+ydl1ySp8/mbIar7PXAQ2PZAibJMuwkVaItkhhlqlwMwedSdR3
	 UpbOVjmQgZeOb5+7qbCtaSm/mFp44sJ/88L7bbSSVkgCGYykIwyVD7XICFNlr6XMxJ
	 BuMIVjx4TbX1hUICJqfaI9wX499YMdZ5NwtvrVbtkZy7rQ0IXPbU67EioXL4OEr6qQ
	 H+3AU65sqon6gtW0GHFJPXsVuf1Q3m0qGpbqitVPz1OuysqhzMY9XbqjMRHd1SyG6Y
	 QwWO3q3pyxH5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD4B1C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 15:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171915554278.24978.7667770441389694716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59e03222c0eee22b1de377f6e38ecfb649db67d0836cace29714718b46ec9876
Date: Sun, 23 Jun 2024 15:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719155542
