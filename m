Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275BF2D978C
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 04:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775102734; cv=none; b=uqateE/PJ7Pa59eDV9Cp17/ybvHvw+Kaq7cCDCx8GmjOy6kX/NN05Irp3JsxLWMtv8vmBrkAf8Dp0YaUGbDazYAbDfSOjEr+TNa1M+YGYDUya8NK4mE8qaHB8S43Kno8aZ57GKB/Ur++MmqALfsPotR6TVehU2f25X2SpGMgPe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775102734; c=relaxed/simple;
	bh=ruI+lR6z/VH5yCme9FOjDQLk5wGaye82/QZWfHcOycc=;
	h=To:Subject:From:Message-Id:Date; b=jtRZCnjguU2bJUxeP2kF1oB2Tmf7W7yPMbRkPpsbXaZ1rLG9E2dmhhz7T4aQ7srzP4WHFRlTmvCFPSD8kAiZQop4q0rTM4ypcS3tgYWtMOuEQK/ek4nYU5QJkxJEYh+3gXuK3J+dwMvjF08zlhYI3cdhWcWkbugiOq35yRm5M+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nr6bDn7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nr6bDn7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE11BC19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 04:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775102733;
	bh=ruI+lR6z/VH5yCme9FOjDQLk5wGaye82/QZWfHcOycc=;
	h=To:Subject:From:Date:From;
	b=nr6bDn7HqKOiwbm4S+J/slo8Hxk+V+w6OtyJaKjmnpUeuAzvStnNtcGiRltJSHFO1
	 NhxjorNjJUNWkDIPoF1UEqg7T4tGc4KKqo/Aavk4v8QWat17Gst0HzO6R1mYAZ9CQb
	 WxbNzUnNSvQdPEBtnPxTiHq8qC3oSdvfKEyD/E2/HVGfPWid9dkjh606JI8dqI/KJc
	 zTUMVWn+RogJ3bCeo+B/TV3uNelhtx2eQsEbmu5ogdRqnsCnECHbGMUrGzUtW75JK1
	 nBfSB412tBd3lm6ntF2fbBiZu4zGfYysyclue5EHyn3I000/Il193+GA/IpZDKjAGP
	 EjBuWoH4NZ6uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACEECC6B00
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 04:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177510273369.17233.8368737258553397868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c1e1cd98567a88d8e676524133e3a73374d8636ea34e3644024bd10ee1460f0
Date: Thu, 02 Apr 2026 04:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775102733
