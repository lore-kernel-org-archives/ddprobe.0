Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04BDC2264BB
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764184974; cv=none; b=g5ED1Pylvi4QMJwt2DOSuh20/d5ut7F6gM12LuCnfnHY5h8qsfGE+yswgfaYu9bsHDtBliaFmnqmhFHWo4TMk/2Qw2Y+mKhJSglP8f+Oiq2N8GxXnfYZF5dSFJmbeoDCekhNZAHJgHsMVXjz5H1HnfQH0Sajukz3Z0y+vG3IHdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764184974; c=relaxed/simple;
	bh=KMSZQdXnXLiiaTrzQ+sWuAsIfIrXf0Z4E3fzxqQIdTE=;
	h=To:Subject:From:Message-Id:Date; b=T0apw8RJXh1etqvIoARDqUDd/3h8tq5L8FmD+dwX1pKDyyQINhKWgZ5EehWj45EQBMsDBlBLEK2PLTwUayuRFQCSqSdtLLQcV2AILpXyxD8JdHEHc/RoLdvmoHWGf6dkfBX8pyWX7oFknSlPAdPc7iMVFbbGUs3U67kX4MfVT4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2+3wIZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2+3wIZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5193C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764184973;
	bh=KMSZQdXnXLiiaTrzQ+sWuAsIfIrXf0Z4E3fzxqQIdTE=;
	h=To:Subject:From:Date:From;
	b=O2+3wIZAM9JPKiRaRjt14DSXdDwVLjPnJPnSAOW8jDon2yPUubAkvOOWjPztCa/6c
	 968bVcLOe8qlAKNLCIYBKF4DKRYFMTelHzJPY4YVCZqk2zpHB5cYVvcsp3o68Fr9xC
	 WQzchmoXBXe5jDUVfONhd0GLZwjh1ucDHVuoWVzKTPRchOihPozwwt6r/Txbcz2A2D
	 WqfeCxVsdAZrXrps51EKSjmPw+lr7h95EYUWMgVQT1N2ijVlw9hIbqf06Xkypwdm2U
	 aW8d6vLctLmysMw7wvb30KGH01L0iFfX5zmSlYdWi/0p+JP3xeoSEpqpQA3BNkGZrq
	 IJLdOqUyG/I7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B88D11193
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176418497359.15191.7174090427841905848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e708c6e9a357722489a3af2aca7eac582f6b2c2cfe142f22ad05d017c669945
Date: Wed, 26 Nov 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764184973
