Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3C8403E87
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 20:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780517674; cv=none; b=BtRFLQofiO6R3IKNWISFG+NYSPLdCb5jl4iIYeidEOxACW5Hu1I2Lm3zvD7Z9UIP7uNK4kW8BRuq+3EbSoMacvfEn6t1xscE+cCWtNMKUEv7qfbVs78C0cC6uAYMIKHN3o62HzJq0jPiR5X7q/Xm2HHAKwlu3jKks935jFDC+gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780517674; c=relaxed/simple;
	bh=osgHC4xlWbuR+d7xJjvT93mMQBWiqaYPtaKWDfMohss=;
	h=To:Subject:From:Message-Id:Date; b=iOr8yBHDNYEbUEBSM7hCGUhWfr1Grjemj6UDd7FXvzsoOE859y6zphNI6elL9DM8NzueovPykVchTuVmRuWqo2r25vr8nEJkMybYY2ni6jNkNTMYyJ5X3m/tgrMJRXp0Tv+kP7nbFYALTLqMWWsANGT4ty41WLnAR+bZ5pueSrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DordsMNv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DordsMNv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE942C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 20:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780517673;
	bh=osgHC4xlWbuR+d7xJjvT93mMQBWiqaYPtaKWDfMohss=;
	h=To:Subject:From:Date:From;
	b=DordsMNvqtcz5fd/JBke6n8hhWQp9Hbq3Qe1Mni1fFRuJFBGI5jejgfmKnkUuC3rd
	 HZcOlUkW9PwIgzemv9QezjNJCC4qx/iP27o8FnzvZjCFiAM+lX6OqBiJaZVtdWXFgL
	 rAIrsMPIJz+bazn5Or2fquJlccLZLig6DgqLWACvYJMpeIdlPwWkpnT7Zi82lId4ax
	 Y4DUlFmQmnmgqaELoyWYagKE5he0OZHhzRx/kqGaRS1id2J+dKeFQ3QNh14Ydyae90
	 z5cwRS2kuJNDIypkYVd8Cpih8sfugKIO9TpBwNbLGRvAJz4h13+IYktQ0rXCuQLyVd
	 RBoaO3qI188Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5FACD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 20:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178051767368.26372.10540625667453946646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a22d38f4a0c9ecdb3b98f3d24aeefddfcca85752d13c9788e60be976fbd46774
Date: Wed, 03 Jun 2026 20:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780517673
