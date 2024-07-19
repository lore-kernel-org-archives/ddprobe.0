Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4422683A0D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721432754; cv=none; b=mbiKR1J4vm2oNrazot9QZlE4YJbl12dgEt7s6I0qxbh0rxNuagTpmzB7yMViyZTtjaZqahHTtS1acbQ1WJl8yjEzgHt1gRRkVinA7i33I6asOb8StpQ3e9hey9lBcUbxjL2BR9iuRNFJgbOY67PEXoyy4DP2MMl5pvYf08Vy4A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721432754; c=relaxed/simple;
	bh=7Ths/2wmWfzekX8/fn0+8y0uMrXdOIOVyEcuhUWNu8c=;
	h=To:Subject:From:Message-Id:Date; b=AuXp0AE9NBYE0WJTI/bG7hhVqEi+Zcig0w8kfQUwf34B3ElSjLbIbH/BKsInxqbjincoDzIXPTPgmKMKLk07g4UdsFEk7NWgXbUmrpA5zfccz+7sJzeQb8RbqEBQxdKxRx2rpJKIGbMdXzMaN5vcQyO3G2tA8J+BL/17FP3w+z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNAk3McV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNAk3McV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD193C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721432753;
	bh=7Ths/2wmWfzekX8/fn0+8y0uMrXdOIOVyEcuhUWNu8c=;
	h=To:Subject:From:Date:From;
	b=HNAk3McVMkBlbMaU9w34fXSEy12Iav8Iwj0RUl+yAQRAJ0C9XGMwzY9JxJwnBtY/L
	 uxvjf5azzuqxOdsnUda1NjIVPkBdtBd4FWgDCn03onb8lvTWBVnk+beWw7YwtEyhI4
	 yFqriVTw1mhj1Ceh/WN3gp6iVjyqxNqnNCfNdsHwhVYK46e0M2guHsLYnLlEEE1qA1
	 7dHyqFXqyyZ1xyrwOO612NP/96F8MHeFVM9NipvZs8kLtXth3t0VnX4gXbjUIGbQVt
	 rpb9J6pOzyNdhP1PDGtUnE+sWf942qyR79LflpLuXkkfNAtDCX42+AR5RkexU78DxG
	 glfq/UDdyNhHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27BDC3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172143275362.13523.14152484129007732949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201658adeeabf73a017a71c9a4084ab8796918195b99aed9bb1654dfe27e2842
Date: Fri, 19 Jul 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721432753
