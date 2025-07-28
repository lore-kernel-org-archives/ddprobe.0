Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C98B029405
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753679993; cv=none; b=OjC8LPWgTbkLwOE4G+IoQjZV8f0axjtAWbG9J8zXB7nxXw9SixXrnmLpnKxOSn7t8Fe0+Nx5NUZ5nPvpxlyTR1ZYRRp/SNT8Sox5IjXMwR6ZHahmBWdv9GQDZQLW8UE2aaB9RftC8kTTT8gsY5xCahQvhKuaQBE0TUh2yEvux2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753679993; c=relaxed/simple;
	bh=/28iHTjFWIDGdIEZ9bwgaoY0buHjjb1U79dhTkqRsHg=;
	h=To:Subject:From:Message-Id:Date; b=WzYgMGRUrYLbwJd54dzqKcBap9/7hINQa8eDV6rkDwAHdGUu2TFnTIgTzdorisIXAB382GV/VVaN56mlRmbG/ns/P0AWJfKAV4dnvirCICI15m6qPphaJS3WxqsHy3VRFnkYXMirUh7VjJDPii80xU6mkhamJp/0gUO7VdxJphg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCO0JHQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCO0JHQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0B0C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753679993;
	bh=/28iHTjFWIDGdIEZ9bwgaoY0buHjjb1U79dhTkqRsHg=;
	h=To:Subject:From:Date:From;
	b=LCO0JHQH0iA/O+MyAyn1MvrfrprrsWtloSeMatiP9bDE2ind3z2+3F8LIVKFTlJ5Z
	 Po7cICFAFQ1rQTusCsPWnKXfc4qHgB8lUPw6IpN5hutC6znWclc7UsqvKT5FK7NNlr
	 AMNczVXCxG+ecJpD0B7f08kTi48otgPh1Zn7iRxIjIRsWhCfEKoigwyTtkH18oh+dQ
	 5YZ5IcW3BWUS58RAtv0mc05OnioOOdxbdgnTRWHMtLJxsXRe3rmY+LvMIKkhSVTB6H
	 Mdn/USXgrCHDA9gxDXWk5Pl5SPflVMH6JDkjKJ357RbU5TpjZC7z3CuKAHaKvMvVRy
	 KvitWc0SlEUHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD00C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175367999358.16879.5655437890323194585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac1e35f9325b9903635965597366bdf3f53c246d9a81f4b28829442960fd5a0
Date: Mon, 28 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753679993
