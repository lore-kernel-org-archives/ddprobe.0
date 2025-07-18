Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264DD2E7F31
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752865194; cv=none; b=WPEW9IIDv7QLyMzMnUmWqSZ5igrv/7pMsAGHWQ8dZpcRoaObOA465/IVueg40c77lsHctjvA1AN0DXsxIV8HHdD2j2gWD0LEqlF8mm8HTJ4CSgSocgfVlp45NseW5NN6l8PjPg+2+AMDx3VqbUJFzf6YXtc2hMm7opid7ip3bDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752865194; c=relaxed/simple;
	bh=CAnjOFpzzbaGMSv3ZcioNqoawCJCG6x3BugpJFlEt6Q=;
	h=To:Subject:From:Message-Id:Date; b=kvmRnuRnyqkIJlwjAfstBlPAVGpveecrtccj9FjZP7nCGuvhj+7Dyd4AzYs5RzmP00B+7b77E2np/vBAJMX9lkwmsoVcHHYYqZxBvZeh5tloqHM/dZo/HxrwZH/rmtVt27RAe/T9BDMCHWvwQdQU0atGreuvIDz2fPuxA165C00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UA738BZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UA738BZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE91C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752865193;
	bh=CAnjOFpzzbaGMSv3ZcioNqoawCJCG6x3BugpJFlEt6Q=;
	h=To:Subject:From:Date:From;
	b=UA738BZN+QaD2lksKvyx9yDQLlWZat0SjuJPGqOeyXmu0qxlzoDIqBHsaZKAdyNDj
	 nNc8Sd9JQR8WPZc8r2wQO/Oz4Tbi4xylgOxuhK3wdQfZE1uEr2bCxgA9woneocgn+S
	 9i3XOdOp2J10vuTFMAwunqx00T/RtOcSFaszqycpNfdRjXsZMzi23P5kSQa0gppJ2E
	 kmQZtb/V9iMd5emNj2Bpp4qujR7ecQQUH7QgYwLRH7guCOA3X33MkskdX1W+/I5B8z
	 Fb1yFuu8I77DEWvbt6tpE/8QqbBeYL9R4JcwrIS2i5aUizfIVblp5wgjatoWVieFs6
	 Odzs98x0lAmjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9836EC83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175286519358.29808.12187539869377862524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 482de4dc73dc484ae132c7a49f9aee5ed2fce5d65cbcdc5267dab6227ca8396e
Date: Fri, 18 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752865193
