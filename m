Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675DE4BFE89
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788993034; cv=none; b=iSXcfc//ZCw6R/nThvymnC+6Q6RuagMbRwl00fdaAil5nQv+qr3WGIz09fJttIKDfWBWcvvqFvSqNjl1pTdBrIvGYoeXCs+5hKAuk4RkChBCvVQTIc7XBI9uV5cpLwN4Y506MjmIX8LOpclrnOZJR8bZjqQdUqcGDxV6dmBUpo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788993034; c=relaxed/simple;
	bh=rVEKLUuybNsTTRskA68MsnH8rgLR8Kah6UYnee5TN6U=;
	h=To:Subject:From:Message-Id:Date; b=ukCXAphWHsFFt1G1Kwo/HEbjidiuKpLAIA5twbknwq9/pE1ux/GkN2UeEkdf7ToNLw5DlWp2zcxZxs2ng3hhSSwerHzGqRJlEfCWov7w3J363ZtfN12O+ex8XOxYkI0PuSavpowkOolTjoNddv6abb+m1oR+MM7O2AVdpp5djgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDz/HCDV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDz/HCDV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DB0C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788993033;
	bh=rVEKLUuybNsTTRskA68MsnH8rgLR8Kah6UYnee5TN6U=;
	h=To:Subject:From:Date:From;
	b=tDz/HCDVC1dgXYD/SqDJynlBbMnyqT8xNXfqyowVYCm9kUNRdT3q/uSulAnB2IHt1
	 gLAuDfiCYv/YIQxT/1ngpZ82cYBDuBa/x42eoXR93xGBCvbgXVvGGYLuqxjgweHbYW
	 fTrqulIefGavZUj2qcU9+eNkc6I4IzTWTVI9uq9B9Z0RtTb5t/b9XzVOL9CPP5vm6f
	 yyAdyUqt2MY8XGuMxcGVbdxPWN1bZj0ddeRP3uqDKQkyDAUlt5P4KOD7KvxsYntauc
	 /TReoK1z0ckQ25x+yCnMZJcwGLCOkudmS5zkIA8HwfFG8c4MLQ68zxq6w26AxAX1vE
	 OV4Uc/Bfo7jBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD317C79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178899303370.19368.2126634121097266766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d8b2275bb84f01052566133a746a6e5f5be8a440e6bd02a82a4357890fa058a
Date: Wed, 09 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788993033
