Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414F120330
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749209995; cv=none; b=WDXOcvCQ5r0VsykL3z5arOxczwbTBMxGRk0dKPvEcswmfufBSd97ps8/T0ewsSm0aqaVgfho5GUomLd245FAXYU0wvag9GQYL79qUkq9FA85hX655yfeEJK0Mg5o652ifnwPBFEVsqFdn4ApwbP1XvAI7n9gsji/uWvXchwzfe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749209995; c=relaxed/simple;
	bh=jLTU/e2R1yOlRoysC+VE8KIc8ew46y9fQ6u50GqMOwo=;
	h=To:Subject:From:Message-Id:Date; b=jsc+MXrtjI6dhGTxZl25MXGAKp+rf4CW/sMXSuVM0sgR6o1MZU0A0HJaPTdZKO6BvWHdCOf/XxWaL4WVY5WNVjqQsBQVlHVdXKmQLxItBT4rjLNChCXZjoQfSGjleJqNs4G7LIjuEuarnHDiir5MNZPLbfIZIHmfY79uKA3HpR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X62x0mib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X62x0mib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55ABC4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749209993;
	bh=jLTU/e2R1yOlRoysC+VE8KIc8ew46y9fQ6u50GqMOwo=;
	h=To:Subject:From:Date:From;
	b=X62x0mibQ3YrAmZoUhA39o7PzGuX/UkSbW2RB+wYn7PkdvYja5upDl/YFDa5/ssDu
	 RQOGWPw0xIM5QzNGU2/Y8i5iYYvcWc9PfWN0vaFYlf5ENp7aldHazXBAt0F5MX6Hx7
	 Fyz9cmQmoEwr4I9cQ3gKLZxeKeqCQEwtwAR97H4IiKUgeZ2KLI51ZyvS1nKPoho50A
	 /8Dfwq6GReGJKihTcJ0MAsNW8w5cMDXar/lXaM+QnHFmsX26jfT12RxfidJMPJkxnQ
	 fQvbcV/1Q69RBDWRhto/W6ZFRKFLiEi1RuBXS3odwKwFM/NVeAw1LDUDq3fBngZ3AF
	 HPQ84pq2l9aFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E20C61CE8
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174920999358.5486.1128479096927839328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2241c3bac0803b1275305cfb35e56260c712f3a54e7c089a9918daa83a4ad083
Date: Fri, 06 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749209993
