Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213281E8342
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771489494; cv=none; b=jzwDB3gCopuF4XjpMfpfMFSASlsqDJ+A33TZDfDkTuSOYGC0txWdINLyCTGSY2exP3ookoa0lmTWh7mKL8Ey++rbawgTnRT+8ZZlh3+ZBWuv8IrxB27Rsj/mEMLISityc6q4YSSeyqNkuKBro9G+WGsvzN65lUhWrpkBcxfklqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771489494; c=relaxed/simple;
	bh=FrtULSr0C1+UlC4z4PwNvcCMOTfUR3wsWf70XYIJOgM=;
	h=To:Subject:From:Message-Id:Date; b=WtfPJr0eZ2X3NZSEUHu/YRwhJEJLYY+9GqBUnL8grlp5aG5phepPzcy/78/8oZCyAlwUgCRL19ulQ78WTXnXXN8lEc6bB/DXfdVibGKTeNL5VQdvh53VmaP8/NF9g3EaWGFK5VPwrDklTg3iOlg715EG2AmcKn/8wuTL7amzIqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJZJRCmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJZJRCmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87E2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771489493;
	bh=FrtULSr0C1+UlC4z4PwNvcCMOTfUR3wsWf70XYIJOgM=;
	h=To:Subject:From:Date:From;
	b=TJZJRCmOl/iN3pUd2az+EWssQxmoKEQ/PAzbQVmzyuCdAO2Orf2fiFp7qdJR/FlIb
	 joJH7Yu2O/0GBM49BdaULtb9yQgknn/4VYFkXOToTfnXbWKvSWXrh+4CaT4VZ99Wfn
	 ywFgTnh7rYOkzmKt31IuQ6NP409nsZ8u9ND6YS6uyy8USCkeeh1v7ybBuZO87jL/xb
	 xLMe2ai/MRVH91lH6jiQIAdEKKDGKilCm8/JncyG5djmNKiwAZ4oFfJIexjlu5G/Fj
	 HBs3Rzu3T07p8Ba5nXG/wk9CC5de1SuACcAEP3ShUp3IDag/gMCSA0qFkhPz4ZB2GN
	 Kn7L3d869qhRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93581E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177148949359.32191.13238130278668634769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f30bfb6ddf32af63ab3de25e777786082da264fe1e30fa3255e473664883bba
Date: Thu, 19 Feb 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771489493
