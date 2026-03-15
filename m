Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D075137A48B
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773596093; cv=none; b=jryeAW5uX8BFWQ+ZqjA2jqzhMNYWr58RqAr7tJAZsy8DyGh1qxlPyJchOaSjjExSQxZ+Yt1R1C8wR3Rs7EMpFB9t4bRqD8Xp0eqNaIQNXb5HT0FmvZ4O+GwQv5yCGRRWyiQaMN3yyRUBlMEyXoPNbi5nrLSsGlv/MfKeUm63nCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773596093; c=relaxed/simple;
	bh=8P1SXVIx/MznLZJ+i8c93iUVGKQBuSPLpJeW8iuMiDM=;
	h=To:Subject:From:Message-Id:Date; b=cGl3VFh6fx0cDSr9UhO5S32b0wfQsp0dKDjZ1bigg+gXbmJwOYByESI5aRZoiGq4dlqGfyak48hqqoeLUDIeETwsoywaHwnoYsyQBreP47wjotw0+DiLP4EzVGNmRm7ExKDExqmRtLJP9+v6eennjYycSogXDsx3MOxOG2Rko94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddCHRwOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddCHRwOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89A1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773596093;
	bh=8P1SXVIx/MznLZJ+i8c93iUVGKQBuSPLpJeW8iuMiDM=;
	h=To:Subject:From:Date:From;
	b=ddCHRwOmr9XUqEJgGhFq3Wk6YXeogW3J3WXe2wLSog1vAoaYk/paOqOCtJEvLwHQF
	 QFnfxEXrEqJPatfrv7taznXcRfgYi8xUVrtKoDGcUmVGG90LNUd8XrGyOrs6nSAI4i
	 AbrDN26HsIiuu+6hm3SS4YPpk54YvnWUTVsKg5GdS6STxQpdXkTOFg1QOBRehN7Uzr
	 CHpiN+UZ07B9FnbmffLjJ5+1uwUZeSMPjSSxH33OyhmKwubx8DcyRHrlEz1QhHWw5h
	 tZERQL5ts+fZgNB2GcH1dOB8oeWb8+Uts+ExlE3SLK8rpsy0r86WFR0mgWC5qqLuPf
	 60gtEnGIGv6DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928FEF30271
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177359609358.15828.2750005970133668356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd6b0eecedd57d385104232e1799164219a7da64454ead2b1d3379c0c4523d17
Date: Sun, 15 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773596093
