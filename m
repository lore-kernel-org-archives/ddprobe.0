Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EE4441F
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 01:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716255743; cv=none; b=V8rlBwbOqH73oB9yIEZrOYZztLbXNqAv4oEzLdLs/g+WvY+3hvCLPKie/WDo1fNcyKHKk/XCBJoIaoyHD4RQ5aQZjjnVJ87fzQheaxEGkCe8+v7DFznklfhhtlgsToxT3q1eWJeIyIIZkECaNB+4zPHFSVczCdvdG+QjfK4hpkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716255743; c=relaxed/simple;
	bh=8MIiuw2w5yWIdmDvcUA02Xop8anEXmtBc71sbTqjbFg=;
	h=To:Subject:From:Message-Id:Date; b=reEq5DhcaVxLrjucMf/xUR0XMyWUiK6bl30xCsi+E7HKEJ93wB3Xfi6Um8s1fSgAOLSs/jLp17j6rDDUc6GiEMtUab8Ja8EOxDP5YY6GFZ+D/5kaWk1qdIP24y+U0tTmOjHOo9iCue25N/JDbcNrHsF3LVfrJbDhpmjnAnnxGJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWt2FPLY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWt2FPLY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BE3C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 01:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716255742;
	bh=8MIiuw2w5yWIdmDvcUA02Xop8anEXmtBc71sbTqjbFg=;
	h=To:Subject:From:Date:From;
	b=GWt2FPLYb6AloOcMeN2q4hq55TqVuACXWsfSWniwJ2zikQJjKTEHZq1w2ms/0t3BR
	 3Iq8xhTy064L93Wpy2zKUZPmtgk1WtfdQtYWMkdYY5GadMdS617fFa+8GQ4oTOkcbY
	 m05nxkHEnaOtHJHCZ5hMivdvgOgSOR8CvabppxQt6pxQBGYQGPPY/B1LimYWjD5FFu
	 afweIf5TMRku4WbEgMBcakyEZgN+psmMl7nbekwxtZXQK0oG082fkMKTy4gXBOcJfv
	 yzuzkXtzDylZumIIBBK6AWnJYscrBBObjG71qtDHEo2Es12cnu/dp/wVpvvgPXnMYX
	 AH2+fYDsT2IeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF822C25B77
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 01:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171625574277.24430.18034321512775359892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b013d8421f4fe4b38befa099f071094b0a851f37aeb51bcd8d074b00ce1342
Date: Tue, 21 May 2024 01:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716255742
