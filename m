Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DA31DE887
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749243595; cv=none; b=WcuR1YFkqXB8bJ4zFJUoPHYVTBXGdi41oH7E8YnLdA13Wim5FDC673tsUd90zpEBUs3cungaZp2Z1sPu2ryUI3NuynHLrv/XPILPJefF/j+6yu7dqD+2dfp40lilBDQWh7FqU81Zu+1qNEq43QRvyEUVNpXNwdG8AT3O9vYNUlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749243595; c=relaxed/simple;
	bh=nPTP7K+uNrvrweD5bYsTzgjxnpybKZDWm/RllXGluH0=;
	h=To:Subject:From:Message-Id:Date; b=BDdUbpGtndeS70GpsrhE4qek4XMawdIr7BKJWnscCcYDrzCa1NJw9aXCzpgM8mL4TMUA4bwvN6vve6qo0yImYGcnhKZ7Envx105ZBak3c5NGi6dM/AYXKyVBRHykZSPCN3DT5Lcf/PUtxsVR9i6WDHj4+PES7bzcfEFBsuZQdsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAufuA1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAufuA1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FF7C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749243593;
	bh=nPTP7K+uNrvrweD5bYsTzgjxnpybKZDWm/RllXGluH0=;
	h=To:Subject:From:Date:From;
	b=CAufuA1LCU2HHZ4UUJqvEyl7WEQ3BdVxl+RwmusCuieywSYkg4ds6i9CxPdkanztf
	 SHGwj52TBYjoEipXKCT2sks46cFTf9neroOqHtASuEVClgs3JueCYlLje8oZSoVrXw
	 WGMp0vPTjw3QFauo1vGwS9ZwPcrquaLzfiRkEMOTMH20c2jJJmQGAg/3ElKObkFZL6
	 Jx/DfWS6e8E9CIrDshtbS7fmrXdgPSH9Hb+NnHi0fTeTKxnapCwQmgo/8k6rwvJo5I
	 UFi7IJk3kZjSQrilMHJtkhEsg8ry5jTBPVQI+5DEguyCNQJwJs4FyyWRAjmgud56ac
	 7l1HzAoIimJ2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C8C61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174924359358.1240.8479435474099061607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf71f100f5db0b1ee4061f7b62c4cc57fd656228af04d14c06bac5b8f36c4484
Date: Fri, 06 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749243593
