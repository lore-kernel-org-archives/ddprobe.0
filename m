Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308B220330
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751688594; cv=none; b=PnzKfuZ7kbp5KFgNxJVKgVO+YNre2h2yo2CvhpMUT3iyaB8RvutO9YhaG4qmEx7lB3KbabLMgo54qibf+2rOsW+p+JAMH5osx8ALo5Y8a23/a7Y6vCdIvkxBzqzkqb/XgWyGZ4p+ZRmqW5XnkOpaWitQYUfUX2qs16YpDgLQCoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751688594; c=relaxed/simple;
	bh=hs9oMpgJMFoQqGy7ukOz7cQ9OcRvuirKfxJlntdBlqg=;
	h=To:Subject:From:Message-Id:Date; b=B1a6i+nMdtyMPaWHPOy/BxLPacVrxypSHLMQh7sQaab/HB7HWM/gN9CsDkUfQYi6elL5DY9QCP9w4bUe38zJzgaq6eXC6sq+gskFk68EOJ5FsRJnu6pd/uaTb/HQRNJ1V9n+u2XEjsbeqvAYeyFbwI31sT64axOoolFeLqzta8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khGqOt8+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khGqOt8+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A528CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751688593;
	bh=hs9oMpgJMFoQqGy7ukOz7cQ9OcRvuirKfxJlntdBlqg=;
	h=To:Subject:From:Date:From;
	b=khGqOt8+SiAHVBan6pse2Zh5DzoblRPWpIodduRBkr8wzhVRNWzFGR/+1twpUAbdp
	 NqV3mbykwXQRLEVyBFHovZLftz0oEcZ9O1MuLSMiAEGXSMCovXyM2MuDZ/ezI6LkNG
	 8NlYpUnAZWxuKoYvg5Vi7ym/V/gOZXgscnaVk9LBZ3IlCBUTFkwMyeMuIJCxpmGp0J
	 F35qwJGVnGCiM3CHCyeWq6tDGPsXeMILs3WluKHSxamtO7DRAlQ9YCHdOYdhV/w6Eg
	 WsQwqR1hyIQdhfHXOPG9B0paDgrBtJuKVMujdMXbM+vJrOEuAsX2DG2OqF8b0S2sFy
	 J5Kh1xihLcVJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DB0C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175168859358.29058.17435344161670227506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c3c0204401269ef0d97eb4b781350858d9985d20caca1b7b43a918ab54aeb5a
Date: Sat, 05 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751688593
