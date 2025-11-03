Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272DD34D3A5
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762150794; cv=none; b=qAfntZhSFsENh2XxOdKrfJc5Icuhk9gKJRXf6f9gYOOdUldu/fnDAO+kAZnPEukR1fejs12mEhGYs9V1Ds6Mze737hACB2ShwiPaL3KsM4mn/Kuh/Ez+P+snwzDjD/UoP1SJ4zHolMB71u1GZqEQSAFaBwvGO7z+1T/s0SWb/o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762150794; c=relaxed/simple;
	bh=V+C11EQpUDz+HCNCAOvK08dCJpRFRJebuX0fu84kp/c=;
	h=To:Subject:From:Message-Id:Date; b=RQhdbDwmjfwj0ttb9ZYlCdrSaJzjpIrMjC84objieqmiePipemKWZfKoT5DKt9YEU6aWV2AAmRNb4Evnbw1oP5J7DCusP+kdHDOkzfD0bfQ9B/Wa3G2vcoml0nXjWSdmwpKg3RLieGlc0aQ1UGnH3nXb14jSuL2D8mdhVgizgYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCeic1bY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCeic1bY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9E9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762150793;
	bh=V+C11EQpUDz+HCNCAOvK08dCJpRFRJebuX0fu84kp/c=;
	h=To:Subject:From:Date:From;
	b=fCeic1bYbYB8oLl6RPwRFYISjrpFuIG6hkKexHUSpluqNaiJGInC77qhFcrWldIVl
	 jxwL7BAXoNGEjLgw7OGvKa5mvpK+Ac6/qR3RyFRrG5CQ/KnWwJUgiHLVZgvcTdsPs5
	 ++JCNmlBGR/SHmz7OkhZNXLimjH07ilgJCPZM8Y1E/X+0Rv5ZgitxiR/YhC3z4Y6Sx
	 tLhufbj9aj1iZ6erBxvaBnNl8I5Eg3WWahHV5ZqAHcagHQSetHaGUtBx6OG8aNkgEm
	 uGvvcobDYBqW5NV5ZwTv3iZF/wgA/J68K6AxLxCBl708dXo4+Bkdy4K3R5B7C70PBa
	 EzZ0Odnoz0lGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9966ACCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176215079359.29876.7041497856240668598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e27ceca8da51f82e555c8d71f5ed9f83e1f2e8182412c1fc1015309c47599ac
Date: Mon, 03 Nov 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762150793
