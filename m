Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1036C28CF6F
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771364094; cv=none; b=eU73xkc9G1VB3hWbh1cHZ+MMoRwMBI3Z0PvhEuSeWXxcK6B976cULufCbSl2jEb6aRVG766qW0XJwmBjjeFXaIpuSNL4wiG9VCk/DNc0SK2ZnDzwX3CE0zLywXOWGP9WIiq7TYwULSR5d19j/SdvCyCoJpMUrsukP2GoonpUiWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771364094; c=relaxed/simple;
	bh=a72zxGffiA5lxl1hMn6t0dufnJOgYN1hbqyG1V3WSXc=;
	h=To:Subject:From:Message-Id:Date; b=WsOoaogUNFEFVfhgfcvQid/yIdn4XtbCNx8xjIiL13KIL8SDUOYfMHHzbhDQk+GD7FVBnRKaIFC856yE+DDjIHcU8lyHye3ZA2Vxk7ba6aiJ1PH4F2TtW1BENkOKVl5/Rt1Yq1wTqrlpmgZ03JacZqGgg7ugzQKKF9Z8nSz8C1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0g4p8jW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0g4p8jW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A585BC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771364093;
	bh=a72zxGffiA5lxl1hMn6t0dufnJOgYN1hbqyG1V3WSXc=;
	h=To:Subject:From:Date:From;
	b=f0g4p8jWuYXhDULJJ2DXLzFExhAR6jcA5vhwo/lj1ZUhP0+onhAMWxg6dHD7jXj/V
	 IRylxLBz7eaUzeK5iyUXvJTNsDdPhh4uIIor1G/bWU7q5g/4Dte8LmoR6D8GdnFaF9
	 HcR1Tm3DhaBv1EY2ZPLvWoFuFR/T94viZMlFM13IPps/7nlshChpHfMot2n7F9FVCG
	 khd7pkaRkKHXD3swBpmKN4rivuzMfYPkSf6TDSaLXCuPdfv8TWzyyPvWGZTV8EvUE4
	 JhfZ9PzUt4Rjzkf5wn0rvenEMCFEBe30lCqgt+NBVokDtg5ClnZvnarpYpOxh1d1hX
	 y4S1/j9igTjfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D7EE9A03E
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177136409359.5585.15557059236575440732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2696298c564ce14d45f74d32ead5bcc2f08f2c94332bb6d49927a950a2fe7d46
Date: Tue, 17 Feb 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771364093
