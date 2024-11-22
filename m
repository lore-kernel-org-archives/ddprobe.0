Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B368230987
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732249554; cv=none; b=BFFtkd3PHcIPiJb8PXNz3OZa7eGR37xnahBUzrXThI9C96naMYGiWxIL5ju8UOUNJUCtQS2kqNPQnfqZbf9mM701CNklfrxgWzMuSPaPp+iGYpTxzVN15xiJJJ9lH67EG2YAC4GK7MihcIlETbiRJZBNKWA3erX8Q2phGlB6kcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732249554; c=relaxed/simple;
	bh=zVBKF7IbRt+se0s5sbym3iFVN/Q43lkWriuxGk/v/pw=;
	h=To:Subject:From:Message-Id:Date; b=sG9m335kON2Qu2Hi+jQs15uNOc9GgFAw5ciqkJmaMF698cqy0+M/zeJ1lVdUCRknj8N64U8Z3M9aGMW0tftydxA2wjDcwEhpEpY8Hg7pCa3UvtpGhEqt9KgwxVflmJvmHK1Y3OQK8Gfh37EKRJrJIls2if+4zNcyd7SVoy1zx04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjfkwXqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjfkwXqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64FBC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732249553;
	bh=zVBKF7IbRt+se0s5sbym3iFVN/Q43lkWriuxGk/v/pw=;
	h=To:Subject:From:Date:From;
	b=IjfkwXqJVXEl3Vgp9sOCZL1M5mXKVsWC4IJdGiVRGVVAwn/6eACyRvKqiUHLjjuI2
	 GcHrB9ev1iMb6h6MM4HNaadqBkwWCGdQ5UhhXQ8KKwwMGAYZOiZaFuA6mFc8hd6aQb
	 CcOsBI8t7TxZk4s/8jPw3TZ1XqxGrN/VWgeR1WeUBB798BpCN5kZUPp4qgWGQED010
	 J2/W6iQ6iDyBlm7i2aLsVBGCaxg7b+8QBOMEK2T2YJAug4q8hQ7xxqHOHXfMhwFWng
	 XQzkBw6H2J+Sn7q5yfrdDo6DFCrznq/rXLKtu26jEW9qfbd2SXs0jpb7QPLd2AycRn
	 mRkczF0vnac0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A58E65D2A
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173224955365.17808.9368322322854316590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f56402e17a595c2233d1d5d1c8806412c47dd883776ddaf0a6f4ee69e9bc91
Date: Fri, 22 Nov 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732249553
