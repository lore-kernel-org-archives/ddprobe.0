Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3745A219CA4
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731441354; cv=none; b=cL71JXSLVHADMPBOL9t+9UaHcpXzCnITw7BTGS5SPZhvQnVqmnlTp6WSbKRkaPvkUdgUjf2Da2AH/eeBbTznJNUxIMsiookTIdVLwjBcqfaunos1wKEmKwVPFzuaDJkMo9wBRAjCdqbQy32PKKsdgocvBIoqgXYwYlVDpnIiyjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731441354; c=relaxed/simple;
	bh=M6JfheagXmxzTAiA465wSYQQB4EKl7sCGpHeua8lUtU=;
	h=To:Subject:From:Message-Id:Date; b=f+R/Ud2tFzMnuqxUnmr6whao34IAUrhKjwOyO0qXA8EcXxE2aordrdARyWhbWIAsovzpq7s4EvSM+rf89A+6Z78ToV/1YA9stENb+TVbIXd0rSHAmfxbtxO2is2Vrk3Asy6+wPMG7RET3U+w8JWQhGGho1qAC3o+ADZhMjkiF1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrEtqEFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrEtqEFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB604C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731441353;
	bh=M6JfheagXmxzTAiA465wSYQQB4EKl7sCGpHeua8lUtU=;
	h=To:Subject:From:Date:From;
	b=XrEtqEFWjWNndAMcMZM5hzeOQSydCgC0fBR4PWdDFcsmoG9WqcjRdxZl/qw6jwRUI
	 7eaX6uGBfpCevExpSjY/kB5oGirzzlSr8AgzGh+5+h4ivK35/BT/649sQ7tVoHvuSe
	 yUDKzrJUOqIKkT5FAulNiKjJ5h181h/wUsZmRR5KQWZJRNZSxMGCOtl7mmZAAZ4Qu4
	 DhsGPxnlFhOVM5240HNdJ8Sgblvol1ArZe0YotspPHd/kPRRS4ww4insp4UQUPlZND
	 eaWIXg2Ldj30qBxjf75+W8+4DJG4sP6dyC1ludi0LpY5msVQ3kp3ZOeQ8ums8+onT8
	 0ZfEXbkJ3cT6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2BAD41D7C
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173144135362.26673.13792222353601237191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 390df3e194022234200125b49855b27ad425e505e94bd2820a2a7f0285d35d55
Date: Tue, 12 Nov 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731441353
