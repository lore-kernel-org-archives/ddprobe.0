Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFE43D3B8
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749033594; cv=none; b=Q0ckrUpwOBYRYlxMPVgbxA0zibUJuVvPCiiod1C4Pn/1AE54F/q8J1Yp2ilMX3E450ZS3qxJrIplGGSys7+mJHALombB8XUBWKF4w0hwee/Zr1QYzQ/golGkWPpKE4lvSLE+u6z9SK7dyGemSK+t9pRB7ZZA+fSTvsCbPdbPUqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749033594; c=relaxed/simple;
	bh=u62Kub5bv8DXrzCFxKp3fJS3KZNkF343VWa18yUY8b0=;
	h=To:Subject:From:Message-Id:Date; b=Azt47rQQhdejlLsep4ngrt790BMypEeIZxYolxLdyQh9SBFbvvTE/B0OvomIWsL7qjN7Di26qQVlZB25ozufgL3m43d5vZoVOZ8oCt5PJm2R+ZFTUjnEYb7gKlXzQF3yG1p0DKUmtKrmziUuUkFN/bT0yeKgz02B6y/yfKtM6Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDQm2aOR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDQm2aOR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4690C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749033593;
	bh=u62Kub5bv8DXrzCFxKp3fJS3KZNkF343VWa18yUY8b0=;
	h=To:Subject:From:Date:From;
	b=sDQm2aORAwwY2pGtnwxSWiMYn3EiiLFaCUxQERM8EmUnEmEnX+WBaNUr4l+dua06g
	 ENZJfez+VqppGcYgvkPO2U6EzfsqgblLxqUyYqgB5pm+IYiNCYZowMljdef33O6J8w
	 zRSVbSqNwwp6PwppJROH4oUq2xr6rFwdsDczCDR9r9TztcGQh84IB3heVtqAp4DwFT
	 ttCEyzc2DvSeBdh9Pe9JsVGhjjtAOSynM04zxKkhc7X6QgXxnVGyhn4wmdl/URIrnv
	 7mKWJtyCrLUWPkeCioeFpZb4bFVO0ldJE7Jp3+xh+Wfjl5REwnjjXuvSVOcBUcIRlZ
	 08m/Kapkd2y6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90805C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174903359358.626.8307505819107198810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a9f4ec362727a2a75203806391a95bc9cb7a2c319f12c0ef210e42ef53e473a
Date: Wed, 04 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749033593
