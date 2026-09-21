Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CB2845D914
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789980034; cv=none; b=Tn4cbZObFyZmxc27iCjCN5aRHkgk8tjFYhvnCXqIG2Cpad/k2NEetNY2izqZR05ihN2ym0aRQi4RvcJykW6jV/l+69AYsV7cjQ4Q3QLe85+LvMNAjnbEzkhCBUyi9O/tEVraCuQtlJVVbWFyb+66fkaR119iC3g6z4nF3bFWE1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789980034; c=relaxed/simple;
	bh=aN9OPKopI3cLB+gBiOXLXQewkBZ8ELhfftNZibaVyV0=;
	h=To:Subject:From:Message-Id:Date; b=ihJMtz9tT/b8z//XSReoH05C+k/k2GnYX7lSw4/PzWHcQsxjWjdE1f63600Mpl/Kv03lzCbfJV+ITyMnI5ArAIXEpUS/mduDUsUBYcji/JMtHn+c7+Uriv7D9CaABzsWwcB7/X/af7dl5o0rkPBnxAQQ2p5aaaAYOWOp1+kaSME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucZKAsGX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucZKAsGX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3860C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789980033;
	bh=aN9OPKopI3cLB+gBiOXLXQewkBZ8ELhfftNZibaVyV0=;
	h=To:Subject:From:Date:From;
	b=ucZKAsGXqEZdni21p83ynZg703FPW2e/Ls0FG+byyOAl2QN8uoj5VIbXTUvxXzS7I
	 YQakXRtIlzLrHoQGhHeQQM/oeL7egXkG8avdxspzY1hWkqsNpQHU7J29I6aVnJRbM4
	 8vWmpLgcizXYhLyOw9R78Xr+KoVU9YXyxASbkQufTa+FXS8iw6L4LOjTkT81/4tRMU
	 5/zXctVcBglVmtW7giVmSYpxNhDqbpdjSVR0RYDDNfY0DOs5KRddx2hd48WMwe6U3J
	 MDus9HnnRalItACMORQ/C2mp7TwGVBMZGa9vhoaf3SQhQCED3sehR+p5SksShsgYju
	 V0vdYgq/aJoRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA9FC982DE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178998003369.24625.7112428594425180650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb085d2596a10ccc4c7028da92c74e137f579c79da3d0588a201e8e35f2a6e9c
Date: Mon, 21 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789980033
