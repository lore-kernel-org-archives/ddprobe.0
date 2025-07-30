Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E292D29344F
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753903194; cv=none; b=OjfMrvc5eZCKjsaZ8NmCjcigra36qXap3gxJPv0R4QBvMpTniK2zBc1X62HSBIJG0oxeoueJ7eroT+5PVwwsjplTeWDaNSRi3+5NeXYLRdyC0J4PRrvgL6J/g5ycbQy+5idLkrDPFSaP3Axk3UbtET8TyWkGnBBhwY/ZhWiPyeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753903194; c=relaxed/simple;
	bh=h7JwUVOrEIubqgcyu+QN3W6AQl70t4B1xQJB7wKJv4A=;
	h=To:Subject:From:Message-Id:Date; b=kOrFtLxbR3+NLuKXETSTliNXyGLoGt2Z5M0kMulZC6oq9qtUhmzjGTqYs37od557r+A695SXszqzVHjGBPBD91FhhVbzjS6UfThS4/C5mWjr/O405u6vH0vg4V/rgdVu9giFus9hQmRujVYBiw/uKiN+KJ4nBhQX//sLw88U7iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDYf40Xe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDYf40Xe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFA9C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753903193;
	bh=h7JwUVOrEIubqgcyu+QN3W6AQl70t4B1xQJB7wKJv4A=;
	h=To:Subject:From:Date:From;
	b=sDYf40Xey9JGt+65H+ptB12pepOe8UT2+EY5eKoVkpCjyyYC6U88zGFvZsbwf+D6M
	 K+iM3QitTtgBg81JF45Ku5YmFS2G019WmhEOQijQ6GVXx6kPxQZaNGYOdjsjR94clk
	 6S3wb6fjojxYDH/s7mjiqAgGOi2dpFt1F6An17bQ9suD1ZbrTJkjsn0Idtrc81mrHj
	 qW5rq5TNE24sbA5I2bCVZ0RhIUbuPBwCyLt+u5Zn0L4BA8gw5NNYB7wKdAirrrGwrT
	 mVZjhAI/jlNNFzm0dhFu7VYAz89g5eQ36C0ZNO2qtII62/IGSe83ef5K7SwPQYDfrZ
	 umGgRV0JpGsEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98268C83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175390319361.32708.18053155984371197931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3261c4e84e6344b663d4165800d2222b5a91823cc2869734720e4f69b65f49ac
Date: Wed, 30 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753903193
