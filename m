Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2110739098E
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772513094; cv=none; b=mWTIg2C8lpWUTkoiK29q+o0dEJbrX4glcUEe8hVP/Cn1pxoOMubbdHBtMoS/8xSrnceIyiaFec5Fowg9e8AjywwvV56Z2wliLiZYZRpmTWXesvSBRt7xyN7w/5BlITlXoCrTPm6DOLli0q17ZIaNkd0mZ44B4BIO4JfZh0rGhZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772513094; c=relaxed/simple;
	bh=t9q2iPm0wNDToi4rEf1hBJo4AcYw4qND9wtWIShtgn4=;
	h=To:Subject:From:Message-Id:Date; b=fs1KtLGWKjt1g2iFHclUzCKOVUUQsR08YiMvLWJjszU2PFAzL+rOAmRP0pKS0r6DCKEHrlHBHgZ3GrKO4qcuKxgPiEgrQljbis+gn4qLY5tPpR8OujAY1gFLVoX4vyq5cnD9m+H4fg+2LNwpXC5YAwd5jUMRbpMmiwTNphTJK0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPxeX1Va; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPxeX1Va"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B64B8C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772513093;
	bh=t9q2iPm0wNDToi4rEf1hBJo4AcYw4qND9wtWIShtgn4=;
	h=To:Subject:From:Date:From;
	b=aPxeX1VaE6ocOtUoaqUlvW0uz6JVybOlPHVr5DgQN1B1VCrwgRbnuDLBoZcoKWBBT
	 kTSHq9IIHCjUfI7Nihm1epRZwYO3YmKYiR9OPhPglYr5aefyvrtT4KowYQoJZyvL3s
	 mPpqdmmH4rRjGDt2P/yOZCPn+e2xG2pJHHNERgImD9OUYZ9uSdAuG6FZ7Ktigbzzul
	 JwoXm7N26IfXPl04SpqaT1lJwh30lFHazmILtiF71Z7uxuVEYO6gul0mrctmYXqJ9v
	 GHPgw3AwBxtrpHJZBYogRImF5ktZfaeFgsUSMDYXc4CquZt8Tuuzuh8EqvicR9Nt3Q
	 LJJ+peoEi1R8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F060E67A67
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177251309363.11065.14205326438558429488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43a6f713296bdc791a7fbfc2ec337651fb3acf1f8d2dffc888d92fa9fc583705
Date: Tue, 03 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772513093
