Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387B114D70C
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 19:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714074743; cv=none; b=aqOd67ZSw1YCYRit98+FosIUe76lCoWmIJ51GQNMXlWBI6wSolNckxzTEKWFo4IdqATnHoaUjtSPwI7oshm4KuCoZf+SCx21fRm1xr1QjPAtz2B+qlc3gbu0NLTtdTaGNpAZ1nHM08gxVAbJF6AWTF4PX3ePucV8M2tkGiIMf3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714074743; c=relaxed/simple;
	bh=sjSzHUiGTLYK8mCOKwwM8q6Q6h/+vCNbhU1omelgTEk=;
	h=To:Subject:From:Message-Id:Date; b=rFFZBaMGvLZMSo232tCe8ewinGt4VtwiYIYpGiSj1IT07jqFSWNvZe8PJvCJOi7JigqVCF0M9f/yEdb7IeK9M5Q4ob6X8mO+aIe8hFJ6acaAYtHEAiYL8isJMJQWbjwic/+nFm5QZquQEE1kSTZllkmT/L+GU82aOng+N2avtLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRV7mQBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRV7mQBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F84C113CE
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 19:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714074742;
	bh=sjSzHUiGTLYK8mCOKwwM8q6Q6h/+vCNbhU1omelgTEk=;
	h=To:Subject:From:Date:From;
	b=aRV7mQBT1G97Et+ywR+bpT/+VzkQ9OJg2OMnX6hcteB0pdIuScNYr9oIMsZYWEFVe
	 qQZyJBBHpaCTRV702jz6YBTfG+wIZK7meIdKHUBxp3531ok29/B229UBn9pxCsENUK
	 3uCLPu9huglOPJHY+qMx89JKZ+ZwgjmgthvQZonRo6Sf7tWUy27d+NzgzzO85jmE33
	 jqze0DNJJxrjTwbgN5Vzje0/UzTiNPmBPkr/yk2CpfdfcTsNMyV5APE9PkfYk0bQG6
	 d2HIVx9tIwMID37pQnR0ACUDagHdYq4e+QNpSikREGNujLOQa9MIRlm4n3o4QU91Bk
	 gBnIqgY82VQrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1AEC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 19:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171407474276.2972.16859709496603783627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a50cddd3338efdff83d8b7296c4fe451bc81940e2db4ad3a9011d0bdb103f9
Date: Thu, 25 Apr 2024 19:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714074742
