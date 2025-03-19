Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADC7374EA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742392195; cv=none; b=hglE/XTVxyTFUKVj4CVvdtmxk5KX79g6C0VXuSqrqHTx+xiBD6W6oieJnN+Z2bQYFpukAquzwxkD9CwuR6+EqtAbMrhJL2Kf9pyGZi91L6tU/FBV/9ywKQxQCNG2C50QcPtoiaGgVSITS36zS8LN0zpqnIeVMrTDM8ib2sqq3xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742392195; c=relaxed/simple;
	bh=i1A6eCK42VwiRkO8k3RttKAxpPM0BZ2zDWNN+xiS+5w=;
	h=To:Subject:From:Message-Id:Date; b=iASky+fSRvFegyvHFLmhz3BjddIz5TjLnpAN1xGFCYnB+y/As6mKdUXpH4w4qGPW5EtSo3pCrg41UNxt/wB2zEZjolgtYoTwg0m21W6N3sML3COSrLNinWlBkzM9q6Fa+cqRohwwXOpKtCimcLkR0/uH3qX417Qon24NlbKAJnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovXrYA9Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovXrYA9Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83B7C4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742392193;
	bh=i1A6eCK42VwiRkO8k3RttKAxpPM0BZ2zDWNN+xiS+5w=;
	h=To:Subject:From:Date:From;
	b=ovXrYA9ZHVGTF2Kxo7pN0blaDKJWiDmoXFSKuwD3jI3oi8ToPHKQTXqoRvHmsIv+u
	 P1i+Dfo22Qs+ra79njO6XogiRq0F14iIjJI8DeiWWFDbRWWT7EbLUgJR9JljOTrrbW
	 QHUviu++msJS39MEW5qq1bGRSZQxwtiQDlGNcNS3ZY71GEBifLFskHNiNAnt4AXpIE
	 sHZsgTiBSjSc+btnI/A6HqkWpxDaPgqBMvN0m+QSHU4D5vmgZ0jU/1n+e4FoVDAaZ/
	 RKRT9+uG6gGuC4SWfnoZwBZo8yVxt9onoHTvdvqoqMgowINqux9hFASS6M9igU/zzP
	 ZGkNLUOoqmSSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D13C35FFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174239219365.21550.5989914592578344221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e4d62351933c2704b7e3bde0f8ca868f980e48f2a48712fef14920e3a83cea1
Date: Wed, 19 Mar 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742392193
