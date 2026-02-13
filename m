Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D641146B5
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770944093; cv=none; b=q99tCWo/FTD5OXrd5BVARB5/08Hd2LWp1l7zPrtk6DbT1t298tDMHXZnLZ3xJ1JMMxMZv63+XYpFF5akqJ1Jkjx6Lh+DEkk6Q7dpni6XlaL2EmK/NE4K7hOoUOPpw/zRHBQ/X5K/ZzIpahy+Mw4JfzvaCIDJj9/UDv1Q7RT5mj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770944093; c=relaxed/simple;
	bh=0OQIzDcBTzUcdLiGP388lFIpnKAjI2ikb15SPfNkSSU=;
	h=To:Subject:From:Message-Id:Date; b=HLZNKrBWFUPoJXTXsjBOlJ5UqtPQAejBF/U/OnleCHCN+761R9TKUVqOQwyaJ7S1f+bshyufpo7YsbiEX1Ywlmc5+W9wj1ObOAbSTR5RZC11LfLK3l1bzY+aGjhHwM0inB841vL4OXTEmZGVmjoP+pEA9c/V9i4doAIP/nR4nGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYwcIHrr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYwcIHrr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B87C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770944093;
	bh=0OQIzDcBTzUcdLiGP388lFIpnKAjI2ikb15SPfNkSSU=;
	h=To:Subject:From:Date:From;
	b=IYwcIHrr9DMrx8VUCIRcUvY9CCSOgb3guJsjPoaX/Q2p1WIhy4cXJtkw75BMpXfOu
	 67tL1ESvy0yXepNE2vkVMQNzN07kP/fyYJB/55h2lQzl6GNpNhSyA9PAaWCeNw4wpW
	 s34077pVJW6Tjqs3JCH4woD/F5y9cnzAbcLOoQs7L2aFAhJ5wvs7GO6i+/gZh//BsW
	 Rg6oO1cfIvUDdg94vnAkzh4VFe8c/Th++IWqjOg+M73j0Q6Lk4pKPAdUirl+pdYaUg
	 Q5YbRQDoBO0xuPUzQw1kdJ0JS3dD+s3jANmtPjdSbkQTBl2Gm7l+n2cAUjMYrCJPfx
	 bWc1Hq4nIgTUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E01EEA849
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177094409359.8278.3181737178652904541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d61fb2ef74df9283795d476b8428a6d5f0a87cf476b0c820685a9173271a70dd
Date: Fri, 13 Feb 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770944093
