Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2C815E8B
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747463994; cv=none; b=RLGvF7rGB7VhZirdf7RMNFJkcEcRKC2we0egDNVDfE9QiEmhUHE9EDLD4gvlhYZgU71u7ZAjRuB9VBU+XBAXmXGAZn+0vflnGIz22yRFJimFKZe9uTN1FXdC00T3K09/skmiGzWaM+vZnqErLpGn2Q5jD1MWorU+jcPjdvmWTls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747463994; c=relaxed/simple;
	bh=gfqcvNCiPPvdw60NyuelZL9Yu9a1cX+XMXv5FTo1eUI=;
	h=To:Subject:From:Message-Id:Date; b=td+MnT28L/ecTMd6e1ddokdtpXffm34pB3/JTyhlKJkjjbbcBF1X5Uj/3MkwxrXobcYADtQQBvm6flkeGuzBUe8FQpXPTGNZKgnJOxW2dC/FpOIXCyR5O+KmQq5XNjdDGASgZOX6ohk8Tl1eqlBJxLzGrAZ5zxwDCRwbZxHcqV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5AEj2/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5AEj2/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE4AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747463993;
	bh=gfqcvNCiPPvdw60NyuelZL9Yu9a1cX+XMXv5FTo1eUI=;
	h=To:Subject:From:Date:From;
	b=O5AEj2/AzPLGWYpmWtrcpdMnnm0Xx0a25roqcGZHHlEAwSIPNWW0xclvTys12LIng
	 GRgrK1wS3aLXP8xRiPIXF7RlB2LeqJe6ThkohM9UgbUc7LgUB+u1gjxYrg85byuJc4
	 WXdiIwRvcIG38S6fS1UMSKEg0qq3ptQ//s9LUsXFUkQXINZOdU/M6u48n+Gd2aU9Hj
	 QvmEfs5f+kFV3VSWFQCGh/skE6SWCUuISP0KqsDuCDapw+aidK8TJZWJPP+9BwFonE
	 AtrhELdSyei9Qjv0Qqv1PY2eRslMTFiplGW9GNU+LPIrxDgRuD114nj1q4aqVSlNbd
	 GVjRNK8Rx3ygA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F32C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174746399359.12763.3842938576665165127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90b3454c801beaa469b10c04939b1d6ff972d0e8da572555c1c291eb1041d5b2
Date: Sat, 17 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747463993
