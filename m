Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 016AB2C3768
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774245294; cv=none; b=TIn+wobAU88/v5odijD9+gd7ddY8AvrO/WLz9Z2Jm+aWngR5ra1h0B88MFwWbfbUgnj55jYcd9dHY7czUKce1Vz4fJCTBVVAo4WfGDZYQMgrvO+754RHEP3N0oFZZMjOvrXhAanxDIPPf7PJPrCpu1p/8rlNMTTZUYRP1eJxpB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774245294; c=relaxed/simple;
	bh=1M+EKnM7e74/sN2ZTsOrEIjqnslY4atsMJZXaJ6eBB8=;
	h=To:Subject:From:Message-Id:Date; b=lyZEX8iS+FNrcMeVqDk+ot2b87dtZ8hcO7Y6An0OVPwpxwr19X/maIWrFJfOB17PStUN9i9CR7YO9u9n2YvNFTN442sB8r9I72dBb1+V7rwBJV+ITxo+j70z1glz63AfaLVOmcF/YRyaG9iA96U02x/Qm6lfJ+zWZvQQDB1lnC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tK2givsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tK2givsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC582C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774245293;
	bh=1M+EKnM7e74/sN2ZTsOrEIjqnslY4atsMJZXaJ6eBB8=;
	h=To:Subject:From:Date:From;
	b=tK2givsSwgptRBM63SRJkqYLmm2zYAh1mhCrdl+wT3NZVXqeb2oKWsBE91koKYNj4
	 /CcaTvMhpVGTMdpKOetojqC0KsoVbR3aFfbx4mavCq6He7rlyCr/3ZEhwdaYaRR9mJ
	 OpLa6oXU2u1i/vd3tk+2TuH4MnkhzVXt5Yt3zIMMpRUhRD+QtU1wAE0OhSq03p/Lc5
	 oWziuS5w3ExJepy8J40zgLFuU0JDEDz6zGBBOtpmWRbFeubw5dvgke5/IYr3C2871+
	 gKmv6pl+vFAheiTGqovvTmrW+1kj1uuydLbe9qltyUIiO6kXOMzbyRcpl2r5mWYAWY
	 AHJDXBZANEWBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9873AD58CD6
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177424529361.4332.11339227357265771310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7d348e161c24880ac7b97467ea5b7d7a16be0f87883b2696043c51725b43254
Date: Mon, 23 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774245293
