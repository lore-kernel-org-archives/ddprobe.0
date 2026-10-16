Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C6C36215F
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792116634; cv=none; b=A6cWIxVJ9YQXiN2/v5yzfytTbqTy7CaI0LaeGDf4R5mCNJVAhP9Qe+uz1DIhjp57lrlldBpabaS1ongxM6fiOfdEKAPbYFq55kiA5hXHGC4YNVmK1Zc/iDHPQKkbmOvytrfkRAhkZ/6hwA+9h3FgWg7fnA/HTLBk0LuRBYSnwOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792116634; c=relaxed/simple;
	bh=p9CovxrIxuL70X7B9OjRpuHV+zyF0Hf/XaMXqt7k2Zo=;
	h=To:Subject:From:Message-Id:Date; b=QFAF8/9D6W8pi13l2PoRMnrmgsVsr5JwI+2qWRnDRbKEGLKOkgslKyPlhnr8wtwurjXeatZty4ZNzwWtgLDjMhYtx+PXn72NMcbXvHLVDJeiax9JaG46C63Ty0xpqNUMQdhf5bTpLu9sD+5CX7kU819awnEZXmb/gWrLPibgjfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArALOQuU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArALOQuU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32B6C2BCFB
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792116633;
	bh=p9CovxrIxuL70X7B9OjRpuHV+zyF0Hf/XaMXqt7k2Zo=;
	h=To:Subject:From:Date:From;
	b=ArALOQuUdrOZI9RYFuUnSckpcWLD9VyW8gg3W4pp4YDPRMhIWMQjPeOl53jRquheI
	 jdmCcS/sH4XkFdLZEgY9ElMGzoqorf0+VrRrjNeNynSNv0W1g64qcxDyfhZ1nEyb3Y
	 xLmC7xitpchlYML8lhIMRUF8MWDBAv6ASpjyRLM2ilTLMFCaXzSCLYmw9hSVHs2iRH
	 7ey1HiQcm6tIsRPx3eyHR1oKF8B4z4fZphRGVx0U7ff2f4cB2yinkEspeubNRPaUix
	 FdfOUOxlofiIYmENmWKCw5x+qzuDyqIPv8zuBzk6RaTnIxZZQS5wRbRoJs5eoKfImB
	 jgd0rNOr7WPCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2528CCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179211663369.32131.5671718090564233868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5624d98f6fab6a8f23220dff86c50caaf1416f31ab26f9f85bffc008947ffd38
Date: Fri, 16 Oct 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792116633
