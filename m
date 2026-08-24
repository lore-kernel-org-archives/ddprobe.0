Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9DC194C96
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787603434; cv=none; b=OEGzxgBuh7f+gOuOvlZgxDAlD6297FCboo2GbuWm5tu56Ji/5JPWpKi8L2xRibgzj5IOTjlp5NZ15/gcWb6SYCRmhssMMFzJR9pZTHpJBIpigIo3gToVfryRaxg9mIiFW/1JRHZ8cVedsgRZNjh9v7Pl84jL0dvjttK+rHS5vVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787603434; c=relaxed/simple;
	bh=UhMuKBnwhvtpc80ymTA70G+oTMHa1bnYwrKm8x5QAtE=;
	h=To:Subject:From:Message-Id:Date; b=J8YoIfKQ8XK2DekYgK4wJhhABGsYBMljsTHeWr0vhkoX95nZEEe4EB5c7wFLJkD6WMDLs6+CuAj/dUoPnra2ixyW0TAg6xGiBbQ9OBJp9T9dSaVOBzN5SB3vhBREtoOcezoSRXndnkBpOHkYz4ojDr2wIB4RNTdvH7Ua4jIsnIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agjVvOqk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agjVvOqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD975C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787603433;
	bh=UhMuKBnwhvtpc80ymTA70G+oTMHa1bnYwrKm8x5QAtE=;
	h=To:Subject:From:Date:From;
	b=agjVvOqkCeSdfxPA4i1nYnNoNqzYJzAAdVyKyNCuibo62YM6aKo9Hfrt6qQFrq1UU
	 RBrO7HJhBimte6nisM/kc9H4LBX/pbA+VGIKKO7p2D7k+dvhpW2yv2wTG+Bp/rLZCK
	 9COUzjqPJveljnShAej28WulxRInwKQgak46Mx7aEZ3vl1ktzopCkQ5Ra4ks4FSHxM
	 OLPu85EnLr+bd4H9Os2gyxVFcKAaHflTdU/CEJiDlxXYGiwkvwK1+W/VQOzd+Utrux
	 9nYcP5kJz0TsIpYxVowTHF1TsMTr8xuhYk1nhkU/HHyjG3m9n9JdNiQlbQWI0/nn+p
	 70i4aHi1t40bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC2AC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178760343369.29663.10058292013245322454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1432945cf85db82d92f3f2a2698959394ba763e72d3b8d74f36f8aec04c50d5
Date: Mon, 24 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787603433
