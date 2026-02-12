Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B76735C1A1
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 22:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770934494; cv=none; b=Su/lYWq2dIsk/4lEx0ncCuFXHX0q7JN5nKYOOjgNPeXGwQN1eY9ZMI9oHvbNbI+eNPVerN2hmqK9b78A0YFx6pk0i+tnOboKrkxSaz6zMPHc3tvhE6WmdZv2nkIxlZc9MgvdP8AzOgmeNzZjmLa7EbU94kCimoPA6dca6tDXe+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770934494; c=relaxed/simple;
	bh=hdxSS/1bV/0puDAttmSsm/qyKSf15IE7XvaVOjs7BqM=;
	h=To:Subject:From:Message-Id:Date; b=PT13hQ/gSj+crAZRkAHsngvRCRgEd8cl66h14nth8bTSTAV41on0NaSlNkUWFWZRXEwmbnIKDMTISf1Mycbd7Uh2S3s/CKcGMkvRQvaFyY/8n+COyZ/J1oItFeX9P+ptPkl5vjil0RLW6lI+chBn1rR4i/Z8mTy+bLppZ5XKLqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqrpFB7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqrpFB7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5D5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770934493;
	bh=hdxSS/1bV/0puDAttmSsm/qyKSf15IE7XvaVOjs7BqM=;
	h=To:Subject:From:Date:From;
	b=pqrpFB7az73XCFpF3karl7dN+3NyEOyUjc6OxIitlIQq2tmqNDjCZ3AOvlOTGiim4
	 kpufnu63Jf8nik+dVojbQqCw4PitYkZHaetGTtWSV2iS6mQIfggXjgW1ENv6nu7IPA
	 nStQOtFQJ3HdNvIFj5ZrX5FPWPmJe67XeHww2vrlrG2ns5RKXcAoXUKmarpVngbWY5
	 G0a4t+5wIpzGSJYGg94zFRUCkBe28MQtZIB00rdLTXzec0LWf567M/1K4Fh2SJkeep
	 s25LV5ObOix6k6BHOOZ/cGPb1JettVI/+nOnRfRzji6s7MGx5uT+yjnAIfhdGKVQnn
	 vQ+IZLvR0btig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21B2EEA866
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177093449371.11607.15945629148902293328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33cfe24b0aa0d72fa0a292a47cf9722b009fe41a9beb1305db6bb71464039316
Date: Thu, 12 Feb 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770934493
