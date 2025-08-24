Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5113015B971
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756047595; cv=none; b=rrOVvcnuYj2Hd2clcIYHHWoCpOtKzfBJWI6iVKlkyYeIVasVOKHsWKZa7v1ahDJL4pNvoYKpblII3Cp+3P0Wu3727qmocdkvKa0aKcVevpENGZ/Qt5r+7GTufzwvFcHiR6pRIf2/Xw4dOlcy3hvj9GpMVnGpxfqqbz4TTnat2eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756047595; c=relaxed/simple;
	bh=xrJon2H/iWEevFXdL8zI0kem/8PoYWzvQ+v081Qf7x4=;
	h=To:Subject:From:Message-Id:Date; b=N5Xb76D6qWeTQGT95/CySe6xvaZg1x2mHKTA1/6y5uEWMieW7JybgJ+vFhwBRnbzgU2opUObJno88YxREK87+WXrJyZbXkK8HMEDWyxdUkmA21tiOYoQDCsTaHxp+C6bMYNVQONEmpB+FcYoHoZaoaf5C+ILXroSdkxQVAiJnaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTbs6gtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTbs6gtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A953EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756047593;
	bh=xrJon2H/iWEevFXdL8zI0kem/8PoYWzvQ+v081Qf7x4=;
	h=To:Subject:From:Date:From;
	b=jTbs6gtC+/wpIYPEJD/DVHXiHXJI8Y8XYJfIzegvYD6eordWkuhZxViLPTfosnT24
	 161twyAylp6agn6wDoEtZZb3gCaNeZNJJoSBfbjaWrTljfkNQH+akgzErfK1d7JOx0
	 WvyulstsP8xx+UMAR/ZJcxvB/APuNjE31Xqytw4dqMIhJUolC4VYMXLDRE0S9vrw1o
	 T2OeVl5M2DKMxOuLYUB1yRtrQXhAyiv6v0nYT0lgD/x0Z9m09fVLhiX2lbMDg4zWmM
	 SVwQvr7WNpjvs361sArYKacK3sHWGqEf/c/YzCY/HERfyC1/8kwla4xr5e/Ih4V/iA
	 YEEcoQcAt4Kvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CB0CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175604759358.18440.11919835684807087537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc8afb93e9a71203e0c9a48c1434f88a048c95e8d2527d9beef3e1768b4e9cd0
Date: Sun, 24 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756047593
