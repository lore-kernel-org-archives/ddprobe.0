Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE5F1FF7B4
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752939594; cv=none; b=OM+5x48Izr5XIDOUOxt9TBpTW8z3bptzIXGBruo3rBuNbrvikk/nj3Lgt17cv626z07z/Q430ygcUm9flW3ck0RV5j9CyQebdYSYAapJaltWcoCvsYBma0yzqPzGhR0sZUbXVU/d8Wws6GjXNEPKQo8VqCoq6jpiWUovr7M86+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752939594; c=relaxed/simple;
	bh=SkG/8b4osUEuaHafWG/yM4paP07OlkpOOVeVElgBTOY=;
	h=To:Subject:From:Message-Id:Date; b=krfipALzFLAvi6afYkWTuTpwAoZPzyXFFbWYM63F/tKi3pUsWcQXRQJabEpy3ODOT3r1IWRt6R9JRF2PGLXUPiR8hKx0wIlKUq0B6PfxnXGNO0LJBOipfZvriFSYymuWxm6Inrl1YZofYwJUk345T9pQucCF3CYAQvHzmsBJxFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bv0GYsri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bv0GYsri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A183FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752939593;
	bh=SkG/8b4osUEuaHafWG/yM4paP07OlkpOOVeVElgBTOY=;
	h=To:Subject:From:Date:From;
	b=Bv0GYsriHIQ9YM8jFRkE2zfnWd5NoBKNu+1/nD+JNGulZcfnPqIwWkwje1BTrsHpN
	 3vsaqQ5t7uU9HjdtFb3PTrW/tNKOeWU7TPdquAMFnGAQdFflnfw1Zq/vvdx7sNo0zH
	 PA2vxr7NGg+6X3gdj+/cLa4kHzE7FxgC51Vb3ZIT5Zi3vQ51fZXaFGnKWIj3Yl78FI
	 zFkholjWZaOg5o44V95PL6KpDz0kOi7NT8qnt2HTRp3T9e6NqLhqgMTcIvaigJsKLg
	 m7zHfBW/CuboNjmgwTN4J51Q25Q15yaiYXmbL7uxDg87oZJNkx3OoPnoY/RlpFp9dK
	 /GIGK3/bzM6+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7A7C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175293959357.6317.18391951309016781131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daebc82c9a3a97ee11cde601e45c678fc4757f31d7c61428afb59ad6fdb065c2
Date: Sat, 19 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752939593
