Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474FC39936D
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786599634; cv=none; b=bfzcUHmcNw3rYKs1/F/pNz1zPhQGa0YFnpvsm4/Kkgovv4mmGQE52fmZnKvsNCSrWIt9chTL8nBYR/iWSeeHq9thteadenvqqo0Ye23dIH6680ZT0N8Qmk2NwBGFUNyQqXkLkez4GHhTVoAI8QeMD2hYeunxHYK07cRnwcZN23g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786599634; c=relaxed/simple;
	bh=PD/U6lopfveIGiHLDaS3VYQ7rPgYB6apKeJ04GhtaMA=;
	h=To:Subject:From:Message-Id:Date; b=lIIj8nw+WhNtKP6e/5PoW7aeBfnXJ/RmLsoRXkSw+NS15ClTkwwz9MfUElBySnqHRQUo44vuYNtCOs+Ll1kaWoBrxvCRR37DGh7ps54MnX4/t31DWQNFhfKWqy21wujSK/k6/DiMrrgS7A5zMVlQbcDISrKKn1ZCMUAbuccyeh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrjaidLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrjaidLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC624C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786599633;
	bh=PD/U6lopfveIGiHLDaS3VYQ7rPgYB6apKeJ04GhtaMA=;
	h=To:Subject:From:Date:From;
	b=YrjaidLMtAbifvBFaiAORwTn6wXJZBjh4i3kBqBL7OX+u5aXEvGoaqylpUjGKRLrH
	 dZJVJxPzpGqmE22nhiqBTaPSQwNxkGHWYpvBplz4IcxruIKFCD3WopixKd/0GtzXc3
	 RhOAeA1PqLXSivS3k6tsiMBaAUcLCl3KDlcxhBx0mAREaxtV1a9BHsLVFZsSauGEAH
	 vrqS5ywji2buHfTmuhtzfRAEZBRsRvPOxZJybLgWczZIJxEMQ97NjAIQBeDFbpniX5
	 lvBPsvY9uaXCiOliRMwmwUnEhVIHXMYsTYR+iw7gQ9b+dGU3aK1SPj+uOTi1UBk7rW
	 1WorghbA437gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A938CC5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178659963368.28930.16180774850791078622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e844993e3bb4dc313343895f6149e56b0e02d9487597628c1f6b4db04a770815
Date: Thu, 13 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786599633
