Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0632D3358B5
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768476834; cv=none; b=rKSzZ0Ndtg+Y8ramBxQijTnlsk+C+5s9S/BH5euYL4nlIag2ior50ycsiwrazPAaPXe6KVRnF0fV+lon9iAGt0UiwTh00kE3H2esCZoIKUrAkzojQDGqaj71ol7RPcBBy03A0bn6RM4dIvtxdpc3TJibu7Fb+gmUl0M16W/PIGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768476834; c=relaxed/simple;
	bh=5n1IYOoPj7iIUkWb30iZH02nYrjiF2D2pz5m5Nbw3Ko=;
	h=To:Subject:From:Message-Id:Date; b=eRqseGbIoL7MNNnjIDxmnvQdISVibzyPT3hjUNsFvL/xcSE9rFGj73/yG7vlNHM/9pm0Y6FZrf2p4Qw0gd99OZ/qKNKei+taAQr4ChhSRPHukJYvUabil2R0qolY58be4XUO/F/e3nxVeHY4hquLO62zd8/kD2E1Aw/TfwcnFes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvf6M5Uz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvf6M5Uz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBCBC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768476833;
	bh=5n1IYOoPj7iIUkWb30iZH02nYrjiF2D2pz5m5Nbw3Ko=;
	h=To:Subject:From:Date:From;
	b=hvf6M5UzzDzNa5F7KqG6S43JOWrmu3Cn3S6743MB77eu1yx+ZPgP460ZZPHDgAvI0
	 jp7+9bP+f9+DpLGgXbDsBD6Z3Q3swrM1KYTOJAJpO882YFvgrLqDvdPvloeLNTks8q
	 TzHvDUdWlnB9pcNaVtGecB4iJeFuXz3K1BkjmwolPC3M4IZKmw1qrHpqihkh3MUbmh
	 vGKfgchuv79Bm5Fb5p5irj+OCIGbK5/3ixT78tFR6Yferj6zyWMBIOuZBkri7VOfXV
	 +RDBOtZFiXT+37rngNFHL4rSK+JPiJGZfPA09HVOt5hUHaHCdF4qCKM7u1qgzzw7w5
	 aD7O+N8ui5Dtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F207D41171
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176847683357.27721.3835971489189535549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afe61a69f50dd4ded10766551438651eef55c46975be88e35df596a932368713
Date: Thu, 15 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768476833
