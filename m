Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BB1013ADA
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 13:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713016163; cv=none; b=hiSLODqLp73ilyUbC50t4+VKkkTIqD0H0ooKZtJqKJG8waCDF2z8ghEX1SbUCT8N8qJjKuYwFyyhK4VE9xjlxSRnpD0GtFAgb2j9DtzUqjLhqriOYduT6s3FsY3g66Fq/mGXaXKQWAxfG0BjWCxzJFslfQt6b+6PwXlPN2ZywpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713016163; c=relaxed/simple;
	bh=CoPWUgOJxleGKE5CUoK499Eg89tDMErr2Ouz7KeYtPU=;
	h=To:Subject:From:Message-Id:Date; b=H3WHuGCZ/BxtPuDe7j8/Ug/eAsHZuMMtS7T4WyvvaGiRxqWo1DBN/YSwVwqCu/nxoWNHkVKaGLivUZkJpcWt4/UGYo1h0V104BBd6vgd5Q6tTsMj876YHNkW1HrtIOTFicPVs8QwX2Mcf5eZnK7wA9zCDev6qzm6l8gOHqdiqrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=im7lo3Qq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="im7lo3Qq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC9BC3277B
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 13:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713016162;
	bh=CoPWUgOJxleGKE5CUoK499Eg89tDMErr2Ouz7KeYtPU=;
	h=To:Subject:From:Date:From;
	b=im7lo3QqGTV+aW/xddSX1S7PiHOy8S4Jy/aZ6L/6KeiEVjD0C37aZmvm2v661PhTh
	 AFX0WdgEwksh9J0A5Y4cpGPJMNEE+yK2+agX/uN0D8+L1aybRu5T1R/OSlUZx+ivmY
	 p63Gr/YDg9s5QtHd60rNvFFtHeNgX2MdKCZoHClVTSuW2wHGoIYVIy02iXQ7uJpt22
	 2fvlMDW2Ck27ddh8nlRUrwiRxYpgoZhbDuIZnxX8JUL2hTkggA+N3miVwlhvyOA0r+
	 /v0u/PE7ZVsE1Dvtj+dBE9/AYLQg5kMC4Q8WcPX0yQ886ZuK8qJaiXU3/MBPITWojw
	 Oe/PaBvZ4i+zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF48C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 13:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171301616276.19714.15690562159325652374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6014d35ce735d76b5e260df6aef9adbf4274780b8b586f353344050df89626dd
Date: Sat, 13 Apr 2024 13:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713016162
