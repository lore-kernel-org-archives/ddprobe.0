Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141191F5842
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753687794; cv=none; b=pz7u4ES5X2wzwlMzrhKVo1THxaLdNgggeieQTSWQs1m1NYWNdE7V2NmfkbaKaEVe+zf0BowTZfHAsgw7FRS7sXLpQO5SKXaogvpp7ZIFr9oYccuAjPFpbtNelCrVTc7MHZas+xmpGBzVHLTvuYXKf4rThg0dNRXs29X9/1PmQUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753687794; c=relaxed/simple;
	bh=2ytDQXxFPhDZzPMV2ekAepljH2z6BTz0fVK4qL46/+E=;
	h=To:Subject:From:Message-Id:Date; b=OKtbIG5JL7j/Z4fa/3rG/9Gq94MTOXAkef+TxBokigE6+QeDEKLFzSVnp+T9A11xLSJMUew9baEdGEaOL1wclhKiUHAlg2LiG3DPom3fg6ICR/VngnWQ44qHaOKkL6ppGXQaoyDi5tSeJ9I61DNzFqPtixjkASKnRL1XGWyCzhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOHubOEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOHubOEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA49C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753687793;
	bh=2ytDQXxFPhDZzPMV2ekAepljH2z6BTz0fVK4qL46/+E=;
	h=To:Subject:From:Date:From;
	b=nOHubOEK4QLUD20tFD8+F9/sSpZV3duEgFbIWUlvLFtWsEXN20Yp6fSrlxQ5koI2P
	 kfOvmmgZHcHxy4dFYLcc76VxNOqkGSyXSFnLwZA7VFJQ2V79X4rPwYHC7lwA8C5CZU
	 hiEuS/83FfFFpV5zFzOVYtWycP0Hjo+wH6SxH9MmP2u1kBR0wGxOmtusqEKhBnxMqH
	 HbGV6mlUsB0hp5Az7Gg1Cm+Q9Ij63JpRW9Yolk+5agEGSdRPA9wFX4AbCn3O8hI1n3
	 dCmGeZgFtiT1Y7vKZBCRA2OT/Q8E9rHlY53zFYDcl9/8nYdEtaQ5fjqRJ8haHnQJa2
	 3a7a/TeZce0pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED0C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175368779358.14932.2064819510508558603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ec509d704ed3f1617fdd98be4092bb4c87225f218abb01b6bf1c55189c5d8d
Date: Mon, 28 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753687793
