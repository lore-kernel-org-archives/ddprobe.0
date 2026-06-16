Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4364E33A6E2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 11:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781608594; cv=none; b=PL5gW3bxKZnUvNqEVoZ78SCzJdzQHlHrRvjCmWf9YZbeT6hHYyz+iW1hSpxLDHrODqdD4Z690v7sHGkUxYC2DPksRTeg0R6NBm2KRvw4s97qleEnR1YIabNajCH/aAy38rX7hBaM9qKSjGjrFu7P7eMUL8JDmxC2e8qG4q6zm54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781608594; c=relaxed/simple;
	bh=hpaLA+7LXxnbOyNbC+knvHrnAmVfi33LUFMHFkcru+0=;
	h=To:Subject:From:Message-Id:Date; b=W5dW5d2fWffBNiWhRMwInNYASdRD5lXX2t/6VmoihiMmhL1nFloZhNmUbBHjVl6N5hKekeFaIj6FPhkv08YYpmM9tyyckvGIIELXGBFMyYaBGwohEWfJZZAFgx2euzmZCSq5UNKl8J2kpmmZpt7oR76FrWX0BNYC4vYPX87/ymY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9VsWRuc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9VsWRuc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4E5C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 11:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781608593;
	bh=hpaLA+7LXxnbOyNbC+knvHrnAmVfi33LUFMHFkcru+0=;
	h=To:Subject:From:Date:From;
	b=o9VsWRucd17ZbeMpck59FpoAfQxOIVN+jn9Xs3nCW5wBQnX9OG3InahJtK1SUcaf6
	 Iqa8QCRixHGoq2TeVLEo6SWfLKHcvPVnMwsaYyFThdyJ4C5WKZicRBAykYCcSXuSzb
	 P3rG+Xox1EQ8AE7E14X66LmKgWH8nJBmJKxV91hpy4aK3fWlX3yC1kteWfNhiyyWTt
	 lD9QeXJdtQdpK4l1bhDe9bQ72AeGVz/dQhiq8Eb/QUQAqNpuqQkXxoMtjTmDGSWKMU
	 HTAWnyf50mKPPxbawy5uoRJtqk+/xZvVR3ocxoB7dqA2c7l2DpA3RRwpJH6+fcD1YQ
	 uuaSX/bxdFpYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF27CCD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 11:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178160859370.23403.2613719722253801362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2823a1fa587d89be9ffe1b2433bc40a5e4369ca9e9d13307e4d7d77fd15732aa
Date: Tue, 16 Jun 2026 11:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781608593
