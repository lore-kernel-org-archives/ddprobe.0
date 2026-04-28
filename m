Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257267E105
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777349854; cv=none; b=Ein2cJCPvOYjVbPP/L6KNNNzYbzw2GU8k8Xbv5+wIGF8rnsweo0SY4IR24jI83ZCYuDeBzTgIz0whezIYS/HTPFkzSBo8cA2DOW7PkSNAt3tgmM6EuUJ9UIm3nwBUBXTy5durdUJi1dCP4FY+7var/i79aAdCxXVx1+6zolfTjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777349854; c=relaxed/simple;
	bh=8IFLGTTEn8bz4d4TLPaQK5dR0lBxAPCgyy5//5696n4=;
	h=To:Subject:From:Message-Id:Date; b=Bj3dXwUDSJ+eU5VrlYNfOk2ltmUwIXnFCC0b3sQUYzMjwMBapMKnZRJh1bUDJm2O85EUUVKLLd8F0YSv2w695o6NzLyg052R3DlPJaILCUryZXrtJNgoOvYIRNpsU5PLplDtqXWljCZlfu05DRJmOFw36BK4Zd5KY4dfst/WRm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCzi2tce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCzi2tce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9B2C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777349853;
	bh=8IFLGTTEn8bz4d4TLPaQK5dR0lBxAPCgyy5//5696n4=;
	h=To:Subject:From:Date:From;
	b=XCzi2tcejXPl0RBSHmuFByGFvSKrx2Sn0uDI9eyUiEEDekRBK3ISZQtDI0rJMULQk
	 4u/H/AGnh2kSVDBRYuDRs1aBB7KBHqzFKibS2V+qXAnYqS6OueXzlhfc61N52R1q27
	 yDkYih3Qy5iv9SHNmcDFpp5lIxTHvA8W/ZdR3EHq9FCm+xCv7RBIP05smAScXxrV32
	 g9pph8Pj/+NCqL+A68/eeoo9ZLAakJKjAXzSyAVztQnyBVKEHWHKiy7pq9b9nXcqnc
	 buKnipDgc45+9jIWtwVXdEYSHb/8v9Awnnx1oXvh5xf8BshQnxJ26HLHVOdrB/iJr4
	 Hzoo0lajbC2pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC6EFF885D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177734985368.21315.12480032145531021490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ffdbf7b3c94ce3972905156a6f76458d9e8d59df6ef42dc57354614e21cd68a
Date: Tue, 28 Apr 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777349853
