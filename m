Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A90B3AFCE3
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 16:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784393914; cv=none; b=b19QTexyiYePDL088RIWRHlwBN/kqKkUFHP1NJhWs5M8knnRv91K+dOZnZhRey9K8VBaIid7U8yKx57dBP9FAoUqevNd8rQNSRwi0INXlX2Ravi1ZqprYMpB3crGNUnOTMyOYD68NBs/u7T/OFFV28BRuSEcF9zW1IQaLjMVw14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784393914; c=relaxed/simple;
	bh=s+d7hGXKopJWZvDFZor83GYovpFh9++ZXRmMRBs/9o4=;
	h=To:Subject:From:Message-Id:Date; b=tRWrfbTNNcLzj7fiePP3TWiWm/lJZs68EhcScfQg12Lzk7K5JcRFW2OIyYlX+GWSxNzYpp1EdzrSoAiGIKFi/21BPCLR5406/EYSUpVupbcAwOZ5yKHBxOnV45PrpJg9C9i9vVKqShXbqnYsEJokKbfu9/b0Is9ojyo8qdRbhnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hk99B7GD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hk99B7GD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF8AC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784393913;
	bh=s+d7hGXKopJWZvDFZor83GYovpFh9++ZXRmMRBs/9o4=;
	h=To:Subject:From:Date:From;
	b=hk99B7GDe7Mv155kkc9LbqojImp58/JATEIqfoe8XIBpNz4YkHJ1xvpdi3ft7M/Wd
	 sWDiMRFf3enjJwcWKW712t7smrqmqYsC3DQBh6U2/j7P4CD9xnU66++JyMvTIPTusQ
	 22yYNXKpTE84eajuxzTSSykOB4JT5HqTBQniHxoyaul2I9kwcqutMXqKhb29eDdDfq
	 KU6CTR7iCp1kz0A1ltRWT+Y1Rue/IHj7NSzvSVTh3vLBQ8976dHZeWy6zA5WY2uDfR
	 TXwBT4kmiZyhv1mckMYiwFbj722kN0aPQ+/H7UJLTh1Amv7xXP628dN13C7aX7QUTY
	 SW53FzyDwo0+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D9AC4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178439391372.11446.15941627370680847710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c0a8078f0701f22b6cca13cb47300b8a8bb6f18fb6c4e547beaf337d574732
Date: Sat, 18 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784393913
