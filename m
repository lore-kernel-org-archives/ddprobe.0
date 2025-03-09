Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49611380
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 22:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741559334; cv=none; b=ZkvcAJbGSPKX3gOI/vJuthj4QoFJbUowvwAb+3hPoS0wp1Nn8ADhoqnvnEyjjixd5q5nLYIqJoivmImdRTkURlWlBkj72kZIPtI01HD0eJ1eM5jmEniC2UnKgDohlqXanEZiJCnDw5PRgelzf+TFQYBSLP+zoM2+wf+Xb6Hq6sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741559334; c=relaxed/simple;
	bh=lil67WEI4tKxFqYC0ikffFDUaP5K6/XxFl+nDF/mtRc=;
	h=To:Subject:From:Message-Id:Date; b=VTrPfBafHoHU+OC0S0o71dxKj+wClIIJeJfAZYU/o93Q+0lJVD8H3mdL8hzVf5KE0PXyfYS7acsPYObipB5KbZTp3QD93jD6N0pxm1OqAgoZ0ESvsFp6zFWnExFKzlIC2wHSz5e7YRFS74ZZ0yfWYXPthP4omoTTU76oW1FQPs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JP2jDaKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JP2jDaKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D70C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 22:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741559333;
	bh=lil67WEI4tKxFqYC0ikffFDUaP5K6/XxFl+nDF/mtRc=;
	h=To:Subject:From:Date:From;
	b=JP2jDaKE33U9+FmjUsylczxWeEQo/bGXQ4wZmGDJJfFbHKpM4oelke20xMTLk6dvE
	 AP9+eMqYqMwnBl+jUrjr2F23Q2cOfhzKNHG/QscAg1uKaDOntU3JwASXBVc0t+C+2w
	 OvIDFPnj9tZP0VhOu/q/hT0DA78Qky4MxD72ykQ+V3ml0cc8QSUkzA00rNfoHY4noo
	 Mhv/D4jO0K8kBitrvY2zxnQPrH2MerFE8eFQ2Y5SyqdmhXIc/yJTkrvw3LFafiA7Ok
	 hSwt1heOllE4+Y8JUl/G0V45nY3bErp4E8qL1Yz4Zen2p1qkdHxmkVEwG9RjU+zYwh
	 lbEaqoQ+7pQOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98227C28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 22:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174155933361.18737.12108595806376203350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b8e7d8e9cc8d4d9b1c57f8eed367bdbc8f14be2a78d86efc8a23727edad57b3
Date: Sun, 09 Mar 2025 22:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741559333
