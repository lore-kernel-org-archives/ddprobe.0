Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E55B1189F57
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733258754; cv=none; b=VCuU+8qRhVJE0yRO74kFzhLX4wGBavxbTK5BmWCtz8s+waIlUCsgdCybF3SBFh5o5rytYW+rpWqfZcFV7XhTsm9v5RExM6SyLI8oeGkkNFTrau0+uKrGmaHUzsKl7Uam2gExbYB4tRLt+bk8dYGvKCwS88Qf1JUPoegGVMSkWuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733258754; c=relaxed/simple;
	bh=PitPi0hXOJU6mq51wHeQOi2EBVM7sOHhQqe9YMM+ATU=;
	h=To:Subject:From:Message-Id:Date; b=b+33hVi8Gs+diMhaPuOYEG9LMBhKGWYm7o3BUo33U5FccnD/zuKCOXIEZnemIZqXyjLhriWkJaWavg0ZvWwyhExKyq5ZFvEZnmNGnbvCsVvj88nAp2jPQEUV6Ix93AZsnqg0LylbGAcyM4n3Dcuzyc4UfhgsVBosNs2I4ivHfEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzMP6PPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzMP6PPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33C4C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733258753;
	bh=PitPi0hXOJU6mq51wHeQOi2EBVM7sOHhQqe9YMM+ATU=;
	h=To:Subject:From:Date:From;
	b=TzMP6PPn7zlJmp6bPfQL3mW2jNtr0Km45eQ3MvarqYmr27pDYWw3MDG7LC5djsKqc
	 AP8aFi2aRdRqYlcYGBKg7jw2zvydT0xAEJCPbvqJoVSYAFpkmdz2z3r2M4KOOlSdqo
	 MvYL1cjD/XNXSRRh8NSm0T96vT3OSFvgFTR+Kx2tUbLHDvnmXuTI69AQPChP/A+V6y
	 UKAuQiJLKKZQlpHmfRsJ0JqfSJ8QlHV0vtkOIE9K2FAk8T0rOgWvgOYW8JazWKzoru
	 FWbyQWzk8Vdo/Hc+vaWn4Kb8jInfquhSHz4WlZAEVe88BmPt4574EJqTaxwYTLRBC+
	 bxuaB7KnXTuUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960D7E74AD1
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173325875360.31129.10121405890735286181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d6eecbd1a7391f5f694c8af1f532db2bd3bbbbab9dc2b1b42a52dcdd2343bcb
Date: Tue, 03 Dec 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733258753
