Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0235922069
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705854497; cv=none; b=Zw06415THvmRGWrn/tdmF9K6ErSNCStZQQBk6dXYHtzbDuJ6SkS/rCaVq/b/QKEVuQ1jmbkFXgXGSLvzOa2TH/mIr1fP3IpPOAApE8q0a0oHI7b9GbzDMawbZ3RKN+lDaW49sWb3N12uKNKZrC61Ivs/lEufnlJcE/omUpDG66k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705854497; c=relaxed/simple;
	bh=VIJB+4SjojX562MhrH8PBreQZ7txvMfkH0dSOkam5vo=;
	h=To:Subject:From:Message-Id:Date; b=LUCd449NTGd8xZh3Yx/gqjZ3AwxvTtKyaJYTAKrzTErbInP20DV2oSIO+tSa0ZArZ1TyIUv9/87dhl4CpCvpibrlf3GHguxzN1GdL9GiarFL2pjuh78NYN+JSSW0W/4crjCdb7/BbCifWHIkaBlPY/K0g3wb/HL4f9WvPOO+f2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMnT1woU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMnT1woU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 763FBC433C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705854496;
	bh=VIJB+4SjojX562MhrH8PBreQZ7txvMfkH0dSOkam5vo=;
	h=To:Subject:From:Date:From;
	b=pMnT1woUh5v5MrgAVqGZuElVQ0sv3M2pDcLXPdZreJGWpOVghJNTlPL1z859xmdt5
	 9HZR6Me0KFPOyHgLpOf9b+5GSrxpluqRmTgERdnzJZjoYibnDYB4zAI4IawNEHbjLw
	 CgC2bPqToQvkKcCJpgyvBr71wWVbM2MyU19tBpS2x7Jf9MHA39NgwoRD9kZjZPIfhg
	 Zw1QL/AAzM+dB14nodMHCGoGcuN2sS84lhWpXo3bYEN7fJhgK8sbPdxAoAWtZ9S3zP
	 0aAoOWGeRRGThw6do3TfKo6zdIdP+vilsdh60ZURtN3LPhdHNs83Sx2xcjyZ5v9h1W
	 i1yL2IgaD2MYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BFDC47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170585449636.6114.2799793564385029517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e036f987c3b225f3304f87eed97542acbab51aa78cbb43074d8bbe884a7307ac
Date: Sun, 21 Jan 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705854496
