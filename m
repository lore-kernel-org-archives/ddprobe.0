Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8D3221FCD
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 05:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782538114; cv=none; b=pdYRsWP/13r1PfMwHYbn2oiz9UurwTSz53xF3tb9eOjk3jbHyZueZd6GNZhlfY7xmNk/4boKEm/NmSZELzrpa4xppr2VPT82Wu/NCH0E98cSmPBIfMb302qq8Gk5AzxG6kssFjbnSy+KSvA44yymqxx0t3s5ayGBtt12KvpsqAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782538114; c=relaxed/simple;
	bh=efo5mAVVerv3TDo7AJzehZ642Om9KaxCK5yAwMt4gF0=;
	h=To:Subject:From:Message-Id:Date; b=uSTy8pq2fyK+/XfKf7lhtmYi5E/zAvLhN8C/NSC4oARql7hDWYAsNDEd1PZKVN5YFrZVl5BZ/2mDdkDm2f3on42QTXf4xDj4RwS6i0yLzxGU/5Cc8CI40lNPayCfyWMsD1Tie3UgcG/+OysCQDqZo90b3XZiRGlAd8AnW6Bq/sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OaheFjbp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OaheFjbp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08D1C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782538113;
	bh=efo5mAVVerv3TDo7AJzehZ642Om9KaxCK5yAwMt4gF0=;
	h=To:Subject:From:Date:From;
	b=OaheFjbpwSRDf8ZZ83aT4lv4K0KtC/ClKs+Y1S1YOdAuarY6Eo6ePLjRCx2Ldnl+O
	 pK/QYS1dEJFY1O8MnvFqLkW7z5OZDULIFjkcqFNiDBnFEOIWd6xINQnNtURXGBaQM5
	 lsiwTDeiKCM5JUXZlIvOzs8NVNbfGat3/iAKPZC6vw7dV2kqkMS1Cxw4AZ5YLwBs94
	 xBSE+7+iXsZ3f1NsfwKv98WM4vtmPWWolyBv3jQWEdOtusKvwfZPr+ChDx2iK/lK84
	 uK5A0tzHmJeqFZ+J1IMSP3i4KsmYwRqVpE7UhiXn3LSG60aYDFEvxqiLnfXweFd9L1
	 zdRwtJmMMGLEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20E6C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178253811370.21263.5409501943153168878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13ace1da283004a1357a59b87a384b6481e605a2cc8c21a605cb021201bdcb18
Date: Sat, 27 Jun 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782538113
