Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADC41D68C
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708619897; cv=none; b=aHzaqE136Cxt43WG5kp2REslmwJgIQfoRX1c4o1odqv3TJ4ESY66QeA5raF40Ev4xWqHoBBj07Q4crB9XIbe1sEaKFA2Onf6+XGTZO0ghgmb0KHq4XCWxvekOBL7pGzZxxxvy9v/kNPsN2+esJEMBQCK+xNpbM3hD1Um+oUDjcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708619897; c=relaxed/simple;
	bh=jP+LQ4fs4BLqNtSFHjXlocwl3dnTt3ggpMS13gr0TxY=;
	h=To:Subject:From:Message-Id:Date; b=oUtgAPXUOBDBTH7YRA9LbQt0DkyF5df7q84vW9wY4R61XmoiuERv8G1QslZy7UNAtJMcbpHwVkrO3SFRSkD353lUF2pTaTsZH5UXiQGPkRTT893JLIsBFrsrLVDrzSwwY8Trf2TERLXuzBbxBGsNM+W4H2PAUUZp1vGR8vexbN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7ctT0zx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7ctT0zx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84010C433C7
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708619896;
	bh=jP+LQ4fs4BLqNtSFHjXlocwl3dnTt3ggpMS13gr0TxY=;
	h=To:Subject:From:Date:From;
	b=a7ctT0zx2CiIeN/l7ODKl8POzeQQaSojUPBjOyoAjeRdjXXiuxjTeiTP79UZCodPB
	 RuZZNf0q00VmbPgB24jAaXofQbCkQnU07R5MHX8iAFUg9GTLOG/naMQwgkBKYPOLao
	 pLzVoJa5Jjh2I9NzstpOYk20+dQYin1f8zJ36nUSVkb9y3R7b7+gcpRPSS+zo4OITK
	 ZloJcFGPLHf6GYkhc5vDH6bEJwem/Gf2vpmLSSvP7B2lO9Pmu0o8Y52upmRdrSbE+E
	 v2blGI8MBM1LM3qF7zun/Qtm7THmjPor4+h8qLK6blIN03/byfr/9NatDF8QVwjN7/
	 vfpPVmAOg/udg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 669C8C54791
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170861989640.28112.1872972285120659886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2533befae9da46f9a815fd5f8b89488c88ee84e264525aaf475fe43cc3038cc
Date: Thu, 22 Feb 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708619896
