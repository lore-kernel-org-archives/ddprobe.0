Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40748136E30
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723824954; cv=none; b=LCqpSWmogFmUEuWIqzUK74bHqI6BMNlIUh9s179IdOOUCShmu6qIJPzv3TjDwZcxsqEwvpV2EAdUg03q8Ki341j147TPW4wyc3/N6mWBu27qVXok61xcSwBprDuwa1X2Azlq/6dHJeMX4KSrkCoREIxoR8hZLTvj+akfuI3zfq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723824954; c=relaxed/simple;
	bh=un8M4PxFgaUaSZ2FElPiWuHXkfPZ3hA8c6YmcrDePuI=;
	h=To:Subject:From:Message-Id:Date; b=EKsx0kaN44QZVbephudB5kKQeB0SqzlyciGjCNdHtudEtBcZyvhAeHhAusAAJGzG15q3wUBU4e/mM7CMF2RRDWF5Cu/DiC5oUPmSwH5GnKlmj+kb9t4wpQcMzVcfWQeFSs6QxvuYJK07MzyUu2dVzwQ1CJcbt7nRVU2/VuGfThg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKP2bbTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QKP2bbTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9838C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723824953;
	bh=un8M4PxFgaUaSZ2FElPiWuHXkfPZ3hA8c6YmcrDePuI=;
	h=To:Subject:From:Date:From;
	b=QKP2bbTPXh35Hvkw0cgzMclNbVpWDgZ2Pf5Ycm2b41QIlZ019scAaQLjOIcvdhRWS
	 u/BmuUs3N+PxwgVch06NZJlVz05freo8IFtW4UdWS+LqLlP1fMfzfeZHaNJWECRwaT
	 DpV2RuNl9zuQmns8bSMr3WcykKXh/JCcgPLKu9+yt7LDW9X2+KBdtPmTMavIQjei+l
	 SY9Zr0Y9hfk3v3SO1M1O786jIDRI3e4gHrriKPFpLmSPT+2LzK3j8aZXoEWhDJBt8D
	 1mHpVvg80Rpb3qaV7IpcvIRpD6ZClepD1QieJLuCtqrMjdISpN/rLTKntIFpwCCDZ5
	 nIUK3h84xgh6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EC0C531DC
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172382495360.7610.984821049790188585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e8e18227c118c9f90d1afe953ffe29769eff3765070d0b4cac041024046dc36
Date: Fri, 16 Aug 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723824953
