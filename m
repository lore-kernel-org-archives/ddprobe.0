Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC9A21DEFFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742578193; cv=none; b=rz1LXdkSTG5NYkcafL5hhoNNkEb4P7lZX6NZ+wOOvqyhJi+QE32vPNANTiv7NQmy8SuUbdV+SAyCNiKpNC1d7pIspTWI64akA2olRHDmPU+BWIy0KrwlVP5hlQKZ+2CIlcRdgK7aVtwzx08+NDqfnTEiETMv5GLDf+O9yGxrSfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742578193; c=relaxed/simple;
	bh=ql8CPtHc4wQNJCc1FsJveYUr2RqJ2UWPINieZwyopDg=;
	h=To:Subject:From:Message-Id:Date; b=ABAbqTR2jXsDlwg28Tj5i4UFZFD6IPscyPqcuJ2boRVhkedRMvpgM8INoPpsOuaHz+bwd2Bz8l7i/OCCfUOIuVVjV4STiWyONrYrTVPFoD8Txga7HLQohPsSVaBdGgJRcRP+LIk16ujMr/iEIhcvQKGQBHjwuzqbRNpuqW55alU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4i6mXZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4i6mXZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC7CC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742578193;
	bh=ql8CPtHc4wQNJCc1FsJveYUr2RqJ2UWPINieZwyopDg=;
	h=To:Subject:From:Date:From;
	b=T4i6mXZ5gfAiDOWW+nN9/XnWcY1YQ10Kz54KBKU8i2yQPEIia40E76nPm3VYiv+7M
	 QnCA/zOrrDs18mRqVo7qm9IlhtFdfD74TeJ59a12ucMDj71Q4GqhY1qQ01PRE2KzCc
	 a/aPQHEHdJ2rYqwHe1eInzfTBxgQLKLzaaxj1LqNs0/ZB9EahalPBPK2euGcMDaMeT
	 4svWXe0JVTc1GFOAN/33rI5rqXBRbEtWcyNtzgsXl1HluIZVZtuD80KZ/k1E2N0OH7
	 LfEorsH72yx6V5FKaPqpAkKXMKGOFmNCtMlJZadFjyW36ePgEKqucx4YGNmuQrK686
	 KF++Lo08Axd/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8D9C36002
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174257819369.11666.8823290846520220943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff831d796140838398ed157112758597887f85f41e3ea26f778296d26377b76
Date: Fri, 21 Mar 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742578193
