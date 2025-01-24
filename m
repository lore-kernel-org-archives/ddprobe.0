Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4205E23B0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737717954; cv=none; b=eUmXgJsyg6eUV1FtVYoFrgU1ADWaFAJFVca2x2oTq5QaGLBhGL1RJUF+zqz2mVAez64DAsuqqFe6rq1Ht7TdiQOxYoFrMdzrH9L1QtYZU5l5Ix1IVXPXa3tbp3sr6E9zZOgN+t4NHVF4zxMhgfj5UTtx8J5/OfFQXi83sRzxV/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737717954; c=relaxed/simple;
	bh=/37fwTVsIEV4/X7R3TpNFo4cahQD8v2sAMihy78Bscg=;
	h=To:Subject:From:Message-Id:Date; b=FZtJLNEdnW1a11uDo9TUReB73faB/yQ2OPUwOJYpha7S69Hwb1oiMYBEgIX8NgWzO3MtD1Y+Zy0YcEjhlvLHjqksfQ1rMZL67y6IDnNq1Fwdp7w2OyfuvKnrKqNRmgJzmKpaO7KvRakjvr9rDvrjeNItk5OBKIgH5MqF6MU8JQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6zAfQAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6zAfQAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55D6C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737717953;
	bh=/37fwTVsIEV4/X7R3TpNFo4cahQD8v2sAMihy78Bscg=;
	h=To:Subject:From:Date:From;
	b=K6zAfQAuDVOd24XxvqK7S9/UIjLVSsEQk7GGSalEQgwCGturr7ITQ7/SjIAHhdwhR
	 6bj9vBt0DAbH2GzEN3cOOpcppUnvs+5cJA9/jFrHJXjipt7AqbcJxTEbGwa2ZQXtBY
	 pztVWpyDU1VnB9kIdJr6EPmmEn1ZaxeHuysCMqD7WShqD+/M8ZZiTOwjd/CY/IG7mr
	 f4RsyVoQ1VtYSPVwTkdL9R7itKFEUl4/E65/yGCshnYX0ariopOQlXCljYUA1VuUeC
	 X5y1+KMNnNUkmWrduE/ZNWIzJ5gQugvP1u/fRjsuo9+CQFySgWKkqI0afIYMv/6mmd
	 MOHOf/XWpauDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9785CC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173771795360.15577.17452230072754105008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 952b6a379b7d6e90a139557bcb57f37eb1d13aaf1e168f27397ce41694b546ab
Date: Fri, 24 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737717953
