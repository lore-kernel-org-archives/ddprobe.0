Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C703204F8C
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753311594; cv=none; b=ZqPUyuRSZvJlPIC8Mv57bHlNRCT73O1+8hFoEWdxSiMQdVCma6PebFdTsHIbhyKKnIMpg3wyIRMu6uz5q/T6Vd01TmV4LY4oyvTYfIzEuoXJIgsNJ9xgtVL6YNAtakLiUQaj0jP+elYiVMCSAuTHwcynFyQVNGByAbBZBW5zwDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753311594; c=relaxed/simple;
	bh=9FNGNOBEPrcRMKAO0SCjxqJPAxhKcAN6sR447v9iNS0=;
	h=To:Subject:From:Message-Id:Date; b=pWbYAO3PZG5obx/vSm7lv9ocOc8Z8ewA3vYKSG9+UiAE7fPUSMFvyaIbIaAs2DbJAx6o2tCM317EEXTtElKEruCkrW8vTZq9BB7stJf9DrSUTLn9czEbTa4cT6hyIHhfEYQubn1KsgJ/yFCpOymmvTOYuBuC/Ooz4h2QvirsBnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGVFBHAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGVFBHAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3971C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753311593;
	bh=9FNGNOBEPrcRMKAO0SCjxqJPAxhKcAN6sR447v9iNS0=;
	h=To:Subject:From:Date:From;
	b=QGVFBHAnEnw32sUiswyb+MYkCqH4nYFcCZPiXKmmTjnesFrdIwmqjMRIrfOGZYsdh
	 woyrsKUUVi5qgrDakd1f5H5FAL8Uc9R9pXBPcyLG6l8b9fijk0w7wFYjUbZbRmGm+z
	 5j+10EmFEwCEOe4qVOx7Na92Xi+7FCW2rx3GVSub3pPXcKrFrS7Ea4gVo2J12YUgY4
	 Un/YKALQCPpLOMAtDocqVqAVCH6yxJtyXN2XJJ4zc++ZONsT/fHhH9fWnuP9jOMOZM
	 EbxC6/PPK1Dcc/kS9red6FpyJC0XS5tI1MeZU463nkCIGXAmpdh1FZvnQPWXvAzMmx
	 v+2QyTzoDKVJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C4AC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175331159357.9844.12413539223796903861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c3e7b21cd0cffe83a55ceffda1fc0828feb2e4b7c2bef818f0f68ff9db3faba
Date: Wed, 23 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753311593
