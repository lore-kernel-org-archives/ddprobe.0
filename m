Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13031494D1
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724261154; cv=none; b=XzUKw1xpLLCMuGkMZekfRIaN1dYErtqPucAGhq7mRImPsG4AowU4aJGyCMjGULikXhzeHmyZS+SqG0B2IL0xzLIHXdXg5WdDQ5gvh2REtJzI656uqwyALgGmat0zJJRVbs/KbA/LnTgBRvxr79QXOgWA7ZEy3T4cGubwS9D4KT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724261154; c=relaxed/simple;
	bh=5uMKXmtAVSonOAnOVLqaDJk6zJxawZANAT+zURTqK+Q=;
	h=To:Subject:From:Message-Id:Date; b=B5Za0U3t/wy5gDyXX3RnAkDS3oUzKblUxC8dApYe17l+uFk4Mhbt3MfApFfRsVXEFmge0IJm237dXLlOD3JJo8OXgLfpMnlwqtv9kfqX7cRzvgKtC3x5kWnm313Gw18WXmpdjpjgGpgt7eVMbsr9GUN42lG90DA9I9WyVVkAD/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k0G6mDlo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k0G6mDlo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19ADC32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724261153;
	bh=5uMKXmtAVSonOAnOVLqaDJk6zJxawZANAT+zURTqK+Q=;
	h=To:Subject:From:Date:From;
	b=k0G6mDloWjSsjh344cBL1aXp0IACDL83qw9DViYKtVCx9M+ym3EcgG3EKpHeTRzcU
	 wBT78jaOhucpAeEhgGyc32tvOZkSyoAMFNQqBAZFO/o893X1c+y7TjTwk1eVVtXTJc
	 56OgwGNRAefFopyHgmJOKislg6RHqCIowNqIswKJPFmnLy9FXH3qpsQ/JjDz0chAgn
	 KsRUTSgkRSn3Zbf0/F45qpwTuOBzQhm2z3AEU5Y75TpzvRPKRR5rh0SALV4qQN9EoD
	 d0n3Fyffe1QydT3HLYK7fasYljvD+m6TSRwppQE6FKYHdErAMChCy3EzH0wprOpbLr
	 KEmN/+9w3HZhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972E3C52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172426115360.2022.13841164548644465078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b31ba572398f0fbba2fb1067cb1b820b6b0bf186e78daacdb0214b265dd68f
Date: Wed, 21 Aug 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724261153
