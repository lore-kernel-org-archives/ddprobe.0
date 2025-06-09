Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B37220F2A
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749500394; cv=none; b=uDlebYGVPF/HgCLcEbTAh2amXdZM20v1H+kpv36wU+xUZf262x8GM1uuBbFFoQ6wciJhFcGObcxfcu2vHBQ3IVNnQw5f9khQSL2nU6RvkpsAzb5f8YjkH728c613YBgqVzwF4SV3/ep5IORKHD4yslvWQx1PHwx7/V+jhcKq+Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749500394; c=relaxed/simple;
	bh=gf91IlqYDeKBJyTvdGI+fhaOXT1ds5j7TxIto5dZmk0=;
	h=To:Subject:From:Message-Id:Date; b=EPCEfq6GgWQCdUNVGWydGoGLfH4eksdA5cDtjtRDBAyryvc8iNccXdxwAU/NQzlfjFFqm5dDLdsHjfby8pC49XaOfd6g71Q35DFta0lHuv0KuALnaVTNvQd5EqkHjXL2F5tjpGC49Tf9xNV5FvXbrDslGOfeIspLtuOePnwQlUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+cHO0Qd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+cHO0Qd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25FAC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749500393;
	bh=gf91IlqYDeKBJyTvdGI+fhaOXT1ds5j7TxIto5dZmk0=;
	h=To:Subject:From:Date:From;
	b=U+cHO0QdBa1ty2ooZldw4CfFF0NYaX2fhE4HW3A+LYcuT4HMK8CKH2qTdprHQDdHg
	 WQoGiyS1Er6r+q55d7tk8JzSHeVsOLjN1QWw76nM2yAjxyHEu9mzY8i2euzHnNZ8cM
	 RKvEQQghUmfDM5tY9CrCaVyrvLb+1vp1CED6El105FAScO2jNzzRP99qHOpcTbmQHu
	 YOsLqL2zp5cNgYVOfNipx0nzufEJTghKgtwY3ebr2Wh/jikev+dx6W9Z5uNBlDYbSU
	 YFxGWwc5aPn6Cbn27kkGGJt32zj0frDp58RhIvlrliY2RzpuYQO/1wnW50Fh4kL6J6
	 1cJARIkgoxUkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFD5C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174950039357.16083.11132481385064538188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000c25b8502a75f822abc9cae6ef58e040ab5338c985158926490c961b7b1e9c
Date: Mon, 09 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749500393
