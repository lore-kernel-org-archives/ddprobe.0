Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180E4279358
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758835794; cv=none; b=DkEKb78BnnMtQWISaUGV4R/C8dY1j2/STrFIAm9Y+wfBmkmfWNYwy7dGzUWNBAe0V5nQrXgDx9YAAbdBu4YEpayctji1ZxqzEZqgyMb4vuPrArgGxJPciTXXIAaDEudh7oJJdly8koX54rUXDqezXrKS74fhne/5EMDPnGMKhfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758835794; c=relaxed/simple;
	bh=hdk+cEsAoSSVWtg1ZJUXLNaRYgNzJbgxx58iNOf/wxA=;
	h=To:Subject:From:Message-Id:Date; b=XJ+B2OJkbmBJ1bpAmK4fY83oDhOm63Eub0JRV4aIJW9S5UAralW+/DrPMwqdDE2ib+kL7cwfwewf+HnRCAkeWG0N7FiwrUTkeIrHTSOont+EcAIuwru6iUAIOdRESoqrQVNtpKP1Jgoh2RvmC1RdChAzRK1r4m5uGypabJizCQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0nJJri/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0nJJri/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22BCC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758835793;
	bh=hdk+cEsAoSSVWtg1ZJUXLNaRYgNzJbgxx58iNOf/wxA=;
	h=To:Subject:From:Date:From;
	b=u0nJJri/H6aNx7KJIRhU8JtO37DkrOnIJj6Uj2azhlNTFlGJBzRxt+0hWmw3F2Fq8
	 LH7PT/X40efTb88uFStjwaZPLWhWHJOL35XxAeHkevtaFSK+6BZ7Vhl3w+IEfjT/2p
	 DfAk6a3OojnSQWkKN5lbZ8hElByu27fG8QOyFJ69ybZohqkiSD1RxVktMxvJSvxfwn
	 B6LLuBqMt5q/rI2NS3JonP8XKnAw8eUrqnowotsETh2SXtuElLjpNjtJ49jWMtuWox
	 JiQJq7d45H2AfpytpuPTxQQEIF5+Lbno1qxtuZraMEpXhGhQ55JfxWYEDXQL4GJL6U
	 sM+iMm67tMxbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F2FCAC5B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175883579360.10021.16609636815572347453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c3fac514cd548a2325b10463de024526ed4ae866a336e18fb1116e440a63e69
Date: Thu, 25 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758835793
