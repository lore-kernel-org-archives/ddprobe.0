Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB932D6624
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762859994; cv=none; b=pcm5EvI0X0Xv2t/hfPsCasXncuBKBj/cW2acFPn0QMsC7W9QErQAXEje87fDOmO37+vfThU96sakwOlYcdpwGjznyx46HLmetOcOuHzol7C1kDm2rireVsRT2cWAsXGCrZk/nbwYQp171JjEy19yDbW9YffD8m6SP0lDc10FqyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762859994; c=relaxed/simple;
	bh=4YmE4AsLqceGvWOzWdjz75GZ7E2Sg6yDJw1N4pog0eg=;
	h=To:Subject:From:Message-Id:Date; b=GqfYU0xly0VzX9KwA6+hbN970/uR3sRRvOF47+RnR9qR+1kv/rYemEeqYNJkgCUZRFlfnA/JBqhTHyyIComkEoDDGJnhAU1HK50u16K7JXNqzmuyUvAKcYCB1o9CJ6+EftvahyFur9IEzCxLFUTGa6OCDwp9ZJs8nFWH/ArOPNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmhLta5u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmhLta5u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A710C19423
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762859993;
	bh=4YmE4AsLqceGvWOzWdjz75GZ7E2Sg6yDJw1N4pog0eg=;
	h=To:Subject:From:Date:From;
	b=dmhLta5uFa1juQnN0XoF6i+wvQwa9AlWBZNIaadUfnl6VMJN966h/smez/zZGzkQb
	 WRnYvg2P+LwHd17K1O6vJYsjvR9bpKT7EkuD9Ieou2pUPrFR6zXWjINbm7h0Q677na
	 gTaWh398FOJDmWk/QZUeDUAjspndIFTnE3/0mDLJ/YvLZRjnxHodayGT1a8NZ/P8E7
	 wkk26z0NRXHKX6pJ+UqsNaFD81R1QEMGVCiYXDZYiS+t70dy4bTv+ST/JkDjTnmaSP
	 B1fHsAOoYNuaGKFSRs/etG4wT5Pa0Q3+8oR/2CrzWjsawqQkakZKDWpYSNNTgVzvdZ
	 G91TVxMRXG5Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4BACD13D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176285999357.732.1921265863923611802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc8060e4bfb1816559eacc2f18720ecb36f9f071d03dbdd1c19aa46b7fd09383
Date: Tue, 11 Nov 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762859993
