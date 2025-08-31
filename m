Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AC01F5617
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756620596; cv=none; b=YPLrl9p8yZqqCWOxGuUF3Shuw7RzPAur0KYMLvIor3KW4FTE/UJ2TrIbl4wBVUHQcGycN0nuoQhx0x4Re5JBiiMbbsU40mNYtvPlUo8Q6KBjYCeXDiINVJvvZnY5OUIeBFZK4kPBs6W3QVeznFVTY7FDOSbp73O8vvrYqf+C3mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756620596; c=relaxed/simple;
	bh=T5YsKWerfEVpDWYo/5J6m2d0074X8M9C2ev95slYDvA=;
	h=To:Subject:From:Message-Id:Date; b=HAm5k0WJ6vlMojz9JLeQb/nxoOvdahremxeJz67R1Iy7m0aJyu6KXRZtFnrduLxnoE+jgPLmv7vgsioM91xlhMRu7TxWhGUBMYaJX1Vl3ojkyAXRH7wBcGMyf0V/caVmuV6HwwuC30SzC9qPU8UsD+dvpzKqevQU438sr7puVXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilP4lL2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilP4lL2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2649C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756620593;
	bh=T5YsKWerfEVpDWYo/5J6m2d0074X8M9C2ev95slYDvA=;
	h=To:Subject:From:Date:From;
	b=ilP4lL2/BwRZWIb8WHO7YCKYR8d03LxQ2r2qYuVEOR4l1nFAXnvyESNFTR8WN35Ai
	 W1zz2VjHIrPCHymcT8NoTS/y+QrkmZQedophdhpTMWQwZo6GOfVz21vA1HEbR+pwQp
	 vOWXY8Ib7Lmtg6ijdH5Ncq3UQYjGZzBT0+ExOCIzbbp7AhrLWrBHtD31EHmF48DlsP
	 6YrC5vsCAsR6/O5H/C+hG2LZPvRDenEfrUm1S7eyFv0LOizIWhu2RTg1OhNdnswdhX
	 1NqfktxhjbaYz8zP+nl2c77BJk9tnvnu1IlxaCNLDkJGAiYOzdwBYTe9ObEPt2GCho
	 cUptqZejMhZcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912EBCA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175662059357.28829.16796528542207503100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9687f5f543207e592a9ad1b3fda5153e30d4de28b26475fe5bde51dfa81214
Date: Sun, 31 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756620593
