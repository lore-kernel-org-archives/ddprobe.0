Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5B47B3E1
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741736334; cv=none; b=lG6Y+CPl1OhzWkHAkiFwwO1KRUmAyjnf5egVN0eXZb+bsb/hb6aPG2WUH+3Q7syR0YJr4IXeaZ6uh1GacODPNwXQPdRTya/yskxgymuoBTioFGwNlySwBjhDybTo6MLWEj1PuQV9J1ufNS0z0ILfAHIT+zely3GVJPkR9IhaHBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741736334; c=relaxed/simple;
	bh=ybqwnQJoOoOnz/NwmxvPXP0G+/If2AecyFqtTb0EW9w=;
	h=To:Subject:From:Message-Id:Date; b=ntp5AV2ebY2c1lDZNC4J3+MYELUnM6N3mfdrQUQSJFRD3Yw8UAo9LfxeGEa6tMRaYweIT39iiQ2IrkC4+DPhFAuUdeAB0Pknt3VAhByhEIP6KGaceXPZgzpP298LTs6S8oPukOHbhx29Zudo6OePLLyZg0VZkpvnB7OqXvuok1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BY7jCoHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BY7jCoHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72D8C4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741736333;
	bh=ybqwnQJoOoOnz/NwmxvPXP0G+/If2AecyFqtTb0EW9w=;
	h=To:Subject:From:Date:From;
	b=BY7jCoHZF7hj7OMZvd8uRQKFb64s8tm5W0VioYhmavUAwWk7sDt/RCGuwDazDqfGa
	 NN7wGAu9AVUkxmwQEOhvvFUvrnh1NWnLPp23VmmuWcn9CzdNzns4nZnfB2ss3wKtAu
	 WcCa/k/Ma6s6ziKUguyTSbonOEiFSwPOJ3JlJXbDjkLRYW+Xbryh2hLduyxZ7+edLF
	 Bu7rmQUBwZphKpEbb5WHUo3FFjpmV8FNuduyzH0jxohYita2gCEn46y5kD+UyvSNTs
	 bc67MxQdbXSP4U3HClp5DRKmLW7l0Qm02UDHo7uqQtIzX2ZR1Za9fcTRmUyrlPLtt4
	 pxWejI0c8cbLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0FB4C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174173633365.9023.18053385809725183004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58635c9668dfbde36500bb978fa7070d4ad2d580f9cb3fef16bc4dcba406d8f8
Date: Tue, 11 Mar 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741736333
