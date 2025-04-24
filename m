Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E502820D5
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745516994; cv=none; b=BCTFpcDZKH7Ua/edUbP1D7pLkDHYbCFO5ZUIHk+YW1Doh/puLuifsGhtpC/MtCR+k3bsN181OEAMUdvYzHwUzCrxszbe+cR7aHsse+6WBbs9d7G0tUgMgkJQuavV6z3wloiONdL+0M5pnKeZ9hxC2a5yTy0jDd/EgYXrZyINSVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745516994; c=relaxed/simple;
	bh=BenM8QYdHBCwZam1N/QvfSmsw8cqbpIX13p/JRn8Z0s=;
	h=To:Subject:From:Message-Id:Date; b=tQefXNo+FpRTGwWHI1+CH7XroODxwPDokmndfht5KNKj0KHl+Lg/2D3Ha2UAyhv77HbTZ+PmwVF8tiziFf++MzxyKN29i3hUsoATGNYxoRTlwXTK5sbZWI98mY3k4X3g8lfCGtSlsyQGWIS7fw3KXk3HmVXi3DMGFTYib4gGp1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9K+tw85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9K+tw85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60CAC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745516993;
	bh=BenM8QYdHBCwZam1N/QvfSmsw8cqbpIX13p/JRn8Z0s=;
	h=To:Subject:From:Date:From;
	b=f9K+tw85ETirD8Koa6WMYAuk5uh68s2jUv+HiQ4x3drVjAbLVNlbHJcjV6g7c7asY
	 zGa9EBIUgpnpY13Zy28EQ0cZnpmQDK9T3gZFKqu27AEQR8zVfk2O8MOnzdUVHtTOBn
	 TkIhh2SGX7LrS249nzcm9qnno8+ViU+QVa5DPhWZ88XDB5lQY90OLu7I4pQnELj9pq
	 +j/StDCOamBv5LEka+VhSS9+6XuAMzCg0uNY/DGzVlcvQKnbcTfR5ZtUnnCz7jXDIX
	 Vygyyh1UoZzSpUQ0WLpIBsD9xQYoUIAu+6o6LXvnvF4vUHuo/Thfxj99F7QaE+Oj2j
	 DKK0l2ss8qE1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EA0C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174551699357.12761.14183291419388446043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94de2016c2f089f8a02e33def4b40404f1c5b6f8067317cab57d66c16250546
Date: Thu, 24 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745516993
