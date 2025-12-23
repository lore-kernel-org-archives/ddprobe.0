Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C99823BCF7
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 01:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766454835; cv=none; b=MXGif3iJsJhmyamwEErA/vX5J6T18gu537YaUfpVBfQfJFXmo5k/6RVsGgnH1ASusN8eHmxhkVKzc6TuMlpWBpk36XqFElK/VB4gEXfbirdVZPhBUBZcA7Ww4S8ruqlzdJ9/ngGuOsxdmkMnS2MCZF0S+PZ3vAPW9QMzLVekCRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766454835; c=relaxed/simple;
	bh=29C1CpgBetuvxNILBtOW65avXzQ6wck6DhodAe5fHE4=;
	h=To:Subject:From:Message-Id:Date; b=VQZLW6WEgM8C9GQOZQcdC3vVG9XM95d/94SGk3JokKfuS1LvGrUVSEHMVWiE+c7RV0Ujmihb0G65SHQd8cnQzlLetRehSpLCWoPJbhDkX9+CoYdOQzV723zfR/kT8HzOerQE6A1iSQixybmbYQ6L+/mz/gqMB3kErrFpO8BOcKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zd/jHb6K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zd/jHb6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9252C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766454833;
	bh=29C1CpgBetuvxNILBtOW65avXzQ6wck6DhodAe5fHE4=;
	h=To:Subject:From:Date:From;
	b=Zd/jHb6K1RS17lCKS+oGT1ls3jmXdFXg5FQCSng3UJGJh7curmA397Cb9wnAJZ5xJ
	 IVQV6ZjsnNkQYXztJWR/85Jipo7f3C1FtCwhJtGl11F+DTgJR7Mz4x6+v+5R8OTJuY
	 cxAuN5arXzRpgLRbLWXvEpQk5ipksXoJ2w43wDSAoUopatbP6+zZQj8eS6c8NUaWNR
	 D9Lo/2SQ5tOTfjiRXGuDNsW/cSly8lccOEysasAYVpzf9ElmU12JtUZzUsZG0BcfOL
	 wzuf0ngMTMUrqpnkDOo6fm8b5lPZP2wYtXobAE4UsB/0BnTjbQNxyIcPJdHu/5Ir99
	 ieEERbjzvOSow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99414E6B261
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176645483359.23907.3945492216175664796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 530f0b965c11801d2852bb799f7d3436bcb21555cef09afff74019aec77ab70b
Date: Tue, 23 Dec 2025 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766454833
