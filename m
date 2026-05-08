Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3116E2C0303
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778213254; cv=none; b=uTkxGST5vfFZtuCQSo/zAll2Bnob4O2gB6N6RDyuuOpimmb7i2v+Dj4H9pXfaR3WULZ2KotZF1KDEsCfXijnhmWmhHz/6Nol0oiwQfOMQQblCi7JlO+J2Blz+vdbZp69xCjY0Iujsjx/z53dHPskcN/l9X3kYCYHSDuF3ji6NBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778213254; c=relaxed/simple;
	bh=czlX9IdC8q4pNPdjN3csoYbP0Uw+xH+9rEvVEYHV3+k=;
	h=To:Subject:From:Message-Id:Date; b=J2QKXqv3ww4x9pnFKgKoMZ/b4Voo7xu9MnY+nDqpb9mxlVYbDIqHjoIbY47JkT8y5nnddvac0GuZbfNnkeUZw5kttJBXSUSSaQLNWT4M0pfCJQJmrAjTEnMfl/DOE+EaAEqxJO3zPeEhisV7M4ULRsPJ2qhpa2dUz6M98VqO7ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nK1R/NsG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nK1R/NsG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFFEC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778213253;
	bh=czlX9IdC8q4pNPdjN3csoYbP0Uw+xH+9rEvVEYHV3+k=;
	h=To:Subject:From:Date:From;
	b=nK1R/NsGbSGnHv1iyo7E2xbV1Gx/cv5SotTXtFDhej+plkBdCsLk9gx70i6uqQkCN
	 +wzvFwt+7EuKbUs/OzxDEoxIFw1/PCyxslQRHxWyb9377bzrri2saLA62gLDWlnzAO
	 ftoO2w9eDp1m4eaMG08aBPpPTxo+iy643LdIsa1jrJLxwJNC+MnL9KGLDvKkAYibZ4
	 QjMGIanIrzeAMUaYMq08I6csoXTJsQc5JkjwmqaVYBpdndGo1pb+onmFkDaRtPiIdj
	 X50mQ5/l/Iq1ed9OlsytrHh8MEpsSC+nlBe4TtAehkSERATX1l0pHwRPs8m10piKUA
	 VnZc80rAxtGuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB099CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177821325369.28006.7329396908989499431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b6ef22665a9f95c0db5a9f05f50794e377af1e539cd50caab1c57808c93c52
Date: Fri, 08 May 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778213253
