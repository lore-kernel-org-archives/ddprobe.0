Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC337081E
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760669994; cv=none; b=LRFgCudaiBDZL8XjxVeCYE5szuiildIudBX1nASJeawfzi9A23fOkGNxN5W81l+o+Lc4bkmOUnhypY3YlKH5gG9Pu6SdXu7LWQOmEdWD2LAs5KSh91quNWsXjMUK3CL575xflATVT8OWQ6laIjd5iTKUnu51UAsmMh60/NbRWyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760669994; c=relaxed/simple;
	bh=YlExe0EqX0PZ7JWIJRSCe3Y80qddvQxLf48zjyPBvBQ=;
	h=To:Subject:From:Message-Id:Date; b=FPixk0UfHNU7+AJzQKdiKP+3J5VB0lFsW2dfdktVonaeVHXqi9F3AM1HkXvTYB7WRCPHAbv6AAmmCtO0uDi6mZBHw8oxfdCEIZNEibfkXmCTFh9rBlq/uzDVd4YxfRQS6522ais82kptuI1Fu1TM2YHInMZvVURciqaJ4F2fPkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgAfeZW5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgAfeZW5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C1BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760669993;
	bh=YlExe0EqX0PZ7JWIJRSCe3Y80qddvQxLf48zjyPBvBQ=;
	h=To:Subject:From:Date:From;
	b=GgAfeZW5U4qzHwSZKtBLGsB1fsTo+AkhA8znPVACA7d9/EsUDYxTLFmcBQWQb6MPZ
	 TPgLxMywwLaMd10Hm6BkgQix1TYxraSelaoQQAfsqGMFZBHiLTYbDdd385upGWWMXf
	 gxBtdQUeXycjxnbO0vS2zUsa5jCvzOEDR0FnKLxRkLlh8gk6LasHP56VhtvtUIOOk5
	 T/R9RlkT/UC7tWmb26i1pbO0qi+DvmTxFeGDyz1/8vXbbxFejBlaPLvJ3uuAOFOtdp
	 YI0JzIUQ7la1BXpJ3VOhp/yZP0ycNYDAyXvUT59QiYkghfZSRvFk4moZWtW3ogNXIN
	 idfywrROe97qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9D6CCD183
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176066999357.689.13003059848461104676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c73d9917da5a775955594baf948b93545673b0fb9f7cea7e06ca321d8698f44
Date: Fri, 17 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760669993
