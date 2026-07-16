Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444E333262B
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 12:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784204314; cv=none; b=h2jW1nEwRwaX7ORP+ITj/qt19c2GRNFmBLsEOla5eX91jQcDzyl9J0a44fbEMYoTMHcMvjokMGHgyLWN2LVcxGimOfUf8/jIrHnxOAKOtGVhRNrU+DRHjtFV/6ScC4SMcfHeXqjqSXIeoK+vvuc/AeV0lqmmekfvPtCAV9WJTaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784204314; c=relaxed/simple;
	bh=iVfzuRaDe7mt8Aogu7BnN71ssIfYFV6hxF5zG5rTVvw=;
	h=To:Subject:From:Message-Id:Date; b=F71LkCfBiqdPRs+lCdwHEdarS7MuQ3oicQis+CIxX7c/c4RL/b3rVE6rU6UFDWId0L+UbzsJ6mO686f7oZ/mD7VtEm2AmbECZPuu4gC/AvNIbNrGxrBKtYbmZh1AbKcFyzMRIB0yR5M3fvKMTzhJZry9pYjez73RVD7OX0CS/k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KriPrUiZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KriPrUiZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98FDC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784204313;
	bh=iVfzuRaDe7mt8Aogu7BnN71ssIfYFV6hxF5zG5rTVvw=;
	h=To:Subject:From:Date:From;
	b=KriPrUiZX+496iH6IoT1mUDODXZZqTxd8K7pPpiaDNjuSTd4ycRbm7Aqj+nWXS/TL
	 DJ+KBhnJP3E3pAHrNG9JlyEYuPJjSPR7MOFq35j+zMhRvYCPTdXAzufMJTa9cywwDe
	 Xn7Hd6FdpXhl9Kr+Dr9W9m/wtNtwrRmwLhx56jSCvNYx2QZvOqcRHWVVuDnqzlEj0f
	 Q9I356NWJXDWnuc701G31FNozB62kXoA0JzQLIs7/bZ2gWP0Q2P1gUy0D4HNNkLEsZ
	 LK52aOtBBU1TfeCcH9TBJUtke61Dx8sO+ThTUJoV6ag9bGSCvds1apv3API2Ew9DT/
	 892mZUy1Froqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8749C44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178420431368.11817.1712104682322848374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76a350c64f1d81a6334b3a1ee616095d5eee583fc030bfaceb84643c92430b79
Date: Thu, 16 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784204313
