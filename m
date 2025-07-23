Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1573419342F
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753235394; cv=none; b=n5ljjQ3e4FvxMUxZ530GNUC0O7wZJUIgZ+piXwfXdQOdCUaj+l4DktOWfj8K9n+GNTJPB/OHzbc9bu76XqKFNp31WvlDwZ0cG+EM7GWTAuShmle1QHxSeiOJBhgkTGUt1W8RINqHAAD8BPVZfRaqBeOEOoMSU1BXKLmsRNkAs48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753235394; c=relaxed/simple;
	bh=bsM4pyKvL+hh8nlMKDxFJ3cA4AUL02Gz1kSkyQh/vGw=;
	h=To:Subject:From:Message-Id:Date; b=JfMBj8AFr8txJgA0U87ywpP76KFEbWqHFI1Psxr+bsMipb0STO5oBDVMGiImTddzEmkNiggyW7qViScAOfbbPaz+jMkIhRZcsdzbO2tRPKcf0dJZsegAiyTJEAchihFwxVo8QefJ/vXK4zeFZJNO5t+Ypfni+iO1hqhx5+wjqqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVYd98sO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVYd98sO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0961C4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753235393;
	bh=bsM4pyKvL+hh8nlMKDxFJ3cA4AUL02Gz1kSkyQh/vGw=;
	h=To:Subject:From:Date:From;
	b=KVYd98sOI+ovOgbL1RSZLMekkYTDsGoKF1sd3KosBCb4u8Hziz1Mf66yi7+A4vPPj
	 cN0G66af3oGnEdondgk+qtKyDIKTVMgiOlIYuE95wGTFsEwEmalnpxgixZBzzS62kT
	 5VhcccqFz7L+eV9NhjDvfD7lYIIpOxD4EvwRlm3Mj02CiKt17oZ5ziLYtKDcs9UKNV
	 Dqwbd/V1fV6Z5rivh73ORXrCICLB+NKgeKmWPftfAuROy+nQj8VnJoJJRrNyWvZupB
	 A8RPSUDtbyEwJVDOrs8uu5SRwAyJciX/MjOyblu17MBrEdMCGcxNBZnk6RblCl6tSq
	 0M7d97E+k0kIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F788C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175323539357.1806.9210031980638309605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6012035c6209aa09b8b1e7bad0ddf03eab54a8c196e6102b167da53d6f4eabf3
Date: Wed, 23 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753235393
