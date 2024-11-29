Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6493519938D
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732881954; cv=none; b=cpobHvn9f96tC+jy1dK0IoUcZ7sd+8/Ar+duQnGhh19CSrKNzxHDJbhfD05kTVTWKMDKi+2/wtWWVAng6hQkkZnU311KYFMM/KXFKaGLKSQUSa3aMAMWBnp2DRTZhOIz9RpsqAqUI3f23QTLQXs96Fq2LGqzaETAdF5J1SvrH9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732881954; c=relaxed/simple;
	bh=8BP3jabxrr8UMiINZBUrlrBpj8aj2bKSfzyLL8Ul/+c=;
	h=To:Subject:From:Message-Id:Date; b=mAZ72AYkdIf9Ya/FDhX41LdMJap1arH+uIyCsccDLusx/EnfdT8xt7FcD+xa4SxNTPAyFBMKwJUQfa9jQIE+eHl5Uh2eWlC6oYW8NAb9POxptA9l+r/NnD2xj+fCLLEfVJ66I6nqdA4BfGTDGM8GYjulF+FfQF0t6km/BYU7boE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzs0b7UJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzs0b7UJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7DFC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732881953;
	bh=8BP3jabxrr8UMiINZBUrlrBpj8aj2bKSfzyLL8Ul/+c=;
	h=To:Subject:From:Date:From;
	b=tzs0b7UJATPL62VsVCNn98/5+d7RHez0GdCCSvGifsf9/GKchOUuZu5MG1XhefqOk
	 qLowsGNeNsiw5QzIv/D3XBuPNjW2C62Dhdxq/QDd4W31J6THNpdd/CJXjK83Nu8K+h
	 ks0bkWBoxK1d5OO55TgO+L2jBPl/Wh6RLZD86rU6nLQyMmrkLtk3N9G6vzCHat4aBp
	 R80SS6kI4g35GE6IRmnlVwZ7xpVBV+n5VVIplqLTJxFLaBPUaAvQjfc+sGZqdIRvhz
	 yFWhTS/TnxYWzfJwrujnvVUZiG+6FElpB44C0W0DJYLdPd9mQGs+6GeYqCEFT83gB5
	 eGYGIHmWA564g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8415D6EC04
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173288195371.20587.7255410384424250653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3eaf1c29c30474f9d0a156fcd91612c74804b44eb2d84da73a2439ecb1e14a5
Date: Fri, 29 Nov 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732881953
