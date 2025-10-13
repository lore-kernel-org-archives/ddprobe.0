Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343CC23D7F4
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760325594; cv=none; b=paMPUm1wymdra1eFvZlZO0YSfPrkIvsuT4cwXfclwfgFZB9G27Du+/p+bOItBwSZWOEUOAB4Z0zKzlhq6MumO3pfAqDo94WhVU4LDs1cRtcVWG2jSnkvGyADMH7/Qz9kEmUzWlNXaFFDHp3KiZHaiPanyJ82oM5uBhW4aO3p8cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760325594; c=relaxed/simple;
	bh=y6VHkjV++p+GZQ0W9OW2RP4oE/pOKgQS0/qscwG+t5M=;
	h=To:Subject:From:Message-Id:Date; b=G5EA/47pt/9FebQ0H7dfFZkNG4IwzHs5D22kCm/vU0dOdBJY29+8NgAOUPaHr0yCkGM+L+7cX3gxU2lxJ4FwLBAcOjwv91EmRyNNpLlXz/L6wuZc0fYTNW8UeInvIIoih4DA/6h+VOy0HEFEUZC9vBmUpI+onaCjWAKwyuS1ZzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Krqz7b8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Krqz7b8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9F9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760325593;
	bh=y6VHkjV++p+GZQ0W9OW2RP4oE/pOKgQS0/qscwG+t5M=;
	h=To:Subject:From:Date:From;
	b=Krqz7b8CFhITkXSmTVfy4WpsWL3XVXkUQLjttT3v+IPY6bQsVQxocc/cLKc+4rbVI
	 a7EsOpj74SowIjUqDTtRpUfQYmfpJ0rHtbrh6qb/sbrd1JcNyW8vv/h+agU+jHH3Tv
	 efL7BhjVYq5HkHb1UGu0pzo4WroYgOXAILrto1nI9lClJ+/xiYCeC2e4f/z6rIA5Mh
	 mqveV0ZVALkQKT88GbywPq7RDcgc1ir37nb5mbOvR5Gng2f/Em/yfPIpRM06Zsu/C2
	 ib57cyf31Zr+ZBDhcU3vM0I0mRHLbfqWcY1LUG4MTfniod1SKvYJPi3S6ziMY2Lboj
	 gepDMdNrlxzAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECFBCCD187
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176032559357.24346.11656852199442234088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14fb6361acf97f36e7af77dca23e278a4634dba473e9d34e5c7fd6236e1da090
Date: Mon, 13 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760325593
