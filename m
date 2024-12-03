Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7DE11BDA99
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733214953; cv=none; b=utCgCcrrmeFL/0iS+yZZthLvfp1T+MjpRiSHJD6J55rAKxDu7F0qXxq0s1x48r2WWCyz5JkgvqbegipoTUcwsNDOgikJSnrpGsom0+ab0xdBn+Cn50O1yZ5haqacVNzhjr0w1XScAQHiC6wTYV0lcSfd4r8Gr9f4epMxHaLcets=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733214953; c=relaxed/simple;
	bh=luYL9UX/GTZQ9OouvDNyqjYrWrEmxv7ZfHcARxElJnE=;
	h=To:Subject:From:Message-Id:Date; b=lHFBuT8EqzVmE9piTIR1GK6qDYUdR9E9bS4mqXMhhwANjisoMpQcfyclJfdMFAsqpZdRw6ZQIk02jd3Wded/e8WNSApQI2FhxjyIAqMsCNke0OQKVvRVwHO8I1tRbEYejf5YY80zpnFdscBlUnaWsOS8WenPIOH1qodmpjnWdU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPXrEKZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPXrEKZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D084C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733214953;
	bh=luYL9UX/GTZQ9OouvDNyqjYrWrEmxv7ZfHcARxElJnE=;
	h=To:Subject:From:Date:From;
	b=hPXrEKZh2CgPSXuhxWizioceOQtm1YYjVDr2YlZ34I8TVt0/YHCf4tyRfifGudF8B
	 aMVmbMu88USP2Skq/UDX1rhfrXFpvZqEpIGz8vrV0TMppIbcF6x7lr/TPc28+gPYsb
	 20U1FMphRd5mJUAjZZ7SJqe0x9aJfNBYLkjild0/zeXhYE7fLdBugCtybv9fj5jSu5
	 X6Rjn3pcEXmodFShyRqJh1cUrD+nk6R+ybwiu5mIPlhY+jQTCC7Z5mrXqk8cZc5vUD
	 hPTOOASWe0JzjYW4Foiv5cmN5NOHs8Ritnjnzqd2Wo/UjqrrN8l1TxnJR6gyZDoeW7
	 x71cyj9ttRKzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90633E6C619
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173321495358.24986.16276812385323772878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5518a09121b0332a4ed538d13219c32a0f16cf4656596929a7d3670a22151dd6
Date: Tue, 03 Dec 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733214953
