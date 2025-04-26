Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A592C187
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745648394; cv=none; b=G9+WLVvY3giOiReo/31lqudtaLujytriCAXpoNwnwZquki+GXf+v3Rdwmvx01kjG6p/oxkRXVuW25dJCNz3phzyFQoOE97Sdt2OYYh3reNkfgtQCTOw6s5uI25BZOLtdASlVLhHAOWbMMcDzlVH7Cp4CK3GuD/54ije4jZ74mYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745648394; c=relaxed/simple;
	bh=u7fN7lmVHUbL1aJ5e4vhh8nW9Fpgmdi/hXtn+SKFqYw=;
	h=To:Subject:From:Message-Id:Date; b=R9MCXsnYTYPrC3IRT4I329lZMJI6P5baYzFVj+Qo9BMQsklsgwwAeE6m8eg1m4gSiEFl6Ax3Y8Hz8PAO67Xh3c13i+hhKL5wVroEAih8oFBJwUYqSRo+QDz3zIQr3dqujbGx4vT39gFSLgOH4LlP4cThN3OyA//pXEmDK7roG8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkQUQlcx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkQUQlcx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B45C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745648393;
	bh=u7fN7lmVHUbL1aJ5e4vhh8nW9Fpgmdi/hXtn+SKFqYw=;
	h=To:Subject:From:Date:From;
	b=kkQUQlcx9UElE0lbYTFgPVX9RV0itJF17aWDYP9OC0tVlnntdTq5X7UZPCL6zPCiv
	 z39GpnIcAqCb5hC6EGOOysZ1X14dBcZv91RoZcmmefYgFv+OEjWRDE3dgrfXwtEtSe
	 PQEPcY3ZUiGcUymijuMzDMU6KvBKQi4oANyDWAAOHPlYRmgvnoT+5/DMvKWfTr2yQ8
	 rDZw0+8SsndBsSNC57DhM8RjuVCG+w9GQ+VV8X0RspeuQEbUwZKY71no5OrTTmD0Is
	 paWJXMm+2wVb02zM/Bi5UgENUe2oWSIY9ENYQz5b9Yz2h8MWL0OJOIdFh0HjJfLRVa
	 8ocC8AkI4j+6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FA5C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174564839357.25737.5021929273477910491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d4ffeed371ef06ea5e86dab73060dd51c46b1da15b02d9237f039ad63addf5f
Date: Sat, 26 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745648393
