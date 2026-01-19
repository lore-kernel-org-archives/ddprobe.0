Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1AEE2E888C
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768807434; cv=none; b=dWKmFkOwu1jdJ+lhSSa9cYLynzocI+d1N+Misu6P+++ss0K/ieO8Om2mI3rNykg8z5AsrIXLA5E0XX7MAX/aeBE9UfUa2BajwYp67ML6UPFLrTcT6tzi8IhI/24M7cOFdGF0krylVnSFIRyzPzFxtMg4sc/vMnIzCgE+5RzPiK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768807434; c=relaxed/simple;
	bh=d2S5RGLUgzc0Oh9ss9QQnmp4gXBD+9vnZ4eVfFwETqU=;
	h=To:Subject:From:Message-Id:Date; b=lyuCzdRjKvLXyUF23MvuZUuAxJGZf1AEioAd9cE5IdJR42PWOaFlWfwf6NqGkCwheD58ReR7aN6LsIEqcx0t41V9XK2chcNSzhIfKN6Mf6HaQysKbrjAcGHY2pVXm8m7Y5O0rYIdWlzCJ5C7RemNh95qG1ATm/z8chGvG8Z1Whc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRei22zA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRei22zA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8F7C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768807433;
	bh=d2S5RGLUgzc0Oh9ss9QQnmp4gXBD+9vnZ4eVfFwETqU=;
	h=To:Subject:From:Date:From;
	b=GRei22zA4HnE8nJrslEQ4XkYNLBUGcS16VUQYah/816mF+/lEkKm4zQedSnrjMR71
	 HNKkohoAIk4pj3dAEvU5MDZoFn2MSw5PUL07ZD0JBqw15OpT4BJFvudidgZ6cRzPD2
	 lKbY2kjiMv+xEAdmuULS3wuY3BS73Q2qw+y/BIFMQY1H52hDpgBHWrBcelkORmt7zV
	 vzTp3PoVqeXJ11d4zZxSqracRwRNVSiO2d7jPqd8ghfpV/gRoEwnlv63v7mGusvaD3
	 S6Hs5SnEjPdbK3xwZxh0Z77Bq4PR9CU1jKklKrQCTp5ok2aE+ANBvg8PXWJ04QQiUv
	 J53oYBcZPsHeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F781CA5FFB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176880743357.5288.6017080030299779032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8984211e472de2f47a382f95676a9c1b06ef6774508bc0a16d55e2cc41629f0
Date: Mon, 19 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768807433
