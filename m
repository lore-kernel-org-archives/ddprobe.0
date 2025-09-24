Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD8D24DD1F
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758748795; cv=none; b=eX8BvLwIBnVJRidHt20BBXJDqujVF2KuR1s90YO8FPClEngj/TvL5bQokJSMb3+yZdkO9D6E/5p8tdGYGhR7fTRPgz3oEK1FqMQ5wgcofpYEhZiE+X4ukoId0MKKg3xBVoNTUmvOUPUkd6LL1rTLnTDAWndqnLMvLsP1tou9tZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758748795; c=relaxed/simple;
	bh=oNJBepBCHhoasMrtoJgrmxF4rQIqbyRKZ1qCORM7ERc=;
	h=To:Subject:From:Message-Id:Date; b=GXks3Wj9G17wo5Z2z9RXDF3keFy1WizC/MIGVq5aiYayBTndCusoyQ0CuzI5AKplfkK6iKCq4wLjWuWjr/0VTuc10enTa5EmYi+xWCUZflSTTnmBJlTuvtVNvS1S6ZpNRJmVoPHYwC5NuXyD71AnXzMgT+N/JdxmpVTYdV1Hrrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dk6pNJMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dk6pNJMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6425C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758748793;
	bh=oNJBepBCHhoasMrtoJgrmxF4rQIqbyRKZ1qCORM7ERc=;
	h=To:Subject:From:Date:From;
	b=dk6pNJMqroj3bdiMv4jfVVz5NLAC47L1Lin2muDJqRIKC0MR7+ltxkhWLeYeBXSPB
	 afR0RLgEaPwrlwULMIjZj0VH49+P4J3Ure/4OwmAiSr8iOzRN6lk1XOoq/z1hYy1dq
	 2UmAyqyg1cKbCNSDYXbJaa5MC3UOFuvk/BvgxJ+/AjNwVu258gOSsTZpy8Bq98753j
	 diUU9TtActUPhsuKwZaXXF+FuTvK0QRKCEX2O/HtdCxMczhWTaXP+Fo+mJPyZMyG3J
	 cOzQYz8dg9ePLyy3QPknyUBZU/iDNceWcLwoHCuQ6Eh3PwO9vB+3eVIwpX2yTmX+Np
	 rz9t2lBe0UTkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C9ACAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175874879360.31766.3426626838849371447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d1124b38229d99aa784c78f7cae0e7b9bad085355f2a5312b3274688f9ad316
Date: Wed, 24 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758748793
