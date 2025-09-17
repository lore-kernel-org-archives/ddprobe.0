Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0A41F3BA2
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758116394; cv=none; b=m+Byxt1icRBwVcysNll/D9kukNDqw/mLAE/uqh1nzCxAHwAyJiiATKSOTqPYrOOEHCaI5A94SmEMKH2GEFvsjF1IITTpqgg+a1BAXC3XH/bOuVLmH9qmGTfEDYPLg3b/jGiwGACNjIT3nhPDLuJvxzUTCuSjukD3UICeMVTRDKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758116394; c=relaxed/simple;
	bh=D2S721Tw7w2J2z8UtEwxsw1YVLhfGkO1Tim7nK4Pf/U=;
	h=To:Subject:From:Message-Id:Date; b=A4opDK0lNvqyY+sM4eiHLH7u8Z4PNe1iTrNvr6x8BcXnjIhA4P3fGSa72G4hvZ4sfM/HSGkeQcu0kTQ00XjA7McotJuxO1ZQgmf+7Vy2OSup4MuBtRFQQT3XyMGKuzmOzqLg1T9cptVc5/bVtI9gqQLolTqEf69bylmW8pjEDnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6YmdddI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6YmdddI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6960C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758116393;
	bh=D2S721Tw7w2J2z8UtEwxsw1YVLhfGkO1Tim7nK4Pf/U=;
	h=To:Subject:From:Date:From;
	b=e6YmdddI+jt4E1g17wfMcoRidhs4LlsG4NWSRj2cTbWSWrrxVTg//vZkwE3XxrxQt
	 1c4MSJhlBRXsfj+59lj1/qaDpYMjGI9BqDCO2noY75pHCxpO13rka3qSMltjwzfKXY
	 GdFg97kIkLG873phHG8BamQQ0M3zG330wsxijsHx5GMPUvvJ//sZo4ROAM6N4e7qYB
	 JMOVFgO9REXfWf0g/0D6IHBceHa4J1zSKTXQsyOHJ/yarCK/pyL+SvpZCnFJqe6Mtd
	 61IehJ5T+XF4rtxo99pqNn8TvC6l/zcEWjv8K+fgg+bAiu/O2EG97sW0Vu7p8fsV03
	 ih1adqBmkV8uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90493CAC599
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175811639358.29213.8159185345155257771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72457a546abe33478a4e62bc1fb8b35150f779bc0a90958085013f6f28309e27
Date: Wed, 17 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758116393
