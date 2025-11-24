Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118A72BD5BB
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 17:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764006714; cv=none; b=rrGH83iY9I6ToRLpzhnFdV0pnDRjsyq8dmWLQO6rro96PwdU4lFLzvu6X/aoUYMd6T8ZvhkY3wh449NjDQM2JBfhrzldKvp7LYmFkiIuiwp+WcskbhyrGMFY8IBFbbaT6ZGdkdqvpjcqyXa9lCBlK4E4E9U82o0LW0QFY6uqHp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764006714; c=relaxed/simple;
	bh=M1lknHOH1ZcBilc8UB2Ynkiqu+nqKqYvAsxFv/0FKg0=;
	h=To:Subject:From:Message-Id:Date; b=qFts80lWjuytD13anJu4j2dk5NTR78G7uSHW8yrK+M/ofkZIa+5B2l8AiP59OCVOanc0j3kF5Z+MdmP7qq5SEzchz+Jd/si9KKl97yw2dTmGUnuq55YLOFewM5GMw2GldRTG/RpBoSq3FiL1PIaqwqp1qGK6mqqqtTvLnBOBhh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoG9aeYL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoG9aeYL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75A1C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 17:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764006713;
	bh=M1lknHOH1ZcBilc8UB2Ynkiqu+nqKqYvAsxFv/0FKg0=;
	h=To:Subject:From:Date:From;
	b=hoG9aeYLnZox8oZWYNG6lUKtrUG+pHzvfUCznKC5qoo+KGDJoxGudmKIwsX7i+nIk
	 crBKtxGl/tUksByu1NALUg6hnQ05Rp/sQc0JmXgNGBb428lNrFhTHmxiReklVDnson
	 lrwpE+byVikX1oo86Kxj6Oy2SwdqclEQGrrX+BpMBg7uO0tNb0L1mXOCBBTSFSE36A
	 IiiRePO/rp3Tog6sMb6UAt4D4iFyli2VLrVym+49aeQLRYTwdjNd0/gMwr5ZJLLW1G
	 X6yV81bBRTeUSksj3jE0rRZAIob4ZEjtOS6PZ5AoC7TjgQMp6MZlCiA6++sxwavkNg
	 vyPEXJniolYwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9395BCFD31C
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 17:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176400671359.30312.1019928279440214695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8136c532a8d497a046c6aa6b33769b90cffed81c00f5d83488de9168fb23a674
Date: Mon, 24 Nov 2025 17:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764006713
