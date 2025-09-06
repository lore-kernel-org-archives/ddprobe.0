Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6A6315D45
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757194194; cv=none; b=tfCBzYntWTATj4Hac4/iHCIBC649rDq5AKRBxmsm5YTSMbLAVx6Ne6+AOZx3WO76G7k6Mhmk4I5FC5FdlGnM/ybOT7Vr1AtfkHfgCbW0pnKDHFduA27FGRp//QTB+nIN1mJBn2Cwbexz/TvXGyb7SS5QZgIof4tvRIAp7OP2jYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757194194; c=relaxed/simple;
	bh=X/Bj8hOMFJU6gtEpgr0nB2wjYdKi5jcTLxR9Sp49gYI=;
	h=To:Subject:From:Message-Id:Date; b=TATZneRRPXCQjAB+q0pdrQzXtLpRKC1o2uE6M+TfbifiSZaf2vkuDbBgLovah2E1lNuHCYb1bH1FnFF7ISf+1HYn/sja59IogO5L6+bKEoQT8VGt6IGhuYHkPSXRchKN69x8VU0cxSe4w1uJX03fowiaIQ0vi9GJFTaHp8e2N0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTWw5L3F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTWw5L3F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0509C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757194193;
	bh=X/Bj8hOMFJU6gtEpgr0nB2wjYdKi5jcTLxR9Sp49gYI=;
	h=To:Subject:From:Date:From;
	b=uTWw5L3FvF4KgTEttrOKvRLl4aJwqnec7roh1Z5NqcBTgyxEhd8tp75MSlB37BHFb
	 WsXRzCnvdwzAE5YDiDfCmoR6fAZwX0Rlc3PAUCtRbSskjAbqcZr+QEk27ShfRE31vc
	 X7Zhh8pkSAykEMIx/VGztWbzQktcv4tXltsE6F/1gl3HLTXrCNQndCaKuJT1EuFmfJ
	 OwZWeI4dMmlGohPEZ6gUfcx0yx8J79JLotyv75uGpQTmeb1QAg7YaECaPuCaV6B9IX
	 5rt/fModoE/nLzWS06LIHPslun44laImPecffPjd3q5YNZooM/nJI7PQReQFXJJr13
	 IEGu5cpg9h/HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F13FCA0FED
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175719419357.18006.7564514468082045209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b55cbeb04cbb2a28a45bb39515e502547217121638b51c141890c7caa82b17e0
Date: Sat, 06 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757194193
