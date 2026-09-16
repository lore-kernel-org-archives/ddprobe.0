Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 784784B95C4
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789573234; cv=none; b=ZllAJokZjtwPEc3hRUVuCP8DJLNVAA7goFNSs8ygxGFl3bSfomPLcK85YL/6cqYq2W/mmQXAzTY09N7mTpaxENUDx0YlfpwgNB7vQMUX/cp1EJFHHT/9jlwOoQncJgkY8deUIZkaMff/EW7sILQ/10/jKciAE/YDF7UWKxdybFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789573234; c=relaxed/simple;
	bh=rmImrXG08O1KI4uOuajnvW3eVOMKh6fbCGzdoiobiaE=;
	h=To:Subject:From:Message-Id:Date; b=KhCyp3RsHATchPB+UyDzKE/tUAdEzDD4g4bqTwStW4+S8Cs5Qkyipdi9OfNEcwQHws+6mW++/TWuYORhPmXLl3px+H4CogZla1V9+vZiWTc7clgK6c14l+mcGdAsCD6qhKHCj06zb9gTNUz4p0L79HReyGj8CBOCuRnJQegM+7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmLzd7iP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmLzd7iP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E030FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789573233;
	bh=rmImrXG08O1KI4uOuajnvW3eVOMKh6fbCGzdoiobiaE=;
	h=To:Subject:From:Date:From;
	b=HmLzd7iPhXfjL9ozk7ccPARgX/g7EHdYppixl1w57IsD+eLuVKjlgOVZitUt7i3G9
	 fE7Vi0kuBwQoEJ+zg0ek3xlduLFVztpp20T1OdhVlya7rlFXHTHu4iNJoO0AgNuUoC
	 yTheyKdALiQxiAoHDOWm5HzohijKcfwZvN3zlSdtTyHD+2YUUAdS/3niehtAGOee9A
	 tTGR267GBOPiJ6ypdUyNO2lM9iCrOoVn5zchwGy2yCfI41fQTQqIRoCeXiaTa3fbzo
	 OhO/2PFGhrIeE8981PWvuC+174IRH2fPvpd0EZ+2dgNpGl7Iszv1rF16xfzvoTGMQQ
	 6QT8HV+MPBVhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2CCC982CC
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178957323375.8662.5366657634472224261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4d61f90a13ed4bc6584f4c7d7e7c05d9f11a6e8a57aee47b850a42f485f9813
Date: Wed, 16 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789573233
