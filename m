Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377AD1876
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743379195; cv=none; b=guq1ed62W6407GBTDrHqwjHjntJzsUccZtm/xTq/R4UKeyhGi9cJCEUOHEKcwc+NFCbXK569DBLt7+AQOAjjk1KJrL6Oed3Apq7kuyYgl1vu0IVd69E5Fqx8AGS0Ivj+tK93YphqOy8TdZBkNyPTE5NChbRQmBw73dw647FOG4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743379195; c=relaxed/simple;
	bh=yZshXU5R7yD8qefqcAR0lZ5wEhFRAfKoVy+pA+qNxC4=;
	h=To:Subject:From:Message-Id:Date; b=KLEiNtjEUKHsDCBc5pcknwqu/aE+TAtxVAYvDRHYQSvi/AbQm76nif6JMJ07Zi/N8Pvvg8QyJuLQtXVVbYxJ24NHx8fFECI9FLLu8mPS3wt5BLeaysWuQuE7qT4BX2gO9von1hAi7HSwVXeGB1CqskDE7lF2n0MAURKprK50CaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3KKqoWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3KKqoWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12E1C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743379193;
	bh=yZshXU5R7yD8qefqcAR0lZ5wEhFRAfKoVy+pA+qNxC4=;
	h=To:Subject:From:Date:From;
	b=X3KKqoWlCJkk3uBW4QateRUoOYlxPi5xtC82XUiGmVo2EcR8Sxd8HMUXn9yaY7ndz
	 N81j1JilNoBVgQEZxH9hO0t8JxUxmncs4G7oZodJcUVkmLhzV1PiAuz+UR925r4zkV
	 orExNXpHhiH0vsqvwk1zr5OwYeKZDWv47tpG9ucD5trt98FN6KDf+YRg2zr6xz44Po
	 PCNKmsvc9IzsIBQr9MM3zSu0vUzadL4LcGSQfb9dnXyOk0a3w0pjec8lJAgCHxC+eG
	 ijhG9NpWzDzxMrQdh1YfBW/W2C82QuU5XLyErQxQ3YielXjQOS5VkoTX34tRp6AerC
	 iCQj+BgZq8geA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F048C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174337919359.2749.17135245809759168548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf556d13d34996be3948f2821f2b3adaa75e486f0510c8479c5e9f3752718ae
Date: Sun, 30 Mar 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743379193
