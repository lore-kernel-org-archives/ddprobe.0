Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E20F8310785
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 03:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778729434; cv=none; b=S3+W+gANeKXbjKEDhEaoVrZPtXQGU0easti/vifE7VhNm1YHH9B77DG5GIKlLPq54G0waQHq0eUCRNpY4UOPcjZeWvolnOzrLSvhp82ZDCTNI2h2nl2t65ocXVeX8Bn2/nSfWkZee10rE+9izwDzo1IXS0/suYY1exW7P/TbwNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778729434; c=relaxed/simple;
	bh=fXVAvrdElkA8G6QdtV91s14Ci+LdnOHsV+1Efr0Q1zA=;
	h=To:Subject:From:Message-Id:Date; b=CkkSTAAdbWTmzQoq0KLrRRC4ph5B3+dKKMayaCenIPFnEuo7gL0sxzYFbiBMHHtzhVjRU7ucdhcx7Dx0fRswrCTrc58Y5o5U61iGyTo6sg9MC1P9RuZ8raCE3OmoO2j8dg5jT1K3bFIUiijj5UlmVV5Vr8Ig0q9Fvwpt8TAHdPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Itt4Hh82; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Itt4Hh82"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5AEFC19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778729433;
	bh=fXVAvrdElkA8G6QdtV91s14Ci+LdnOHsV+1Efr0Q1zA=;
	h=To:Subject:From:Date:From;
	b=Itt4Hh82i5ENy3HydhFYM5mdcHhXz3/B2LSdw43cYY+6edqehqfEv43e4Ek9pQyf3
	 Lp493p7/NELxFMgBBm1baQ7ivor3vi0pruin+W5nsw3mK/mJ3dP5Q9iGYEWohfV2Do
	 WsTBYxQfY7FYDiGOIzq7SoeVL9+btwbygFDxz7r0rnOB+oMYlWwrL3ncpZGnH5ZOpc
	 srsy53nobT+E1RZyURMG8l1GRVyxCmXMG546Wpbd/VwsyeyYni8zaYu/apj9kDzCQ8
	 rKad7Gu58okiz+KUTkfCCaZ3bKonpqxOMx33tII3Fes3Gg38G2HYGfRRv57gmWDX/Y
	 9XTeS3qkE93sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EC0CD4846
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177872943369.26893.17786859155882235117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe94f5a0b9a5791c874af4c70a055f9dae0051d07e37f8981601cb25e1e1164b
Date: Thu, 14 May 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778729433
