Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4445539FD9
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743612594; cv=none; b=hGEOYLW+osvezAWzajVOvt2R2mSVE59Z2rgh5+6ZsMTbwjMtq0KYvfLKUgVjmnH1x8dMEyxOCsjXThdCcIcE7usffwB4o9D766zgCq5uJPFM1d7e4j4tuy2/orNO3KC/csPgYiJj63PmRo7+rYuO1P3LK8aH2xunOjhhTo/bhqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743612594; c=relaxed/simple;
	bh=EAg0VOjgp6fW0CnWZUnNoVT0VQw1JhMeSobI1ZqazlQ=;
	h=To:Subject:From:Message-Id:Date; b=lXyw9VdiaPIaH7zLWm4X4O8Ma8JKg4Y6AUbrEhBXOtaWvpP5KbD3dQgWOicQydStbB1wI10jRIYAWrvIlCwC6PKIT9FSUPQiHHDSJ7qI4cW9DKGl84vvIn5+977UxpOAGg3vx8SgrTCChcWW810NEwSiUPPTlSG8HnLBbi6nXTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOu1xY/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOu1xY/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA13CC4CEE8
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743612593;
	bh=EAg0VOjgp6fW0CnWZUnNoVT0VQw1JhMeSobI1ZqazlQ=;
	h=To:Subject:From:Date:From;
	b=pOu1xY/70nLtb+G7BwnZ8hzeiuKAFJVTlEHVJtLAKbN2a8dt46cvhL49JzSFM+Aw7
	 G8sjMo4ERRMr/s9zGYkXwlLtk+hdhVq2fjx0U/aSrvvlj0SjuqNIxe2kIc2rX7iA6A
	 s1bEwCw+viSN6BfbcvHTtyF6Ut/hoFrkKtKPmuiv0y9I6RZhU9UmFMwLHagIb82/Q/
	 Y0pvLD/8327O3JokX9wTm4rKvTotiqDXvXW3oaH3++GTV0k9tUGgn2Tvjms3JZaCLD
	 0v4LIBfxRWk9xDdsa/4seJeayP5SVjHNRwhXZfLS4Iku0MVoQJYS0wRuVnazxASmND
	 TBVCmvn3ZS4XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D51C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174361259360.1118.12273648629308763934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e049441651a813ab38a28ad2ef7e29370c24e51e305f7db7cc2c74b7c0418f
Date: Wed, 02 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743612593
