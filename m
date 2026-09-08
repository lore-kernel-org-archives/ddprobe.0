Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A20F2C0269
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 15:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788882035; cv=none; b=ROVHi6bgKgbkudtN3891yLOi7sjZSAis7ejAToDC9t5TlvHEYo49s5+uib7JBEzerKh/22yeZTBBAqi8m415sT0V+O/KZyV9d2bzWrK6Wq/ZKmN9Hl038Hm77RrlURscGE50ggXj+ZoMu7Q0HhIL8tY7iPjEUVPDGFm0DAhJmWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788882035; c=relaxed/simple;
	bh=Dzh9xs4Cx57f0DrwJSKjeQ6jWhjPy2CTPGFlhlHP9c4=;
	h=To:Subject:From:Message-Id:Date; b=fEYK5Mv6X5nmSdHGdPNuZTfosXxpnEhbYFoDsCcr4bmQjNuZTdhYc2OWglYq6HnCLKGC/7Cf4kWmLw1l1APmfrF9Q6yimiqNpbaoD/03Eg9vEvoblsat93awVA/2FAnXxkqFjpNedQB64+yfs0nxHNFtdjTA0Wf6VMPMaZEWLds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNTP/rP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNTP/rP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3CBC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788882033;
	bh=Dzh9xs4Cx57f0DrwJSKjeQ6jWhjPy2CTPGFlhlHP9c4=;
	h=To:Subject:From:Date:From;
	b=JNTP/rP3FL9E7SBHi+dwqQEpX7dfxT5/C44keXj7ro7YvcpzUTasCVLj6YB12eT1D
	 y1IgxuU5pEn+AVgZg2LyqDFrVmc1gdJBe/yf/pshSUIh5BIgATOgy6QC8VQfYzJodn
	 SHMksMasL/WBu8lbIzjcJhhZ1IfkkBnQD6e9usuT1LVMjGYZsL8RDt0pD0uoItREMX
	 8jJTvQnojcd5BR3Lg8ksNUCRhwh1zfY209ULxvARDVVfV3ZFgEopSUrqw/YZLsieD/
	 CfG2S8ZhdPquWnspNVNnja2JX2lrOqG0kUd0vfKNvk4qJTz1zU67g6rrMiM04d2ndd
	 Bafzv2wEDlNoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD010C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178888203369.9218.8520581706000179366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d57deb0e587fcbdc8c8441ff199f16653dffa50491a200984de93247519b217
Date: Tue, 08 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788882033
