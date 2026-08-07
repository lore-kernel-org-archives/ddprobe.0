Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 805E2400E09
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786080034; cv=none; b=GuXY1P/veN52rndd16jYCJklcwuek2xwR3iIGNI/8jgYxqcBKFd7dP18FpPirMKEJIvRnxVTb12OdI8OreRX35vhdP90CCrQGRsdDFdq9lhadBFL7qGqy3nUGxc78S+AJmqKc0YyS9Wult0bN+9aTLgoI7Ne5USYSOr61kv1q5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786080034; c=relaxed/simple;
	bh=1qFWSUMUmVwDzwWHp2DhHx/LL0TtkSd9VsbY89kwxlY=;
	h=To:Subject:From:Message-Id:Date; b=H7XI3oHnto49cAxOaBcltcjHROiLNZREt/radKM+BY4qlE9c7dSCpKGYTbH3FgbaKQr8Xd/X03dHAUgf6DNCxZGRjZ7Q3/IS/9HwYQwGxVlA0v+IqDV0dAuxXMG+ZOkIf15OWlB1Ltogz++3+rffcHbG4FJO1pYxH/966/59W3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mz0ky56T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mz0ky56T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF89FC2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786080033;
	bh=1qFWSUMUmVwDzwWHp2DhHx/LL0TtkSd9VsbY89kwxlY=;
	h=To:Subject:From:Date:From;
	b=mz0ky56T8pP40M6t5oPBicc6/Aa96bFhuskNSLxst3gA0zQp6jxL53ErqoafNCkfz
	 KGZ5K+oVTW6Pwy47qKHNdAORX+HS1HxqWpZlO7/eoLcAS7FDjZ+wtoqy6qiZfIdKag
	 qLEpjImI1SyXh7HeT/oy3Xo6EkBEypcuzEJ9TTFYvQJxqTWtYsCeDHzQHRX1CUAlsK
	 LrVBCrcmCsNiVkXiktM5IE3TjNhBzKaQ2pfmYxIhSRre9FVH0yMQst8aGxfCzlUK5V
	 AZ0rGGRbiKEZdsK200zRBOaygKov8r2QfCksEtBNgvtoFMLyOebD0gxDH2v+bSPXqQ
	 7OXRAMUmAVHxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACED9C2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178608003368.27367.4158438541499543097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a51f987f1a17f31b1decc1b0048d2049cce5a11a3710fdd469183bbd3f5a4c
Date: Fri, 07 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786080033
