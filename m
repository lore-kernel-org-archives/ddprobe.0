Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D867A24337C
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747749593; cv=none; b=YIGEhnmZX7mOYyKi78zCitur/VTulO09I7n/CihyqQD9W1vkDrkDZF1i4t39GNJ2FyrzF39YCgtyv84oNVhvJ093Q+Agrdx5WEkF8U48GsnRftWwzJFNq3pI1G+tWqiCYJiUwpCmkSdpS2bRBTQs4Aa+wj6gvyNpAbyQFLKaV2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747749593; c=relaxed/simple;
	bh=Qdde8lAWNHBGrSFA2mko3pDmARU5HzJfVEGvW9G97bg=;
	h=To:Subject:From:Message-Id:Date; b=bMmFulFfI0634FLoXSjZPXHxp3kkMx7YEedp+dsSaDLbRYH2woQWqwHoXrfZruSQ5STM5GE8nsMfsxZAR1GNI88x+qZ1ByiTCvg6mu1XCOa2YUxV07YhmQCfhOuxacWytvLAId6xJavGrxnlU4HpqEXILHveeh6aTkiqQL/4koI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjgJqrIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjgJqrIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D72DC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747749593;
	bh=Qdde8lAWNHBGrSFA2mko3pDmARU5HzJfVEGvW9G97bg=;
	h=To:Subject:From:Date:From;
	b=XjgJqrIatvC6rv2K5yP9Z2VM/F6OrsSOu7nU14CV+ax1HMj92AWm3Pd8wWs7zEPob
	 pcjV8Jx+DAUAvCn2sBIqmqApKMFHnF28SXsZS0zIQ/W0dHlsWETUu15t2syxPPAVBf
	 LqeQtnjFT7h+bGWedtFjLHAL3Y7usJ70CPbTMUGjRd3gAy9G8+ZH0dPcO/cHx1skvn
	 nMSgKjT9ev4L+HIBGd4nUuIBEY6vK974Fhwhc053rlCRChaB1HIlO5eR1eyv8zF92a
	 Z6B8sCgGuiZjGwmkzy08oZ30/olOnStxGIhZsnFGbvsQ0LnJaB2Vi9bymm1Yl0YYLL
	 a0xgOZPYtu1zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E21EC3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174774959357.24517.18144319478693589769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8889c331b303d5d1b614f0a51fa144f979399faee9004e4b71e66ce14f9b2c6
Date: Tue, 20 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747749593
