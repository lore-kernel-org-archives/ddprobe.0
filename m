Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CB03909B1
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 22:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780095214; cv=none; b=H0UAQ5jOKa3l3QsyaUivUIpgX0YJdp77pOwiT638cCVvhq4SQm8gLMQqHqSHIBptUbmHOL7EswLu0rohUUqypW3F+/8tORESgDmuXnYk+a2IVhSa38FxXaaFbc9VFeT1pBiDZcZvjaNxhdW1IhX/cOLWEaUw03HIqVcT0LLBvgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780095214; c=relaxed/simple;
	bh=sRTtUHL1ObqaUyg5gpR65+xMMusSYfczp3d00WrDVgc=;
	h=To:Subject:From:Message-Id:Date; b=l1Qje8lA1uX9XcZOXPfcY8MMOEKR8q683w+ZNosUnsOig66gA7r17UmEMGAUEBgZPvjh3ZOshOEGm1wuL/UOA9wReQVLj95EYcwuJi5Iin75B694gIr3E5uStqME6N5DcEKrOl4lEfoRRvxo9YURfIS1DiYHBahCp9ENxjR0ynk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJ1Xbyf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJ1Xbyf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF2B6C2BCC4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 22:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780095213;
	bh=sRTtUHL1ObqaUyg5gpR65+xMMusSYfczp3d00WrDVgc=;
	h=To:Subject:From:Date:From;
	b=iJ1Xbyf+FhesLGbs6Cyx/WYshoxU7LcUHFoNGtsPntlLkCScQPs2ojy66pNgLClS6
	 wTzgcmcBzXiHmjMtCk5fZWV1X/j3njvEIZDP1gzrLdrlXRix4zo5uWVuJLNMweKKGe
	 piKVhQeitT/0LM+f14eMCBOrGbJ1E6hMbT6YYZicwoER8dikikZ3jDLQN+OyLn4j65
	 hiRkuDDI56o85xfqpGWlTkQN9ktzIME5e7Ej0fHBMwVUaGCdA6Np3tApycwM/6y7Ux
	 t+O4m53RQuD3UBiQv6M6hMbjK59XjCf4rJkTbdxSgeZq9pDEatyvaavvzIkeP2Eek9
	 uZavJX1tt5CqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87A9CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 22:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178009521368.20922.15816195962165994783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be75f27e8887d282cc673da3a9e700f76ab42ad9ba876442bd7c20bd55b6e7cb
Date: Fri, 29 May 2026 22:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780095213
