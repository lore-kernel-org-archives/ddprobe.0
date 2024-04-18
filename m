Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A22D15AAD7
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 09:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713433763; cv=none; b=g5Rs3P72gvoAYoUXq11ItkF+0UBJi4GX263dsY8MimT8GmtrgMBQFCQm7SQRouUeSGlV0+D2rxrzsYeyvUfKjWeX0nICJx3pMTJ4rzM3AyzYTlQcmg7oH2R9mGuonXdSx6WqOxc1aFAdZ+6XBFd1N/4KUZrayCx4/Nf4XZDsGAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713433763; c=relaxed/simple;
	bh=Yce7sk0F93cot9j0geBNJLVGCYwJh5NBCV2TCZU7Mlk=;
	h=To:Subject:From:Message-Id:Date; b=beaLqSlV42R8xSFUMQKWjz2mt/piZfuoy6LMPpMNxFsX1YdasglQhYfLi3OHwRNHPAg9j4Myb43CA02ViZxNR/ya9Tu+h6suLeC9jrHhj0KtwwVOlq48Nad5UeAgJ3fmeUBXYWxBnlRwL8X4SOxYj0Up48ONZQVeTyEpuxwholQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZXCr0B2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZXCr0B2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6491C2BD11
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 09:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713433762;
	bh=Yce7sk0F93cot9j0geBNJLVGCYwJh5NBCV2TCZU7Mlk=;
	h=To:Subject:From:Date:From;
	b=CZXCr0B2aKjLxLQ934raS7AhSIt36AqvblqeyUKuydjMxPAf+2BNnwgQlASsLAlfo
	 Khx33jJgWf1VqR5lni1FRDkWLLC5Wa0LvrYXENF/jQrvFecC0r7uGia0ueJXl0VE1z
	 yxH1GHChFJDA2uPMX3NuOIuoV9e+lhJFymNqJF2v/Yza73P6c5wooJKvAhxb/wdAyI
	 JQv3PsFjCm/Qm64rGOsvAsjgbvYyhi0Oin09YmXRNofDgVJ0NNLXyJHGzw0z+Gmnct
	 DxfyB9PwaOV85LVa9Qn95y7a71nSlFzXO24EOxporpYDzAdn+CZfaHfyixdn5l8jaz
	 XmzrCQkZMUy3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15D9C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 09:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171343376277.18441.7753757935443910551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe02b72c1f2457ad5154874f13d78b46594b1023c0ae93f249833815319b3f43
Date: Thu, 18 Apr 2024 09:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713433762
