Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD7417C73
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 22:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720911023; cv=none; b=W9uKHWvvYL9ZNfTXU3cW7wkZ5bElCbj/uV0zewcwMm6QJgBdkpjwsIBaUAjYn055wA326JGCt9L6BRZkicys9bsxn15Jl5zCsfTp02DRPvZniquZTdA2JyluAZLrPPqu0vL9CqRg6MMVCv8B6YjXNcaFIDnfDd/qQ6JXQkET+HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720911023; c=relaxed/simple;
	bh=slHZln7eXGKTRhe6kJCyFcTHYoSHzz5ShjdQ+AkUNvg=;
	h=To:Subject:From:Message-Id:Date; b=aJQnzOAqTiUZMA3gkHIJEMD1gZ43dq563vTZtwrhS54UgGPZdOMiSIOD/8CIgaD/Cw+SIpdEiPgboKp2M1b1whzhYMNLogRSgOrvoaKu3jWkLDOGWB5I9dEWTDfNATfGD2fgYToXq8MlcOIddsGb0vqJKcNeo2dsL/CPgK40rUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xu5T5wpO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xu5T5wpO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E93AAC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 22:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720911022;
	bh=slHZln7eXGKTRhe6kJCyFcTHYoSHzz5ShjdQ+AkUNvg=;
	h=To:Subject:From:Date:From;
	b=Xu5T5wpOHGEbLSCUgGWebXpTWu+uAaEBP/zXFVSQDTVi2pHK242bY55cu1uNkFN43
	 IBSoV0IkIkgxwE8rEAJJrsp9VMI9ZUX8A4STXuRU/2lbVPKPv1/oD+AoIHP4NLJFhU
	 /myuZJyOz1M7y/bvLwhiR/6hOycxO9bbas7s6ubWC4ZfD830mcxkxaZ9OWwdbTZArG
	 mEW5PL/tm+gJEJ7c1P2/N25+jWyrX7JFud5PmCttXmyEMPhdVz7OyTi/sOYTAp+62F
	 dg0e24jLvX17jdtx9jtR70cJzybpf6TRdtqU+vstsUjI82oAXSKKQ99OEPoG9FyHPD
	 EOiuOk7BCUgRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC5F7C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 22:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172091102279.6065.3614977160580051351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd70acf077aa6b74bc2a6cc11ee9d83fac93e29aa177c7a3eafd2f25a2f4f430
Date: Sat, 13 Jul 2024 22:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720911022
