Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E653EDABC
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 21:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773177894; cv=none; b=jjFg55UddVSTDRDNq9IOTCTHsbD32GcYkddR0BmYbf+8fNPvoUjhOgllS+UndqNne6iR+8ORzRErdTyreg1Hok87hKD7wr2UxKdy3R+Qxz2SN/m0W0glO9g9cheUrPPWB/yb26lKzULOr2my+DDgrYXE2DxpGnXvyV70saxFYi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773177894; c=relaxed/simple;
	bh=5lKG5dde0U4EUoMhxxWNIr5D5xiSOq+rerjEIVIitXg=;
	h=To:Subject:From:Message-Id:Date; b=XkTS4+36U2lYLtcPTkhi6oJNIDQkF2rKPzkMVzq5Mv4sA9nj+XB4/MQlUNSEUiJPpeEB+3K1uWtubgqXeNwV6ExYBArA3rdjYTGwkh4oSX+ma2uz0yUF79Vv++upwIBZNS12PqhwJdIfw7o9z3cC4+lFk7SeqmXvElOLquSV5Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UK3wApz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UK3wApz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A501BC19425
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773177893;
	bh=5lKG5dde0U4EUoMhxxWNIr5D5xiSOq+rerjEIVIitXg=;
	h=To:Subject:From:Date:From;
	b=UK3wApz9FEBotIT7JN5743W5tkc0JMrIHFa+G+0FuCf7PLGVO8WL5iI/womKbAUdG
	 +lRCEQXrCiRs3CkQ1HOEA4tFrxq85qOpCQngYyqbw68wAqtuYo4L2rTlrrFqm9oF1l
	 +qb/PHdMUXnBQnGKPVjIp5pu+Gj7pMjro51mOFZE0ou+rSQ6OvmCKjAihwlrVw6nKD
	 lazYQnpFgGWE9HpGLeXYNgj2mgfL7IQj4kSxqGYTy20CTgy95YAhLZxJ5vF1Tw2cS2
	 dORW0CbO0yb857mU2wb+oBtMNkMRGjDvG7RGOwzcnN1cducbGbVFoCk6u1I+UVmVcp
	 cRLSwdVusTDRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD3EB1076
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177317789358.1634.5941488663747939436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44316d0b309db63a002984f9c1f23e6c7f0e2404cecea50e3fc05a3fc92e8f8f
Date: Tue, 10 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773177893
