Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3942904
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754372994; cv=none; b=KbQczS+9HbrpKEI/GqXHvbn/TkME4JN2S+0dx3XMhNU0w31ogFRtMIl1g1/ug749tE//SSHZwNYWnyzTfslGi9mLCQMKoV+BDyesTXEvsuoanBPJ6AFA3yazGeOIOzHQ0/tFdfv0X9jbelvXkE8WHrAU4Bez37ZPMTA0e/bfrgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754372994; c=relaxed/simple;
	bh=R8dAFoAgZi+Lr7x0vHTLWfkBN1GKXkaniKmXHYtuuzQ=;
	h=To:Subject:From:Message-Id:Date; b=unri8IDGrT+SZSVqZrNzPhj9l/d8w+Gp1HLVTiiL0a9FWGk8ZZyk+INC6mcUAMwg5XRppmNrKkenDflBd/l7sc1jy9JUm6NEvoGLkotDgSCQbZ3AJmj+A/nn3yqCkWOBg1sZsJw9LtZbBOeJadIjjkBWPeVEHdtRl8WhGLzS4lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUnIe9Lm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUnIe9Lm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A457C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754372993;
	bh=R8dAFoAgZi+Lr7x0vHTLWfkBN1GKXkaniKmXHYtuuzQ=;
	h=To:Subject:From:Date:From;
	b=NUnIe9LmEwyuFgYECc01z3jspjtrmZwr0YagBuUX327c1C6TUFLgMqmPiVEp1Kzih
	 GZJyJFzcJu9n5qb31iv1MC++HhL9D5x4dZdL/RJ+GY1XCi9ixZQiJBLiLgbg95bqLR
	 Lz4vu4O41JYg5RQp9AAk88D0i/mWLMKi+nQAAahLUCh1vqFWADo2CjytDqo/hrzisl
	 axQHsuc+9vfDJAbhL326EmQmojHNkEIH9oFHAFpeerlodW8PUUZXCIn/VSeH2iNpub
	 +JkVB1rLmABSch16H7NCJiOu8gIP3AqqxD2FI51UExB4tDEvmiRt6zC5aGmmJNVmhx
	 bk0MN523qtO6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DDDAC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175437299357.14483.1619915638455845553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54661eef2ac77d37efbaf39bbee694b41760b040c6d5cfc9fffc0044d0bf1d5f
Date: Tue, 05 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754372993
