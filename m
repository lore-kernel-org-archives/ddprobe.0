Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D8C743A7FA
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786608034; cv=none; b=VqR81XAu+Y9+KcvL4VqqpXQxNmViJad96HSecgmq0UVNDVFKsXKb5//F0xFgPnAfDNRtuUn0kdaMPfvyLCzDByXWWMJ8jYB1kseSdWX+FiwZfOmLHEC0XB+zMBHFt5991CYNCfexSnHJ1Yr1Fc7SBko48pKg1lWz1JUCn4wlzlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786608034; c=relaxed/simple;
	bh=H7OWyzvUQ6qygLwYEsp2V5T0rNBlGGKvwU5ewkzHNgY=;
	h=To:Subject:From:Message-Id:Date; b=FFqzCWKk+t+t2pDYifNuf7MNaomSpx645qRqIjjwOREboVozVes9MYgD6hHsnzlPGwbCkgfVjxS81gwSLixozYTiVW/jDRz6EFbC6SxiXF+ggX5KwgFqa2vCd3UrBKgjbMjHQoNG9yOjzWIzjfcAidXu1ntEobhQoVTGiCl0gl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXT1grpr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXT1grpr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35D4C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786608033;
	bh=H7OWyzvUQ6qygLwYEsp2V5T0rNBlGGKvwU5ewkzHNgY=;
	h=To:Subject:From:Date:From;
	b=eXT1grprUm8WzNLoHMmlbGKI9IUVrG4cZ+lp617ktkkPI6lWVn0lERURInXh8mVXX
	 BnmQezgsIDWCpAgCSJgndavecK/bmLMNqlA4wxbouyXQrTwgLT7f8QPSmYIyE0yxwo
	 yUru/1Z8rF0s5zwEzcIz60gt/0fgIXNbbhG08Kr2HzCOR7jvwEg0btDKLqOZ4P/0Gp
	 Eu5w+edhToNu9PT2sMI+jUvFu7d93TFPHCd0zvnkTenSauN7UJTV89Fyx9vhnsNRgY
	 tr2f8h5vhBRpOjhWyulOX/ngyBVhF6DKwhOIcS8PBHRSUnvGru29XvGuAbpH8pWz7f
	 1Gg0i2mlW/z1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EEAC5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178660803368.15046.15048255311246567184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee446e6f0015e6c2023ba26cb759ccec3fcf70b3b28c77ac1df542615a5ac21
Date: Thu, 13 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786608033
