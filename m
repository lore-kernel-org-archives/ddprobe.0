Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C1323D7F0
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785517234; cv=none; b=hTUkhh8XCu0+ANfTrlUXabySBtxrqUoj+fj9EFWsZrvOa8K4zxit5ola49clxl89XQfYoNSzkwU6FKJdlgVUsdtxSKi+p3PjmnFJcAvjGvY28bJivvwL2xKB2NdyiyqTRhQkL0OQX9jCHQGHJf5QzW1VNBh1C+PpZjD8etQ75KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785517234; c=relaxed/simple;
	bh=8r8zsRPOjoT78EqJgLq1JBknOEvG+4mgClJUr+FHdN4=;
	h=To:Subject:From:Message-Id:Date; b=lQ2ptXnZOXljABTUS1/fu5UY97JY+N7E9xWiD6tEmFtIxh/QlE9A51x0sGbN0EhdQDYlJgKqdiQC0shKgV9b2fJKgwogCDKELcrmihyge3MVkQ3QzzJpporl65UBnoixkbHBTnxAOWAWzwdNSfBYcMJ4rcLndrSFApjgmhD/GKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvEeMLPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvEeMLPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1030C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785517233;
	bh=8r8zsRPOjoT78EqJgLq1JBknOEvG+4mgClJUr+FHdN4=;
	h=To:Subject:From:Date:From;
	b=jvEeMLPP52yJucGNnUmq5PRUfT3ykMBIcEimDa9RTDz3MklMa0h77PkatX17x06wa
	 l4QhEk1W7FzXN97MbCMLI8hFQ3y5bRTd01IQDecVgm3bz7wXkGbZ/r6oMFGV93+CXG
	 7GDHpgG/ymWbW89p1LVmt0qDnL3GQfm1PnIcFf1m8HH0Wj0a2OZOU2pjOsSZZ0Hyci
	 kIi0uvE7vk8ALqQcQM1vEnNH7UJc/HLjlajmIzR7jYgRzuhhiVdvnuL/7hZouwMRlJ
	 6cCAmXeb/qE2LkZWoKw0AcpWmQkT0c7fjSpwLGEqB+EuzSS5pdhtMvr/StumcT/nx2
	 iukEh0Ob4Nkvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD906C55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178551723368.10760.1377478221427067709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78d2251c4793b622f925aa6ea38226261a8c82b2e5cc7d5e0d12a8033c8a196
Date: Fri, 31 Jul 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785517233
