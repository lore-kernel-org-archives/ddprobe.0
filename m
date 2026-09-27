Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B151C2AA
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790474434; cv=none; b=fi7luja2nUOa+8X6J3fmRZWyTAZui3EL4VDZiUYgaseHWGojdfO31SRoWBIQ/Q23G/8iH22qv9lgQsbW5xhjDhECH4zJD37c8U0iVOph7tjcY/VWC0AIsK+Yte/iAT/mabjuj0JkTX9wMuXRk6Nx3cQt8nb4MuziPQwgiqsPYYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790474434; c=relaxed/simple;
	bh=QEqfdQAal/bMXiTJPVwoiNO20LQrU7aPmPQQoxKAnW4=;
	h=To:Subject:From:Message-Id:Date; b=Ez4yWmhdT/6EruhHpCUL8JLPzZSsCRsTquZeRXgHEUNgpR6HVHSoUK11EIMTRMyh1CvRnH0yf76poJCrTUn6nEbGep0KcnADb4BI+ZC1W3Ia6mVLoJoh45v6PIsZ+kfQtXYPim7ecnkAY6rnmsV9PSklM8numriXDDrh+MYNdUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FllOphih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FllOphih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25D5C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790474433;
	bh=QEqfdQAal/bMXiTJPVwoiNO20LQrU7aPmPQQoxKAnW4=;
	h=To:Subject:From:Date:From;
	b=FllOphih8o/QRZEQOGmcEP5imhsuy241KH1CW0vQryS4PUG8K0GffQtlwRmGR2YzR
	 qBJeXW9nj7+y2qEH/5MEv6BmqAQ9bMU96uad+hjk8hFGXwbukVtAjw6I7PMNJK4Opn
	 R2X4oOpUoIjG56Vb9IZdF2/qHyG4BMAL7voNPQGJKznDwwZVwIK4AjgCrkEbSdi/BS
	 dQtIpQn+89sODh0Vdv9wCXIcA0BX7eOcSnNljncVnKNAiwtNLMSwtcZNsS5Fz7poqf
	 jsHSWJwnB7LPP/yJR/OH8dM7KQqoPMGLtCOOYXcbITy8+SPHuPRfDXa4l7aue1EsJx
	 d3qpO31r23s2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD84EC9832A
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179047443368.18350.7496683456328397243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89809dfcc1494819513b52da830d0ad069e8edd1f403f97b7a814f5510666e4e
Date: Sun, 27 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790474433
