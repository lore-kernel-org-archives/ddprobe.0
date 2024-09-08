Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E96E28EC
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 04:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725771355; cv=none; b=SxkMrkDdAg+iAWfjrwyDH95tmCmmlw3cSkYwZkFtjLHlIHjZeM9jaLG7iQW6oqRgkfGUS8lc4di/5nXLK8beVnlaSLQQqhoCKrPiaaKmAJqDcD4502u+0JDLiGdPRVRwQN+h2NZCcgJn5/6/jhXIS9WJcyrlotxVdQ1EUVKK41Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725771355; c=relaxed/simple;
	bh=aZV6Gncgobu9Xb/53+pjc6a1y8uDJfVsgy0U/xdcP1M=;
	h=To:Subject:From:Message-Id:Date; b=hVpfeqblaWnmtAkyWibkc00xYW9BSxwrlV+AUHyt2cw8WJHveyLb8dVTQW97UM+rlRi4PE9g6OLz4k2jIiZVxt19RE2Lr0SoaQybiU/WWIvKGnRZXMDWJAQWd/dFCMx7+s3wlbE+m6bTPFJjQzGIuOM/zin5XhQl0pXmLsQpz2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSYEFFkQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSYEFFkQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9BBC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725771354;
	bh=aZV6Gncgobu9Xb/53+pjc6a1y8uDJfVsgy0U/xdcP1M=;
	h=To:Subject:From:Date:From;
	b=gSYEFFkQhk9FbBrbG3NOUIyRJnLPnWR9/ou9a2wtobDOpQjUjSkzwyUSlEJQPoJra
	 cwFWcp1wvZT1vHt19kv7q2TFIvKw/4Azr9fusLrwChliz56Y6sSM6BypVFmhY0CsRN
	 hf0G/yxPsLN1siXOgETVZrtcl8EHrPlw2Y5WADjWVv9D1X9C0aSkW4qdCNS5/M0hQI
	 KqbiyHAM5k27ocGP3YXfjBfDv43ijARCnlezYSdHO/qK2HPn5v0Iwh3Q10SfVhxO0u
	 whGLazlNYhi7PhyQbyDTmuTu0wgW2B+gkKAQTi3bUqSvTo5e6TZCtD/i5WnzdOlr5g
	 kkb3o6DMd7Zog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997F8CD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172577135360.6878.2139182697393778264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cd59d98c961a6e7af5e6920ccb0f3878777fc8712641220ed9c405056663c4f
Date: Sun, 08 Sep 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725771353
