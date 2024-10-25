Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEC8186E5F
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729887354; cv=none; b=b3TIuoJEO8gcdfc1MvBGzOha4Yr8LisQyuVHZnB+y40Zvy6GH2WUypP2NSwC98EYsWpWwisXXbXpqYetzFc2VXCKD7tEXw6TM74rKopbYVBCiErsuZXtPFNj/jZ90i+0ARDfcCP+asL1QcHie4h6+1oW442BaswU/GyWErQ+28g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729887354; c=relaxed/simple;
	bh=2s4I+xbRL7EWZe6NBJkz4GWGHGPxOIiOJjJWEG3exM8=;
	h=To:Subject:From:Message-Id:Date; b=bik4066n+Z3NCK37aoFgSHsAj+4JvfmU4SkRPo4nuyDg9qRhMaEPiYPMxw85L1b51g2bdyntvI+tumADwekNKV/FEcmHHHAaJBSNbU7/QkszRcyOhA88E0waW0Ybgr6cudWT4dAs5DjGO8VLfUYL2pQxLEBwT7pNuSof9HzPFDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htBmuF6J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htBmuF6J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F02C4CECC
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729887353;
	bh=2s4I+xbRL7EWZe6NBJkz4GWGHGPxOIiOJjJWEG3exM8=;
	h=To:Subject:From:Date:From;
	b=htBmuF6JAXphfB2JKEpVDKTBv041C5FUojmbFQ8S0JMeXiA0qCS7WA18LueXfDaDL
	 aTk8ybE76aqa1t+fX4jNSxgqlrS1mGMd2Kvm+7RlEF9WbF07RvLIO1zV65FjSXLKCb
	 Zocbm87mI0IhN7c0bap2fHc6J6FdGhTbeF1YMgpNeaLewzmN0iz5nIiE3lv6qk0R/5
	 bJQmw/gdmqWaoXBQSVcBxBhwljTOnhJ3KHSnUpdp6j2Y5onfFK8TwcLnbGGyx7LY+y
	 HO5heons9F80Ydw0kWzKuASRaxoLFo/YUvI6FigFjaeZo/up0aNCTurDL0bT3PCy8g
	 AOLys0b2+eZNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97214D149EE
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172988735361.24561.512544440307590499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba13061c0e2c4b5938391c25a0e4b3490d2abc3338a34de40517c20a2402acc0
Date: Fri, 25 Oct 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729887353
