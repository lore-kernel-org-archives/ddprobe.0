Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A2A2581
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750686594; cv=none; b=V13SR1jej3+kskOyMcOGYK7ejQyFLZbzXYD3xpHtppEKFCx3dpW1uZpTabLEp6q6pdgVP6eCTdVZRao3qxKhD6ugCFA0oUhCGvG5ZrQM/ASauapfZw18p3C9hnSDVvzNkMf1B5Yc3cxoYC2Q0Zajn+V8IKDztFF5NzjhSDG4TyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750686594; c=relaxed/simple;
	bh=BlTIx11H9dE0s2sKEBDJJNSztytWgjvCQtVXvB6uvNg=;
	h=To:Subject:From:Message-Id:Date; b=KbFwetllsHeKkffHVGKcCFJ+G4EGK1mEer7r2anKmk+q8QkFeMczx6n2hL+KS2Hs698jLw7LJPUXXkPZx/bzFnIn3tOTzwNhvaoKbprr0sJd6vZCoNvvuT/z/nj0pq+2D/6yIpGGFrZZOl+LztISjPQRIUD0OmVR7Np2kYOKIUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlXJU2rc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlXJU2rc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA33C4CEF2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750686593;
	bh=BlTIx11H9dE0s2sKEBDJJNSztytWgjvCQtVXvB6uvNg=;
	h=To:Subject:From:Date:From;
	b=WlXJU2rcpCBh+Y8Sjk+FhqlHzKSdpnlGqJUimheCCgYZk2uV4FrsK48iIBkA6Ak6O
	 +qW6cqupJ7X8HVS741ZZrbZmo6zjHr9qHzTJ82lw4AlHIu66MO4Xnv2JDsUHhtlo2w
	 yp+tYLCkdYoX/kMhlcC9jRduqkWP3i+/jua6Ppf97Z2QVK3YySSEbeXtji72WbGbnC
	 6opNSHkN92XF4dBg8FeVWmxlFkLHG2vXUYJe6vBzW33OqMRjuc8i8twARFmTVduJgq
	 KMjkM3Htb6wG++Nczn6o5iwjlhZhAJufU4+bsolb4ACEoaUWNn+oSS/xlIs0xPWUZg
	 JkQr4mysHFbaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F393C77B7F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175068659357.18218.2825385603759702722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4613cfe3fed15482697eba2d6e1ddde2c64c83588fad741dd3a529d62b90c05
Date: Mon, 23 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750686593
