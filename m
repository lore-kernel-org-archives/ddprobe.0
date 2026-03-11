Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058BA3E0C4C
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773249294; cv=none; b=Auiwk1lKnloHcWAE5UiGsdlCpfM9cdu/oO5546171QF8cC90CNvDMu9ZVvzniFkGxYgLiITPosuFfwTtTKyU9ECz/Nyv5Tm64fwS/W8vqd5iPNzcbqM6pQuggok/o8i2w/mVksDcTf3cIhI9xOj8QP3ITavBf6IPRxtxB8Bsqb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773249294; c=relaxed/simple;
	bh=iHYkS26DkD5vXpMGgVUYpKf0kj0/ML9xlu/GtfabyBw=;
	h=To:Subject:From:Message-Id:Date; b=ZqV2zLMyXSGbInQblvx3h51Dh9orWZHgs31ErLv7tbYhtH5yU9MyrOxjViavFkccspksolujBdVX8jFrspPnVsUDlWfE/wlFoNKCM3qvcgVFWQ3UodRfh9Vay67GPqxcmZH7vqsf53aVIx0hsPAUg17vJmMGaN8BQQn2f+F6hmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFMbH+JH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFMbH+JH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81E5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773249293;
	bh=iHYkS26DkD5vXpMGgVUYpKf0kj0/ML9xlu/GtfabyBw=;
	h=To:Subject:From:Date:From;
	b=OFMbH+JHMVh4Vf6zkZpGwenX5SlBImukQu88CG3Mbj7GHFjMmtH0Xm5uESnSopvBw
	 f1JKmtJ2o2TxU2BsbQik+JCeKhg05Ucnkwls7AeO3E0xEpIgA9oc6CAyRk2ecJAg+1
	 CRs84k5gKmw2w3tdA8UHW5cGRFEGmQ939BBcA1h8XO5DdjhamDjjHJU2XKJth/r+ze
	 A+82Bw3gF9rJO96I67fFawE8/YbtrCYKvoEMLPqaLtmfQxGvImaNlkUchLJwoLx42m
	 5eQre/bZAlj6ywukIq5UR6YHnJumjgF6WJ+S4t8o0dRIVv5wbYbz5OKQuQH3GbkVsf
	 rPS0uI5AtOfNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933751125857
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177324929358.10383.14531968749059928684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7296814ef39589a9ebf1704861389087b9f8f66f5955dd0637a0114b720ed31d
Date: Wed, 11 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773249293
