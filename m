Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61DB3477E4D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790379634; cv=none; b=U1vrbMGiEGF+Gabj2B3ULKO40tzctqGsGZPZHzqT55rXUt8yl14guegHBHo0rh4PCAhZHk9fUJ+7mLYMU4vgVGChQR3mCRy3slKCmyqq9JTMzZjd1ykPhrzGINbmectJyny+vwBk4jhyExCg9JGiK8diuvgJ89PpOaOfpItHTTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790379634; c=relaxed/simple;
	bh=hl/EV/JmWUpPqJjLpzd6CecYVIxdMBmswk7EqT6SAyU=;
	h=To:Subject:From:Message-Id:Date; b=dhUGGiCBnpXe5zbxxMuch2SCwwabMo6bNa49Dk/tI/cPFCIEEn1VgtcBIBOCPAyrmlL4YYIsM0z5MQ7HnKjQcSlnnIeGECVE6y87JK0uWUiOLhX/vX4njwDbp7vsliCK2q5oN6pqz2PiS/8S2dmsI/j+OiRodZZ0vkmNFqif6uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVaf+vsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVaf+vsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9A2C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790379633;
	bh=hl/EV/JmWUpPqJjLpzd6CecYVIxdMBmswk7EqT6SAyU=;
	h=To:Subject:From:Date:From;
	b=sVaf+vsYoB2VpF9hNXEewS+CI9IWWZtPd3y4nTLvQfRue+B/PL8NJNx2Q8yeNuHV7
	 +43LsOPASLH/x1RMM0vEHzjfy21w6v7qLUEqVD4CzBYQa8tRytzqZbJVm/0gGLpe7J
	 kJQYGbGh1fxhABkpi4b/Uk8PYhIPEAtp0t0sNOdtJ1ntvGqJQa52qOCL1Vqy0JsNAK
	 U5+rTH1XpukLHzD0WzzPZdNyvpwjt3jr0/Cxx56XrYItCgvNVPbE7hR5tOhnnhVjPG
	 717fYFE5mDeQqdtTRA3OOc4T1WvL7TMJ/CBL1VV4E/xUuCSfyprwOibB8PLvBOJtPt
	 TPi+pxmfHOF7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB432C9832A
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179037963369.1684.15615327662105706239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 886ee02927766a6304a51c8b397c75dc531f7ee71177cdb749682b7f745436b5
Date: Fri, 25 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790379633
