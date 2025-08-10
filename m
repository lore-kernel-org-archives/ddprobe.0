Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E214C92
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754803794; cv=none; b=m/TkXfiw0FDOLDw7hVFafOtW3h91WR2FL4qfBMWInVx45qXtMiOH7ynDmk8eCKjbyw9ZYDP6r/BzCAMMnrbd56NN1brjioFQlxnR5N6+TCpVld4pl6JbsxPJ5Yubl0/KLFejg49/wzposh66MRUzOoRRbmPoGiMEyNOju1gHtHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754803794; c=relaxed/simple;
	bh=upVtvto1feHKkJ3mK/GXrb01W0xQ8cm+rd/dDNqS3ok=;
	h=To:Subject:From:Message-Id:Date; b=jTgXx02VU1PrRjIrlyhbZCiBC1dDcOLcwIJhtIBrkqe12Vio/qDCrnhTI25WXHMAU/2g/vT+4VlFo70QB+kg3BiDZKCBp0sS306f+dYfNeGCj0c1SBzFF8h01TnWasTLhpBKw2ZGbbr29fTJXjRE35r0U2hcbElv4cIbHWDxTnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2YVPDiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2YVPDiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB9DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754803793;
	bh=upVtvto1feHKkJ3mK/GXrb01W0xQ8cm+rd/dDNqS3ok=;
	h=To:Subject:From:Date:From;
	b=k2YVPDiDkAxyDz+dx+KtdwHG3pBnAMLKszvjyo1vcgMMUsPQByddJmTvH4cheWsdZ
	 xt53mAPBnrw5eow9Edu1pIRlwFGYRyn5u126j7zbFfHBTkrii6PqLnMzLQ2u0zd7dM
	 iEg4lk1LuFUpuylh40X3cj5MvOrSk6tq+12nFCXUU0P2Z2NWP0FM21j246a63xnQK/
	 PWRXrmPgOT04GvYem1fFe2InTtxtT+XHd4DYIsi6h8ZM6OY/GinC+kU1EwWpwQywS9
	 BMpm0vPQKsSdDLFsGX8HkJm9rPdhwqOC9UQBIwZA7Gi/czQV8xv8J2iKUu00mw7CLF
	 96Lnp0NzYgVyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E2BC87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175480379357.11132.363500468002529197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0371c065ccd53940d51f9a29e833d3201d75a5684fbdd65045d47fd1d6a1f92d
Date: Sun, 10 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754803793
