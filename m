Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1994819EED3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787362834; cv=none; b=sQAuZTrfY/iEieIhIU0UiAsPSqsoxDPlBSmOvpf2Wqa5iqFe5CZCuJde29BvJSoEMcJsFgpQVJ4YbvNZk8/OYZ80K+AcnpGe9d066/1Jpx5ofvqKCMThqGiHiM1yPAtRpGbVL8aklxXWam/6N3dziobyd9AlsLZ3dt8n7mXnGqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787362834; c=relaxed/simple;
	bh=p8UMdsDqFqkBXLlaIAYtLqbfH3QBnngPhgo5cZSYTnI=;
	h=To:Subject:From:Message-Id:Date; b=X1av+Am6/0pzaLDA2LYMgVOk8qOyB+Hrev2PtzxLGGLApfrEbAkClrwXwJWwiHJIx+ZcxYryhw1u9EdGbc6vWOwB++asIS6VNtJURKNB6+MsPNhcU7MDCgjnS/ND6kTHw1xacLMb5fsGrsCLxlnzQOy1SBkJzTIcBgJjJLhOtIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3H53hy0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3H53hy0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF6CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787362833;
	bh=p8UMdsDqFqkBXLlaIAYtLqbfH3QBnngPhgo5cZSYTnI=;
	h=To:Subject:From:Date:From;
	b=I3H53hy0lg2gShgboPL+pvtKJwUzbJR+F3WHHIFu9/9ucWv4fUnv9QLb0lhwh/9BP
	 aQtu65u45CvAx4KIeCKmF/cPTsQ8XGjJYMwzDshq+WDQCnlRsCP5Cdjzn4uisn6V/c
	 JA/2P605BLlAaWnmgjGQbl4bkmEVZk7K8NTBgiLEFzHKRiSsVuS158N2C7dCFtzIbe
	 z950WFnFNf6JbV/VqD2FIwtaotPqJU/v2d1AMztqiJXzg2QyjBHGio0wgAYdJRkKUS
	 wTap869/7m5JNOJRCCPtPJviHTaYzuW99Rbfuoj+rRrW8xvhzBz5gk+gwN9kCrsKQs
	 DHmF6XBoNbrmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C7AC5DF94
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178736283371.20570.17517409286405825401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da90b41028b2304ec002695be7d45b8fb13eb943b96ad0ee9be572772f6fc948
Date: Sat, 22 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787362833
