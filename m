Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525D226AC5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790042434; cv=none; b=l+2Zv3j9umaAwdDUIKxnM/LTSSxYnkSzQiSCr029pdRHJMRthRf425YaNCo9D7pyxl6vaViLZMlpiS0kE+nwImLy/1wmrVEUlbVkJjVw1WJlTjhi5b5DiTgcLDVI5/0feFXBQKc0qJOaekT7iOAZsQ5RraFTNrD9GGsVVWj4w8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790042434; c=relaxed/simple;
	bh=FFrsYUAK0MtdU8JRXuVhSfkyy6DCT8QHoRsHEsCSmHM=;
	h=To:Subject:From:Message-Id:Date; b=k01LMraR2DnPO9o9ydQCCTqvSC1CAdxOvGofKqu+XAIJ9Rfj76/fwLHzryahCikm0lZx6hXy0GiXBV5tpEGWwOUDxPtqjUAp6EadvsE6u7/1onlG69YQFAMXGT5MI8i7IC+uKWgnpkFLToBA4bGdeJwRqFmlSG9uQtB8u1r9Nzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eycLBDlX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eycLBDlX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3408C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790042433;
	bh=FFrsYUAK0MtdU8JRXuVhSfkyy6DCT8QHoRsHEsCSmHM=;
	h=To:Subject:From:Date:From;
	b=eycLBDlX3cKRFIBLDa9aLQuXXeszuxOOTfcpgFUTwroxynn6KUZ2vC12mBKVySLsF
	 DmE384Yr3EMl0afMLPhchRHLTFMojPvqlVBuG0ulbNoMKtcKjzqjeWOj5/TUND9VQn
	 57cMZrIQOXLC7aGwPHOSmqobS6Jqgse34cSMgUiaaOskGJKC0zwk3u48ZXpvlp5lIw
	 jgmekmLH6i/YEHCx0/WDSTsMiWqzVDgra4mUtLmjkPsvoNQrbYO4eOjJv1vtisC8OJ
	 m4yV4h7ovWISL64vT49uVWZrvl0pBVsfcbVgAdt5VjTx5BBjKB7MNdDpPtXxYuBI8T
	 gR4WYxHZ69nyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFDCC982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179004243368.5046.13640562557068428677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b7d3a0627c00bb6147ad3dbdfd023798d28c835188beb3737b0e72b93359f7d
Date: Tue, 22 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790042433
