Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289B6261B96
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760189394; cv=none; b=FuJXzz2UGnFzv3jmYsqkUjxnyxyMKCUJIl1JbxPCv9ccIFJ7YC44DZn5cuPsLv4zYje3iee8rHoSCTQD2c+0QK+vCoV2yBuhbwEG23mgiXr4RK6pnkYW3Yb7CMol/73x8skQKDP+oJuPtIr5Tabm00On9cubPPJSwsVbUaNkUYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760189394; c=relaxed/simple;
	bh=1UtbRW6Mde6HWTYUoHwqrb7Wovwq07wRiSyEYEGuCKQ=;
	h=To:Subject:From:Message-Id:Date; b=W2PuX5No7euaBLYJhtgZ269H5X2NEE5u2xLr+VVNdRGJyIEWwyRGXXNiXJ3i7cLLUoZB9T+NiYan5bfg5cKhteImlIWUveh9jTB99rs393qWLuUgbGmMqdR2x03y8ZnQMNvTSAsADJd/TiTsSqss1SHIp9HNJb1BjzNIqU068sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=muAQdTXE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="muAQdTXE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BB0C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760189393;
	bh=1UtbRW6Mde6HWTYUoHwqrb7Wovwq07wRiSyEYEGuCKQ=;
	h=To:Subject:From:Date:From;
	b=muAQdTXEwAxHiRm0UdEcB1aQDLOJy8QxiZjPbvpbXGs1KwA+5yw7tL+7jHu1snMff
	 ko4yEckZfVyvVaoKwMx1Xs7t6Oaa1YUrg7NSDb6bZ6+2zAHpqm0F1qvZ4wwWWVYRIX
	 +g3SLlbUoXXooGsADJ0MIg8HsQw5YR5lI6nHGzf7rifikOnOCBM6mNMDcogTQcci/G
	 Y1ngn1KAiaTEpdzdZh7nSYEHk/E5tvL1ynIlRwvDTHUs9QnzOgSV+zEcekr0uarY93
	 bLon/cCtpfL94kNlEG/C0L7XbRllfstOqizL2rHf5lL+JKe0/feyOgN04T+jMT1mpk
	 WNjzkloH13lgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96341CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176018939358.4394.9005563775721672036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a2ae30e46165055fc9e1687c5f65800554828a6c40999d8a8d0960294dda26f
Date: Sat, 11 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760189393
