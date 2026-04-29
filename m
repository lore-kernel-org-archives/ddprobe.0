Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E023F0AB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 11:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777463854; cv=none; b=JweIJUrjlmYc3OMtnt8b4df77muoD+J/VFJCUwLLwYUBI1idKSJ3LW9ezOoMySS0okDPLAPcaVOvs3I9pmAgreEY9GuY7+uVudSiLlvmtqIrTM9Vf563hueyDitnjXow1v9+ZFP7qMLP6jVpJF3kWFpOpbIjf1OlCaVq3LXba0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777463854; c=relaxed/simple;
	bh=MEKRBiaYKUgwzUVyq9aOXRvIzCWydL4BbIiSr1oA8Ts=;
	h=To:Subject:From:Message-Id:Date; b=jDD3QzK4F5RxlytyGjt41NTtQtQpXEaflXJT74rD4tNc8KZ2KMPgu3C4HptFuHqsaqMUloBzsPbpLYSDPrqd7FuQasW/ONRMXK7wP8CH1PDswplqwhbKbbZMUcE/5vMPeglEmn33mVH6kHKCLiYgun39d7P4+ojLQVX5i7lsNnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Au7hli9M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Au7hli9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E8EC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777463853;
	bh=MEKRBiaYKUgwzUVyq9aOXRvIzCWydL4BbIiSr1oA8Ts=;
	h=To:Subject:From:Date:From;
	b=Au7hli9Mx0R6BTIbCeVEn6ojYjf/YfElXYJRQuhM2i2EBQEKfT0l8sPAJeBb44XJZ
	 U7JLYffKYUyWfvRVmim2SvJKMECKGDW9B62TKY1tzULarBH0lBnVbKCXNM3rszNoHz
	 rSUbBaaecasyhdZkEJk7Kz7N46auV7pYoBE+jZHccqgtYxdUki09N6WJ5NX7sqST6H
	 ivFKALM3+Sarn/z25hXrJqjFCXDNU672PmvJ+FwKVx4lalrCZncUJvO2KCvI3mCN9a
	 RiBsgPMyZSCKUXtwYWXU6MUW1++8PhuIFJzBdJJiFSOpYKrPL81CxxppdDV8Vah2XI
	 hYUhluk1mzvDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A985EFF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177746385368.31343.4092393339166442201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a5e7799be16d354724ed13ea41b233e97074d8eb40f5214d07a8dacce23017
Date: Wed, 29 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777463853
