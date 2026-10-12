Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68BC83FFF8E
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791831634; cv=none; b=daDvBtVhufzmhghDCY/1P756WZOCHS/XGDEgCJzmobxjdwDr3Xr9q3HJcp48L5koOMLLYpKmz5yWuZ74i2ANajzQ9OYK0WjGQMf7Zs7KtiqauSN7ImgY5g0Lp3sJRf6smmUGX2rA5Om9/lb269OZvi4TDHLGR30Quk3Do9SwH5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791831634; c=relaxed/simple;
	bh=Y8O+UFFjSPooSYHH5zhJevKBOs2hCRuJKfub8vUZfh0=;
	h=To:Subject:From:Message-Id:Date; b=bFYC1Q6llxcwO3BYMf6ewwPHMBjE27tJDd5Ey/F6mDTZgIy1FpypdyJNPcytBeWmfcn7Ra0x5P6FQd6gXJQrJ8xMx4w3/r/qYIkWUBjLR/OMlmtM+6gPqdq0WncIse3T9jw2tSYoGsSqKYuemqBdqS3RjeieIDnAL1HfVl0d8Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYfWTRoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYfWTRoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6E3C2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791831633;
	bh=Y8O+UFFjSPooSYHH5zhJevKBOs2hCRuJKfub8vUZfh0=;
	h=To:Subject:From:Date:From;
	b=uYfWTRoZ9zQbovu6yGabbmnegA6k9+IApx6FHvVgvKR34uY5mKOl5GM79Qc/r8jSw
	 lEFWJEULMX8XfKtlUAvCbTu1euKz7jUfjECxtTPV5sisl48rPZeamkI/q/ZG+GZ2O+
	 BtOZgCbbp9GpeA3BxJ62EYIseLFJsDyUM+CXJBHcqmqNe0uFW7H7pTLOPUlAUuRj1a
	 c1Wx9QkbYbWztDkVuWeYbmOwmKfFv3THRdfLIeNAZy0v9UdjnIQqCaxNrdVEXwkVKD
	 s2Gq6PvaM+eqALTMjnWf7dFxswzqw7ruZE5WHe3nN2or++HmLyM1rZD5AAFafSapKd
	 H3bpasudR8XAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0DBCA9EDE
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179183163369.19262.3354029156508869031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5106df384fd58349260c42f1649eb6c83ae2aca4eedfff4226f0ba046b89aaba
Date: Mon, 12 Oct 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791831633
