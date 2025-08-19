Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DCB24DD1F
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755577194; cv=none; b=T/oQfUPs35v4E8Wz2UJLbymbrROr/X5cqgoNSeJwQ8mKvkbwiHjY+xR618zajWyt3ac7A47xh5d4MgDLx0oe8uq6IlXDtqmIEdIXaz/TiM9K3Oq2vWclvYjn0ZBShUUIqg6dVvxIHVMj0TW5duKyZk4SmzevlNGqlkjrKxzOQDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755577194; c=relaxed/simple;
	bh=u/D1YGPqj4P9apGdGb6sPs+QQJOACBt44jFG7YBSmv8=;
	h=To:Subject:From:Message-Id:Date; b=QxhH1hGQX5Ur+vN0dIrzb3VHrXeIHSz1PRXnq/qC1ZN4URhww6HZIORjaB5yMIHyvkHyqwJ9ywmS32qCYc7ji4DQN1HIskoKFDUxgAmt0WFumZammednYty7Cxy5Zc/2WLdby9l08pSm+6FKPG+EhYG4r+CnioIMNCb/+F93GUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpW2Aek/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpW2Aek/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8072C113CF
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755577193;
	bh=u/D1YGPqj4P9apGdGb6sPs+QQJOACBt44jFG7YBSmv8=;
	h=To:Subject:From:Date:From;
	b=gpW2Aek/ggpvahf2pUz0dvVrR43d1Jr7rr7Ljl0pNy2Zzzb8qkBe8EbK/O5jwG1br
	 rexKYiXwFNYbqszLwDcldy2Jd5ufMwAXJg/5W+ozQS67mph4jvR32AyS8hi7l5c8xz
	 +O3rfJXaY/DqNY7jl2gwuyD02JF0Nz22eZOYEUNFdvDnzkMf9He69+aQRVFSjbEQPB
	 DtbSSvtRReEBt3sZNmIMTkbSVvPpTCn0U8MCCEeC4Pt5b2srppXwR9bCJNjjpsmLZ/
	 Y+Gl1lWtCcGddgLmwvEFQbS6g3NLTaqnmIDvA54RJFqnJdqBIhAyrMEk/KoeWgXgK1
	 1sE9mZm/8cJ0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95647CA0EE9
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175557719360.23233.18048460084740972627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b21d4b5809f2b570783d9a37f0f0ca60d7f83d2d2e87edb1fbb7a7194e0f231
Date: Tue, 19 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755577193
