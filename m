Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26DB3B4EA7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774011294; cv=none; b=Tllf7BPW9Vvai9L1dBO5o5A4+kfwTSyJr6CQoRxs4bFhTRrEdkjuVmGTcJtX1fOnVLA9XX7Qb+RZ+ab9hFDCeZqliCCdUL+7ZdBFNZlsxJ89eVHzvpj2D4+qWnFOL1JjOQQxa9BFPSfOPoahlKOELHfEoB9ZXPSEn6mGAiYnIvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774011294; c=relaxed/simple;
	bh=OvREtbXYUI7U+hWYP0DQTfYuKuGpnZb/ob+NOt2HeaA=;
	h=To:Subject:From:Message-Id:Date; b=eYXFwiDCT1PVnGPAv4RPtZciJcBSa43YurG7BPWMslBy4useQ+mcamOe4yV6TeD+Kw1u8fMPsMBTvXjAnbBRU7Z4b9X4bPGqAxMVKtXRD4MuC3j+b+XLLwYTR3Aee27vL/s3bdbdf/MxvlpOa00mpXI+0sQzSaATxq/eL3i7rrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qywIRUcZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qywIRUcZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA8FC19425
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774011293;
	bh=OvREtbXYUI7U+hWYP0DQTfYuKuGpnZb/ob+NOt2HeaA=;
	h=To:Subject:From:Date:From;
	b=qywIRUcZ8mSLeCNEaRL6GKGHvecFcir95EeTy6ykWJ9e1znCKoQdNinnUhFavbuJR
	 1BlXYtDbVS09nsEOHMf3Wa285M/tY9UNVOHUodpaneB3spdDk830h87r1AMHA+fM4M
	 8erf+Ux8hnvXRFzA2Lti+THsjQdFH1kLwRFMsarMmFwav2q28yBP3gCXvWpFp3QHLl
	 wnyGAIJML0gJ3x9PPKxEyRdr7UgVjin6syujHAk5YyUBxbT6f/BTrY4jQJs/BAKWXk
	 ag+/qPEQhchy62Zm1hV5t3lF547hH/ZbCiLTa+FYJpJiqVjmiWVLnD6XeBzaJ2Z+fL
	 jW8lrVfgCmZpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F55C1098781
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177401129357.15394.9041613457008129265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a28ffef33a8f8d0dd5a9952d2a95b583b177d65edf14e7a2bd49efcc44d56c1
Date: Fri, 20 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774011293
