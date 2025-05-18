Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6AC635
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747553393; cv=none; b=c63Liait9Z2eYK5HTtd0zi+kRMvWA5U+nVBkKY4FdQCd+sJFNwbtypLkZO5iWkCY/NJCgiHn/oWvwRNGR9x6FfnbfwtSsgrXg8QEog+7jBp875k3F8Jqb4kZFcxuZo7VY6MgJxVPIA8V7QPhG3MN/WCQZEIPWtwQ6+IVYlH7F+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747553393; c=relaxed/simple;
	bh=3qMRxXVWR/ElM1QpVuPk4/3JuUlb5hs6wy1CFfh6HiI=;
	h=To:Subject:From:Message-Id:Date; b=O4wgXQ6XbohQ2QRhZKGIgC3LuPBcA5sefphn0S+PWaeJVPD6YRYO8EQX8KR+uzeIiv+4+/BX7O1LmQW1kCRqFAC8Em4lAxDeCl7cMgYfAbrXQlfRkPrW1Zwx0aP6apbDuH5lns9nn7Y6kiVYjzMMm8VqN1To0EI13/PFjOup9NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gevfg327; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gevfg327"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DEDC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747553393;
	bh=3qMRxXVWR/ElM1QpVuPk4/3JuUlb5hs6wy1CFfh6HiI=;
	h=To:Subject:From:Date:From;
	b=gevfg327KO5jXjasqv5IFz04LqTZt6gea2jPnlRpeDh2+RbX+HyHxL9quztd7BB0Q
	 R8hRRDKqYLODbTk8lgvNAqnYKALWCuH6SVdE9+O8NiOi5W6AZ6Z3SgtKH4QBwiFoXL
	 VMCDu35t3VabD744YEtMilLfuyLPXf6H7M1Tr5pQPIGFWuOLj848RMvDpyNjDQu3QI
	 KAaQG4paG4QDazQY/ExXmrnKyM3pCMFOFXf7uKyurpAWV5cLEwlxWxEax69vdaXtJL
	 B1r8S/iewX005RTGtwyhHKl6Okbjjik5FDntyTid0xWzDl38jNCaWWRg88DBBPPCXt
	 dtnOtZilpyybw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF30C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174755339357.17094.362155084323000359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21fc3334816b688cda768651bf5cc9581e6cc5bb16bdd3199e7b8729f9d1d779
Date: Sun, 18 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747553393
