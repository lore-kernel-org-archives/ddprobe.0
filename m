Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D92F61DACBB
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736177153; cv=none; b=PwYfvP8PIa31ZDm3fjhOuBtWhB6op7Gylg4Cj88mrvbLau6csETp5rfGk6Lmm0C6iWBZ29elRmZ+hJbufN3NikwYYh8cOmJpeGLZhXGf9mqlH2tmLU8WzoTWw3DG9o5aF7H3SAmv2w1EhyXrh5cGlG1ob9Ra+PftSmOkZqtUI8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736177153; c=relaxed/simple;
	bh=3bLZEwxUiHK3nCumAabR2TO0C1hpEsoXdQtutSbOakE=;
	h=To:Subject:From:Message-Id:Date; b=oW+Dpq1i8JMQnFZASR8osD8XQYuS3kfFB1wTzhRkUOLCNUXt5p6WpljpkfTRqRDA04Del93PBOC6k98joAZijrvPJE47F3YG3bLpKWH5Q7+Pxw0pZlAPMVSqpGm6px6JV3+KzEvPujSJNuBU2cFpJXo2hnNK69wNHCLGwav8fCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwH9IRof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwH9IRof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE8BC4CED6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736177153;
	bh=3bLZEwxUiHK3nCumAabR2TO0C1hpEsoXdQtutSbOakE=;
	h=To:Subject:From:Date:From;
	b=lwH9IRofMW0BfxqmjkahQMo1yzBcvc04OiQCTvIdyy3jFOL3VDUCZR3Dk3TY1O4+T
	 7l2gNqHfNk17XCQzK6xS7B9ePvSbQRDZAgjqDITQVq2B3JavLGr9R+CaunC4n0le+Q
	 pYr8BlitVuzCdAbUT9yHkB6LlWkIS10PWUmFcPLYGH3fjqCwPn0vUWB5pyIS8TrJXR
	 ad5C8fiZAIGrNR4CEImhY+0v7hNEa1li8711LmA4lCAKgNCtgV5yW6Afip68OpAIEQ
	 PeajeY/pK0CXDuzIITvHF5D2qVzis0wa4rI+xQH2dwwbL1fLXarL6x7W7eH0gxCemE
	 TYwQQ+khZ3ruQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91852E77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173617715358.27408.17646260587456251055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb5af972c1d8ac8b2b17652ca708b95bf58f49073f1500f431d4b81cbe9c496d
Date: Mon, 06 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736177153
