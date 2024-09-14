Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B72547A73
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726347954; cv=none; b=enffGzFMyJMprGa+JR6OO55VR99Df5JZ1oKEwURligvITVaG05jZVWkdy1BL7wVKi5Ut3KQRsfL5vID0qHDtIfN6RrKc4usrwF+SAgs7lBuYSXcyZWnbkiwZ5p+y8IP0jpqycHay7hqjKSIpYDZHmB+IhzYn5pLXxD/XmD35kuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726347954; c=relaxed/simple;
	bh=FWPU5x/Ty3TD3BgAq1kDs88byntXkmD2semakBOjr+s=;
	h=To:Subject:From:Message-Id:Date; b=HeV1dqPtQ6A+g7gNL+qfUow4RADIB3yu7dMTwNugF/yOE5EKMK1N6XoHcKur5fSIDBJiKf6NP4ZrzNvXb8odvgNfS0GExVoAsZNovH9KYzXCcFYiU3PSPGf3Dy6LMXg0yAcgVodxVLYIv9wus2BpWdiVwRUs1g+hU4VHKk4RZL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFHtZmE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFHtZmE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F9CC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726347953;
	bh=FWPU5x/Ty3TD3BgAq1kDs88byntXkmD2semakBOjr+s=;
	h=To:Subject:From:Date:From;
	b=UFHtZmE5mFDtGMz+nKxG5b+Wm0ZfFI/vMlISebXjRgrOQB1VpiCVOHwA47bSk8arH
	 Pv9/58sRPBpV24boJ4fqlqoar+6ohdgUNNkzaJ42XpBn1iC5tpStMFvc3L23zQLp18
	 Z/luMT051Yr4ORabQOxLJqQMOR1Ek+/sIvXo4qeSPHNGHcE+ulaE3VGJUjNxydZDT+
	 X+rM/QzLJa8cdpA6q2Heof+D1TsEwP2fumaPe1HF6Xv1OaVhVcDSDb5Np0tPUEDl2V
	 76Z4PGng2Qdh1Snzpslxl2QN5xgj1EnHHU5cbp39/3jYXevVOHOgu73jd8710DV83R
	 ZGNzmmcwch0GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F042C0219E
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172634795357.17747.6138245062754241355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8172d7ce230efc65b76196a7e7a6858aaeb6ec59a988015921900537256e696c
Date: Sat, 14 Sep 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726347953
