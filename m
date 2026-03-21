Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C889615CD7E
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774059293; cv=none; b=aOV8HgEGBNeWpClCWSQeE82a1uMXbSrbbLi0TwL0rOBYkcFtFRZaGGQNxNVhBU232skMj69JjO5G5pqZsZ8CfsSKCasp2OVIRcM/pnMgtzSLK1HkNe3wvnk1+njUpN2vRkI9fW7nAAN0FpgpbFH1izbYSS7uKVvYcCiN9jeiYkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774059293; c=relaxed/simple;
	bh=b4zWOj79JTJiCi88HR57C9VD3dJ0fMM6PDw6r64fxjc=;
	h=To:Subject:From:Message-Id:Date; b=Jm+7RJPLYgvBnoUR6ZDyNQNfupgWqevG7gDFrhVZJbDgbWeLMjeGJUJ1HJL7qTOOa4c8SueNsMHJtfARxiI7rJKf3YNCM07SzkT/uI0CZel1oKIWPKCgZ3rF/QhMLcOtbH8GxVFj8RxN+X8A91hRJzqnrZJTFULZXW390qRuLsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEl5YL61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEl5YL61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31ACC2BCAF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774059293;
	bh=b4zWOj79JTJiCi88HR57C9VD3dJ0fMM6PDw6r64fxjc=;
	h=To:Subject:From:Date:From;
	b=CEl5YL61dfWaSeGjJC1hItij/2KyTtAuBS6Eu8xQSiULrvyTb4k3fot4VGEH9etDT
	 SIzZR8aB8ZwgO8UpIs3Br9wdVWUh52iLmx/wcmfl3TfjMXpZXm5NPMmrmMw1paORGo
	 ys6Bjbjtwu76J55QfmnvakLAfo5k/zIKXVna0V8p98XA/OZMZqRnS/zgXDwoSHvC97
	 zVojlRA/atRmYw5j2eAeBqiYLdgYnvsAKP1CMqny5UuLDZ0tkih75z4gbo3Pd1GK3p
	 +Y3t3AhLfu92QF9o/jN6ARKgIV3pjHlcOLTXiU1Hp4HJlkCdPruEFzAbdpt+AmxmTe
	 XiDkV5PsibUdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B4A1099B5C
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177405929357.19932.7230470563523057151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ede58f6595172425161d97dc7350ad6fc7519aa6b8eebdc60f4b801f60d409
Date: Sat, 21 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774059293
