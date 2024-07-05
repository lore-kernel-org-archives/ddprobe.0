Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6068628E7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 03:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720149323; cv=none; b=nzXArHHATOLb0u3KO14x60rRHNZCE9s8Sf0CPIxIE5xDtUxHe3knKlxfOu2LFY+vN/DcxZMBxcbFkdxdK3eZhr4WGXDHyP6U2wWapDMOF5HietZnSI6ndXHl19wge7AodtEy1KrM5eENdNX6yk55TS7C16lZ4q9GoKN7xjWq2wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720149323; c=relaxed/simple;
	bh=kBRwOaEZ5UJkHZ8rQJ+7vku8qPGiDPLP/nwuOAd+7vQ=;
	h=To:Subject:From:Message-Id:Date; b=GliyXqYaHrR/HpckgiUA1j18Fte2i1QH6TGF3dQyLOpsIK+8+GyYY5gTmqYKVcAvUka6BfpC6HtnRXqBFYN/wGMkyK5TZ2fP+Kkyz85bmfFTiC7YFZdOBhOQfvjun3u6dXjNGHRZqG0Vs2ZYkk0SSlcjPocwuRT8HG8lRSdtACw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGEPLbUX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGEPLbUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4B49C3277B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 03:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720149322;
	bh=kBRwOaEZ5UJkHZ8rQJ+7vku8qPGiDPLP/nwuOAd+7vQ=;
	h=To:Subject:From:Date:From;
	b=IGEPLbUX75fOeyjQc5cLjhJFZ01H13aueTmul8jAvYay52ZQLE99XIhFt8EVRNzrR
	 oSVVPcagAszESSiyiSFhpOHILGBq+5q+gdezllJ61cvnoYoFcNh4nyLXLQFjfCZ9t3
	 dKgy2RXC7Fk532M4gFp4SOyodwqDC6aKgsNcyuLpdLbddK0VcR9HnY17v6WVs7rlOl
	 JXHf77HO/79eiormFW8Q4Cao/1LXUr4RfXDejNPB9c78gZqMgP45xUyFKWVKHgU4RW
	 NXmSBD0iBWlj3DpcyR8ZxpMklp4JW1B15T0PaTxn8+Avvj+A1y7/xh8qqUjPsdyEb2
	 059ojuW6SwJZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9FB1C30653
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 03:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172014932280.28837.11131300952913477521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3221b7c14a955f0e8d1bdcf91cc9fa7d48288ab4dabdda2ee34329b1e7a280f
Date: Fri, 05 Jul 2024 03:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720149322
