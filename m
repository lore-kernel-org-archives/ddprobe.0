Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FEA525A357
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 18:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769191434; cv=none; b=PFkXyK0+DxIhdy83CpyeaPS8YRdrU39EllyzfnOMRVOGjaK3l/7Wud1Ma5cFVaBj3B9LzyPjC1odN4qyqcwPFhSVIe/HP3kzfty0d/r54phPcbQAq11i7ZcUXwFg9hkhWPGp/PKoE5QRagteVe5cE85YN+c40mcRWuIDeXAnQ0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769191434; c=relaxed/simple;
	bh=+h1uylWeLltu7fN9d/RhcMpcxt+hqfgDkRi5chb5UGY=;
	h=To:Subject:From:Message-Id:Date; b=NPKnshvZqBDT5i1tOgYXyIXqDJsHJqK62St2ZseY9L6tY18/pbst327RGWRnWTSE1Vbz2sFjHM2yb4sXLjEDinHnmVSB0QuSEsmfhbUw1scnMs8gRBjJSxpWlDwDme8BCQPNB/qV/5uruDKFdQzr/auyCHFmDqCL9mNGcXc/DPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zi8FaO0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zi8FaO0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A837BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769191433;
	bh=+h1uylWeLltu7fN9d/RhcMpcxt+hqfgDkRi5chb5UGY=;
	h=To:Subject:From:Date:From;
	b=Zi8FaO0M9YShvICZ9BoEAH/FVd378G4mauLcuKhg3A/Ik1INQgFzdjSXELcPfW1/O
	 faARcF677BD2S2UKyy4b4AyxIhXcfZnwxzLgU/5GC73AkM4Ye0B4n/SJzp/jWGampv
	 3HtnifbP0eCS6N3/YnD0DmOQ0XESXzaBIQ1+jdehx1/k6EuFAYj896/Di2vMcEg17l
	 qE/bw1AKeBWaryJZQlUDzEE0MVtom0gQvukLlLLMoq7KQQU1fGTMfX9XO21s6cYXTp
	 xx+wWWL7B7zV8ZHoknOSYo1/OrFjncQvPxm/dxcizOytgZQ2aNjhGv9SZQjaupD3H7
	 Py20pPPcYHZvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A10D7789E
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176919143360.28445.4310940744180343223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 675106cd75710dcfc98e1e3c4473950eaa37bff1c1577abac632ecb2641b1106
Date: Fri, 23 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769191433
