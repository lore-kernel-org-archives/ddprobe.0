Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229E12D29C3
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754960394; cv=none; b=N1FohA0UmP9uss/d3m1SM1/o2Pgru9uFTRD0yTPNDbpRnrWc35/DMQ5xeS7ToFYqv9FDEHtxH2+6IlnnY8Xu4rcJFGD2jbiPfU4e6U70+j/yxuDpTbJzM/YV5mK475L+tzoaUUsHlRhRSyeazf4MNPGq/FILg92xtKWDST0lBPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754960394; c=relaxed/simple;
	bh=GGbD5FJ2bwrgT/txCTBYB9ikfJ5zkAXjyh1qQ3kpcuE=;
	h=To:Subject:From:Message-Id:Date; b=LB3D7pZHRb0V2JvOjCmf3fJDDX+rzhF9J1ixBAeJHUTFS8zxDZnC6vEXbmRoGMJr43x7cXMrEG3mQW6vgysyQq3/km4qYFCTxhYtmlwS5sQ2+wDTXqKKmMku000j6ywiKYeRhVag9d4O8IbLPuaLZR1hMFqZAAEkPM+FbiMASK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBjEhjtv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBjEhjtv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAC8C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754960393;
	bh=GGbD5FJ2bwrgT/txCTBYB9ikfJ5zkAXjyh1qQ3kpcuE=;
	h=To:Subject:From:Date:From;
	b=uBjEhjtvyRqUJj61QZVzOLN9BM6/qV/YkrEfZA1OJ6pr/MnBTyk1F+grM9UC8lkg9
	 ax3j2bCnlr19tk0YN18YD96OS+i/lRAmbphiUSLbMnL6zNkesCIUJIx5CMeDL0rlnn
	 AA10/BPrtj744dkwzmpFixHijLZmtVwJhI5MAk8JrbVQu/O9pygHvFWPWt+oUdmlUZ
	 +oia2iSczj8+GFikqjwrHImrqQTuytZHd7YRAsiQ9NhBQeBlQmC4Pb3yQaS4BFiAXo
	 pUBKs3OAFEUMCDDcuwZ7+CQg3KYmyKNlo1gaJMDZL+HXDUwRWZ0SP0WZsKHQe7IFXZ
	 qQPn8Ftf4MG4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7D1CA0ED1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175496039357.10931.15409045937183056497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cfc77527bbcf783044fb9a7518f8391fd7af0e87b6a76ba237544397f926ee7
Date: Tue, 12 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754960393
