Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5A11C2D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722045354; cv=none; b=iHVvrYTvBoziZ0EfisSPAVX9WVvUeJUVNe2dVig+cLyE6A/SiuDLgiDjyiHcAP6kfUsC5GMNyEvagHUXWCqfOmaYf6jmFS0FKRoScgXm3aYWf4LPhOGavIAvWmDMkCkMeuG2t5kBP685LusRxld2IlLbgoD7rHZMjjLJibkLibA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722045354; c=relaxed/simple;
	bh=MPWPTtMxESSirJNTPuQtNNMKmQ1hYlAe9BFD3C+6teA=;
	h=To:Subject:From:Message-Id:Date; b=ZkoCyOrKG7pOjJmjAZrVqugx4UdpFOUtRJ8GfOt+73xztQ5Kz0u0321ncHi0XNFAXRKc9jFnH9iHU8T3L1ZNYaG2I+oKZiOAIC4cp2KubyRl/UuU+gcd5qt0Lto2Yx/fg52JSZApypu8JhfPZtdzURnWN6Q01Tkdk73fAKh/5sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOBwctl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOBwctl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA52DC32782
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722045353;
	bh=MPWPTtMxESSirJNTPuQtNNMKmQ1hYlAe9BFD3C+6teA=;
	h=To:Subject:From:Date:From;
	b=GOBwctl7mik0nvby4CwBOBz0KhTZrXwHeiez3ZQVA7qfvAEtVSe46qsXJyU5jMfJy
	 TP+8dvp/Iz1TJaf5ez3Kiucd503R10hi78qUfrs5/IiXZodRqWLGMMoKebQTU9QMoM
	 sPm7cs7ljmMSmmQo5oFss6gwS2+oGhJGcpOuhj8/v217ZM3Lhrf452LyV99HT3eAsy
	 EPjLVjzssrU8xM+SK01seLqUnXfx2ZOxun5b2E36TyPcVMszNRhGwCo9TzcMjGmC1B
	 bUDPbsnhPGDNIhu4blPYsTGVlMV8CHb35/K0hayeSWzBauv+yrf6Zk4Du2HMgL/oBO
	 mnvwrEPzbeQvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91865C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172204535358.9884.6589424848348847921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2017b9e44717f9c7f9ba0c14b651d0cd10f8a073dc6116ead60304d84e5dd60b
Date: Sat, 27 Jul 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722045353
