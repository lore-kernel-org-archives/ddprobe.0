Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374922FCC06
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771104894; cv=none; b=eFdekz3+4BM6x10glu8VOsRGcP12vsC9iZWR8Sy86z+dJDn6ri0NBQum2ykXPzNbhsW25PRw7voKhPWH6HG7/SkawyLJbG+W02KJ7Ruwb+OM4Zro3XakT8tSgJCHgrrlaKX7L/VU3EzkTz+TjsQZCCylCrdG5gja54Ej/pbMhtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771104894; c=relaxed/simple;
	bh=bOBlRD++BZIPNCVzC5ffZdsNtSIDgT3997ABqMrdaJM=;
	h=To:Subject:From:Message-Id:Date; b=EM6WmIkR2pI8umtmrPYhJKy2et4OCAPFjsl7CEDFSAXnfH4yKLmV/gZjhNQ+mMXX9R6wDYGq7Q+kHDeHy91PJVY/XVd8QB2CCi8yHvkJbudkinauW+iuHoZUQH3798WIV1jRKwkNJcdinUWBDljkUkrY5C5NC640KN3NxF2fFdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOcTco5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOcTco5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26B2C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771104893;
	bh=bOBlRD++BZIPNCVzC5ffZdsNtSIDgT3997ABqMrdaJM=;
	h=To:Subject:From:Date:From;
	b=WOcTco5oZcmybQYQFR1L7jZrdAtlp1Eyobi9YvaridAb+PY7DpESyXgfHJ3dQhA92
	 qQgoxKJp5zriF6KGi4IRBVQT04IVHvEhAwF9BB0qnD5analTs1VY6Up6+G2bh9WuIn
	 Sj654nWkBfsmzE2femITORF+ZM4YPxqBpCHzft5jNgOEQNgvo7FYTzn+k5TSakeZJN
	 ozx7DTVt+6d944Xsrydc4b8xqa0ykaxVAvNX07pulL8VmBqkgDQ9XRhYNdLKrA1Rsv
	 w5JC2P1TE/C5Cq4B0Zuv0Dh8u6r4+5AgASPhekQrcp3sLav83JsC9qJIlS1RBLTp37
	 ivlVNAnF+lVJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B78DEF5856
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177110489359.17211.3688541575102070317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c9751a8df5611e02b9755ee825dae203bce9ca405e7679aa85dfae983ccf496
Date: Sat, 14 Feb 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771104893
