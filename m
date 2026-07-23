Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E488439354
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784802635; cv=none; b=GJ9wJs9nv9ie18QC0YKmu6kv/eBUQaog3bMgocaWRwQSI26Ke3DQv87nY4vYiOB/voKWsnbyehB3Qk0nF26wZsOVKb00o2vC7131LgX7RQMCkeRxtVvv4V3uzxDx2Y7TAYoL4fTI/BEs+zZXAOs5GKtM1rNUnFmjiioVT8rM2Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784802635; c=relaxed/simple;
	bh=pPrgpX/Mz1icMEnfbKTrHZmLp5g6dskLLRHrfJ7I+Fo=;
	h=To:Subject:From:Message-Id:Date; b=KdaSueW5WmwxF0jcT/hfdeVepkD/sWUD12pgxw0Erm6ZoXk2rFVTZwIENxtG0XbzxNXmtiqnth9spXPDHnES/O1I5MbjM6ZDogXwbHtedw6SEBeiHoKiHV3bwmCYYl6Q8kX1Lc8Gkeh1L8z+2C2uidOhEdYzrh/qQr/FAcATrzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=evJhXCvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="evJhXCvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F03AEC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784802634;
	bh=pPrgpX/Mz1icMEnfbKTrHZmLp5g6dskLLRHrfJ7I+Fo=;
	h=To:Subject:From:Date:From;
	b=evJhXCvHZU05nVgIhGF5ReMPSP+kIHZwHVxdhVapDx7+Z879Zg8HuZ2FiyrzWiYfx
	 +bPJfe3U7TrYlkHx135jHV4c2r/4KHxQ8kuLq2Hno07JNsTTHSkNn4Lll6rFTmm1dc
	 jKRbCROnj9F4fs+pWqs2Mx3r7j8t60g4qhPd+Rd485qHaUI9hyrmAZvEAusNoeTLQj
	 LSi3xOnxOSdCW2XssFHalU4ne6CUPC6ZvEInKNhOEre2O88FzaTyS6IaKsdze861xg
	 EKCnaICbrBZCZzwUeVSYpDMZcOLFBHIO59a/jK0pHGqQBPjDHz0hs3ZDnjbK1RWFs6
	 Nnp7WDdc2liNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6148C531C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178480263373.15932.11276109268020548055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7772763efd7d6842d00f0f8b02e5093a1bfc843f43f3ef24439d58cc84bc687b
Date: Thu, 23 Jul 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784802633
