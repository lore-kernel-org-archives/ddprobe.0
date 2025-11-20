Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DDE8302758
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 08:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763626314; cv=none; b=knkBql5VrGhdsskdN60UZ7SFUqBr4g9QaDxQGsPhJW0VHsPY7nih70u1Fdm61e8hUzquHNJIe50/cbKkhuSlgh22NHV5w2q0xE5biv0G1XvWgzJiO9cRvq05oyGHbqNo4wjGZSyMAkERcV70v8GWeyO3MNIcIOutP0rFy1Na2RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763626314; c=relaxed/simple;
	bh=2KuDf8w7rQb+FcgpdZuvY4183FD9o9R79RafgFxLmiM=;
	h=To:Subject:From:Message-Id:Date; b=rfkTx8nj+FebmTske+WH2MlJ8bdNPhdhJCe81CN1CEIZpHjAL6A3z2fxYV3yw1y7JPXJfMRyLrg3f75cc69IKEE8iYn+1H9qtHbGJpGj41NrLEgmiyhhW/Y2qs63vqEVaEULvGMY5daPXYLBCE++Bw3qufA42qitni2K+pHFOE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+Aa+QX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+Aa+QX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B78C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 08:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763626313;
	bh=2KuDf8w7rQb+FcgpdZuvY4183FD9o9R79RafgFxLmiM=;
	h=To:Subject:From:Date:From;
	b=D+Aa+QX5OKGfl6BNzV/kSbyjVZZanjR2I23KlzC5V5t8xfraweu2DV28zCm7wRHqB
	 N8nQtUnt9nqE2g8jBdz3kiYvprswx+srRMyd5xfDZPPhR28o6HwWvu406OdtjFqndA
	 /Jrl1spauZKbJ3z/niJQtl+lNJ11dPS79lELmZ/py8o1OkOL9L6Qqd7AIxmGVTYO1s
	 mKHhcl0rXFbLP+BlSne/nMXGKcEILqMudHEajRXFsEXT2koZuZ4D641umtVlwYwG1C
	 vURJlLYSRPrQ+x2sqk8wZTXlEiszlge6OuMX7c5EAJvd1WsDJyzRFkuOX9SWQY05X9
	 QCaWR2v5i8EEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919B6CF8552
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 08:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176362631358.21854.1601782375099783373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bfe6855e07c11180198c9e3dcbc7cc6023bd037011745a9547cb5a12619fdd5
Date: Thu, 20 Nov 2025 08:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763626313
