Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094D72C21DD
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766052834; cv=none; b=q5tGbIWWL/ZrJCUz3Q3gYDOyS77BmlsOX9QveEPHAul9zfJGtfNDo7fEDNgCpfyB2joGOQ0pw4mv4tcw/yAHHVv7EGTw6ChcGt+uHZolX5VOOgqhuQX9OT0i3hvoC3XFXk9sl3TPtaTrsgZtNFx3LRp+OyjlJIVROFMHFeIepQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766052834; c=relaxed/simple;
	bh=Fv6I4Zi6OGjNzCdfblRBzH4v+jJsyFFZoaUTjzjAmxA=;
	h=To:Subject:From:Message-Id:Date; b=QieBPTg8y5aRID+hJgeGPEDHAA4Q0oV9Gw2HfK4dnixI4vJ3wiwV28qRE0x0MM/kXbvUp44rkS4AQxo+5Rk6P/krNA94IDt7nmnCsYgGuibgxjPoSZo5N1FOKY5GrwzYL0SN3zianaZ7MbbtVH8/UReNMJ1OZ59FVe4NTUeAK2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rug9Z7rG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rug9Z7rG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C03C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766052833;
	bh=Fv6I4Zi6OGjNzCdfblRBzH4v+jJsyFFZoaUTjzjAmxA=;
	h=To:Subject:From:Date:From;
	b=Rug9Z7rGTvW1sUgf5Hgnua9VrTdXgmsr4zW5p1IXVwbNFwX5J/Q6+I8VrrUrcJ36U
	 Hdjg21CEVXTJSmvMczjRi1sd2EXGawyEd20c6HGVHkorhnA5fOa7O1qHEkDw7IM1HK
	 de50nydXq5hfaTF+MapJSsb9ieTY5gpRckmKeeV3dfRZX+z2/AhiQEGeshtsh0OYVj
	 isZ/DDoA8klMMFuJ+kpUlFBMAoeKeW98YBZXLFcnlkjiACwZP44Xo/z91LkpqqLZr1
	 Ohw8XCnFOniHtSDRRjYXL2NG0bPgoAcmk9yI78HvEkDJgPhX+V3/qvLvck2v0rNvjy
	 6Ia51k1vQUz0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BC7D6ACDC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176605283359.15433.10773523763789569476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 761c1be8809e5fe7393f14b8099474eaaf8fdfd59c92e19f402ba4b6e326b7bc
Date: Thu, 18 Dec 2025 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766052833
