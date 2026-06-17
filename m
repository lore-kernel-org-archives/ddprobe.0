Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4251D348463
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 22:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781735794; cv=none; b=NV8i/k+tWrCz87MZ4sdjTEcIFL5/NK47BHxK/fGm8hrTFHS/fNy4ynaWLnSTCRUtMOmO4hq5Zhf+FcoHHnk7f4/HIjVfF572th4+aFOkYmu9OJyoDXOPztkmV6AL+z5idjfvklyEyqSRV3+bye8t7Tdyt5nICM3K1jpBLmJrVHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781735794; c=relaxed/simple;
	bh=E8ZEnZ3RnpmKjyg0Z81xxTTjgn/iyHkt6FSP+7RcuK0=;
	h=To:Subject:From:Message-Id:Date; b=KtL85JX5jQ5NZxGJ4w+sODVrGMu/77Es5/7mK+ie0MDJOV45COWDemQO1WDEV04Mc+WF6LENrljgutMDwQm2Em+T03GWFYp1CwLiSnOXHzoF0DFEDDFWC1CKdLAdjx4WyZyCBOBDJJmtBxkFpewfZKL1MlPs4KOl0fCzDuQHG9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPzklMri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPzklMri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3914C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 22:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781735793;
	bh=E8ZEnZ3RnpmKjyg0Z81xxTTjgn/iyHkt6FSP+7RcuK0=;
	h=To:Subject:From:Date:From;
	b=XPzklMriKA/9hjr/5JsyiGDXp4J4PoGnnrg6ieGW7ahgg3QAa5ro35nPvYwF0uxJY
	 T4Tbhou/gnkTFoZYLPnYVi5GdKYTUpQ0+TW596591YGrjbm3vDUxiDjjHUmuHlB+OF
	 ofQ50+oHpln3ir4U53irnZ/BK/UxTI+7UUx57aEzKv/E4gOE+XAurxB344Ty5Aycf8
	 /y5+OupYZc0e7SpoOSTn1VlvjkgVN8p7sEuLBCA+zuMBVuHhVUGuzUOgXDx8406MvZ
	 HpOQ/XEaHrJ3yGKmC5cyGYDuULgQ0Vo8Mg8GllYdkjb+N2MwAiisUU1YJefjgko1iH
	 ZDA86pmoLxRWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF38CD98ED
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 22:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178173579369.1217.16530358726566498263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ce1ba21580fdfd27ea9d1ff64b256005fdf178e49797be0abae5eb5218156f
Date: Wed, 17 Jun 2026 22:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781735793
