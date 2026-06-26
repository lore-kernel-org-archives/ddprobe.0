Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE12353EC0
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 20:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782504514; cv=none; b=mGbAdGuxH/Jrmyjb8g4g0tDPkQiah2lsO42aQpSChThK8a/Zw3phCfGYR1DCOWBBSVdU0O+vK0g8lUEhn9UgD+3X/E3bnq2TcTLDqg7jOGq1r/PxeJISfVAJ98uhXM9iwQIri9JVSgUuJVeR68Si/xQpwnvFbEAwwVIc6bclacU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782504514; c=relaxed/simple;
	bh=ZSZ16W6v2E0FTFRPASV33j8JQhzNALOIY31anyOxheA=;
	h=To:Subject:From:Message-Id:Date; b=YRr651R7xirUqzmeXrJRPli8Xgl+r1TUqsEOK2LUTHLe2cVReSHCdx/zcctEzWPEd+EJyrO/ocOjqyqrtrEWpTvdke+YpA0TK5ZbgUJe/2AepKTvsyldCwzaLNSyPocRu4mSj6cdfGL9CDy4bBwdRrTtx0dnUBbcQkMYMqL9Tlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0KgURI8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0KgURI8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06913C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 20:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782504514;
	bh=ZSZ16W6v2E0FTFRPASV33j8JQhzNALOIY31anyOxheA=;
	h=To:Subject:From:Date:From;
	b=m0KgURI8Y3YW+3fsaI180sICSFS0kJ0rBFv3SOwGEFMQkCIAQ9N3WjZrR1lhBjpY8
	 CQCtAVANN/7Y+MvMDy8aobG0TP7bOJLfchgVBUzv/V+XrYbWSnCm3tBPrZrvP2ituI
	 UuOiA3cXkpxHJ+cv+OaNUW9gh1shWqy72+yVObYLJ29k4b4urVrqjdsGpWGGTaRLIX
	 +IaC8nQ753sfzXTVTiW79xoFGNzW0/VEdH9azRDJJe8dsX81I356xaBXHGNDw4rony
	 XNG1mYGP+TOFEkb9ehqbSn7Mw1+akT2soUChQ48O5/+SxijQqyNhdCHcMqQjhUrea3
	 bTKEKIPu9g+UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7642C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178250451376.9401.17569420639909979953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e000d7cb753be9edbe90b0478a883943938c49c7937df975830b66c1f9170aa3
Date: Fri, 26 Jun 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782504513
