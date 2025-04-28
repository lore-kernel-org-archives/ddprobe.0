Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D4179E1
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745844594; cv=none; b=ioA3sCyXAnHMmYbk/Sg8av3PLfke1ydg/7n4sSCwrifx61P4GnPErWo6Hp6N+qD7mmIxBWsgCC0amFmHQedPTcN8q2Szj9coEZl4iuS7jE9XiFv26Vs8w++zb0Nc7BYYHrofQmsFeMCaC80xXHGxhCAxM5OPu+mC9cHizWFFris=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745844594; c=relaxed/simple;
	bh=PnYVt2Xow3JzYURyEqOFlWzfxhOnYRTOGkDEqbHdqK4=;
	h=To:Subject:From:Message-Id:Date; b=ABplW1a07mPp7qp/L0SkZQrvyrrvuja2HZCbX2Nk7h9Koe+1naK4X8pgxej8RPcxOP7H3G9uyof8lsDMU0+sd4pN6g57n3cFsSJfU7aSeTdumUyniE94NZKwZoWVPIspYIlTXTHIlhZ1S4u3gt2aWvBy2nNg0/qswaWS7EpocTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/fnsF1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/fnsF1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BE6C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745844593;
	bh=PnYVt2Xow3JzYURyEqOFlWzfxhOnYRTOGkDEqbHdqK4=;
	h=To:Subject:From:Date:From;
	b=J/fnsF1nRJYqQzos93eNu6azs52kahtzyfteYm5NT0vBBYa+rseVKKlOmcRbFsZIG
	 XvrIYljhvgG3l/w/ysH8KdwqPScmIkk8k6CoTYPjXu2TFqM6lJhonHK+++3gvc8B3h
	 sMMilQe4goEhTcbPSvzGXs/BFarbkIp/RcXNhrYSRky0WAuiTgXPUZrBALVrZj8tge
	 sXaStNrIAB+o6KFXO1rOGWMRxvanX53ghzvEKtnASUQTpcfK2/Cm0kejnp4nQDdniC
	 CB7eYpdQolpcpV0MO6SOtg5SK1zkpetWk7AEC18Gu47zzO5Yvm5iOY38gdyQ2xNZOq
	 /+YEqC641TjMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED98C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174584459357.26264.5378817601672532760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6bf60c7439c84e7fb80b9c424276423e442bb53f3e2bb349d058fb2dac5a774
Date: Mon, 28 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745844593
