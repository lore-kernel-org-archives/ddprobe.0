Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842DA1F5825
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 00:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771548294; cv=none; b=ZRqc011L3XNZcHh6/ZbSTQDrzk8CacAv75WWEL+6tt1frRvMzuk2WydK3l/pHpLv52fPtkY6l6awBRrgHyINSEp9JFu+axDybi+PqHBza+fPAm31mGzH7SDwXjdlEhh0eJ7dQJtTaiSNnCq1x3HwVZZgCx7qbQo3ZVH727SoRCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771548294; c=relaxed/simple;
	bh=Hl+Pnh7ME477BjA7RQF3fo0sdgBLkj3WuPJE2EIfr0A=;
	h=To:Subject:From:Message-Id:Date; b=Mb7f1TznIATavv2FmYxe7rLnxMpjMuTtGN1Jbe4/5WHrLldt6dd4qZ1KNSzUqjEFafAJQo4SSPk+12qhM+i9Erm53EZ5hMttbFi0vx03KrdEr9CJBTP1NPIpk3q4gQa5qcV6HwoM/nP3GBRP8OEeEUMkIZsPLpngvEzFQrowPt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmSW5d1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmSW5d1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A6DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771548293;
	bh=Hl+Pnh7ME477BjA7RQF3fo0sdgBLkj3WuPJE2EIfr0A=;
	h=To:Subject:From:Date:From;
	b=YmSW5d1zMf4J5CBp0GBgDuf5zmylKcUAmeni1ojzA8L0QOHq5YN/pLJbVH5Cr+2Y/
	 grTZwEDI0uytceRTXLz2GqQoJElKz2QGo3VZcW+qdgGc35qYRP3mxJaiQag1Rbj385
	 GahAJk1jYHGXegHUgQ5UD8SgxXUrpsPQiH4pIg6uXiAMN0Tm6fOoSeKCFK/iavjZnG
	 ReTCiR5gdqwjs9weCEevJtADtmP0rAheludWGOgP4xpmC9+JMgJ7knK5qmzkGdLWW4
	 eRiIjf1YM4XZSKHjIm1bNYHEnBeyLJxkx2kso4ytWXQqXx5ACJMXhqqrA8oXj7egcg
	 aTiRJgx0LLi8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91794C531EA
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177154829358.11215.2075568893295202623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb08ad6934f44b69542dbbbcc5a730d26e954cfbfaef1ad20f6d782704f82a0
Date: Fri, 20 Feb 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771548293
