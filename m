Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3884426B756
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768955634; cv=none; b=pgut/ltFjvix52xJwpZzptBWlTJM/gQNGRMhnHZREF4XRSKwoqRa6BqGLGQHMqtSq126HNR4Pg7QH+24s+E/TOPEQsgrQIhTzQ62A9xucYkwZS/V0IbyoYe0VVUYYwy6HJuOCJJ5krb8q3keRO5Yn1nDcHBwN6ZCHAhqOnvmYHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768955634; c=relaxed/simple;
	bh=G4C58iyAnN6H7FA69XPkfUrVc2xcy0p4W9M2UafFCAA=;
	h=To:Subject:From:Message-Id:Date; b=J0eQcfM98wwBBRirWcmb5QXPU0mmAcdmXJX2xlx3eMGIXoHCpLNoVBQaXPqS56s2tDESE8oDQIdEZVU50GN+pFB+mMlQRufN9Qwsg/V26Tg//8Z7gY3h2vOrJ7+FKwNA3wF/HEDfwURThHDJ7c9YTWsL6kFcg7H7ZXaZcxA7tyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuG1gF0R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuG1gF0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D2AC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768955633;
	bh=G4C58iyAnN6H7FA69XPkfUrVc2xcy0p4W9M2UafFCAA=;
	h=To:Subject:From:Date:From;
	b=WuG1gF0RHSdJt+xg2q9HfC3Mm2ixbKzn8UBB6b1Zm4rUy4e30CQBYMBTjYokTlHXx
	 eDamOMe4NfZSOMHKe94cmwQtKoLPBmECIoM2fsenpRVF/PxwqOw2k/JoRg5oxDA58K
	 VFFp5huZ8ZAdstxdypsY9Jdc5aIZBogdNe1BZeH3ERPz3HZXCUf4TYJWqH3+brEj1q
	 VBqrAOMW6O71FwLQ1Bbi1fdLkLT21jA1AYE7aoxlhPg5yxveuElJU9jpUMdGd3xDTD
	 5k4flc3cdCI2bdVb25EfjnjQXJb2GelKHBoR2cLlUlmYcbkOpK8Ohi6VtKF/tM5ygk
	 WJKzlFRhPPFMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E39DD262AD
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176895563358.6990.9455841717516814583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d82139b987152ce7aac019da5d4e4ba5e02f0a2312a25693060a1a15a535ea1
Date: Wed, 21 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768955633
