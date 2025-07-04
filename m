Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2014E2FCE0A
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751635794; cv=none; b=B5BClnd8/DRU3wpbnz6lJfasXVjURCO7XerTtCnbydfs72RUx6s8/ApUKYY5KTqOV/76JBqbd4Q0+zoLU/wLsoUwjWoW7X1VsGLamLdujmUuOclGhjz2/Jp+6IHBbnR9mzT4lK2SQFHPNzuruItD2/52chD/HGz6HGbjmtwAP5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751635794; c=relaxed/simple;
	bh=TvecA1XtsalMFtWQHpHdMU6ojjac4AJzYC+ZQy+yFVE=;
	h=To:Subject:From:Message-Id:Date; b=hH86SmQqnCh5qog32ckr4aDjmgBRDI2TkyYnyeZZvimXoAf7O418i41oPEFYafxZ2td9FLfsJ75VYAt1r4InKKevmpLW9qikSuCgueQ6wYwpCUKoRNf8eNPIMYY77EAwRpfcAMHcDERRzzY6LvVqmEhlErYZPE2bvVunv32cqK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrUuUV7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrUuUV7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F48C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751635793;
	bh=TvecA1XtsalMFtWQHpHdMU6ojjac4AJzYC+ZQy+yFVE=;
	h=To:Subject:From:Date:From;
	b=BrUuUV7VaRvGJN60V76rnIWxi8R2RfLi05qVLkiZ6pJqePW6WgwFTIWlWKuUIlQtt
	 L0W0VH9fpCJOIzw3zRQHqRoT4uApOpBTGGpV9ATicGWh1bDSler+nkC4oNqw9EeAyC
	 G6v3IWXfJEUhjRRQvoHgQ41AJKrM2nN2s1ux7LvijtqK3H++ihISE3Ru5aUxpM4AuP
	 R19U7YoqUZhz7hGuIq1CayGkcWo3Zfu3+eTiWg9wEsO5ctjXCf8JZDPW9TpZueNFm9
	 E/BdEE3Oi1S2x8uAAq1DGUV0TFS0oAX2srDiNFCtI42f8eupnh2dyH/wWVCNDNpEV0
	 7psef4h2fIWMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F015C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175163579357.29131.13337235667589700296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bca525133c60da251bcdd07f42396ac844f4aa0b9c27a3668336bc1c6de384d
Date: Fri, 04 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751635793
