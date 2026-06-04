Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8B13E5A19
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 10:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780569274; cv=none; b=mSkyjWG48bfZHd/0OmEbwBcKNxzV1QnpASNjqc55TtvXops0M3TQlM5aeKJsSRtfCMowmroLyz6se2Lo3Y2CtNysthCdrJgcksGGx6JQIqtlMZyQi3C1sRamfrULlE7i8BLRNAoS902p8UbuWlArhNBRMNiCFhH1txlIxN3Z04c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780569274; c=relaxed/simple;
	bh=8GsHywhvUc2SIdW70aMyw79/SZj+7b8LWH1xAMJ3shM=;
	h=To:Subject:From:Message-Id:Date; b=KX+zrGA4Ju1Jf7mvBp8XGFzmVmm/iMgeUHfDQiZFZEQTZthx/L+u/JkXa9BXPdZRK6QZgA9MOgmPixANwpZOZ8EBjcolMzlcmZdxi00WO5LlTeZ8gYL1DQk94qC+eJDh9DaZYuwIC8Rpd11KlrOx9KfT4HDldz6IqsyVFHljAR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIMAipYv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIMAipYv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B651CC2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 10:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780569273;
	bh=8GsHywhvUc2SIdW70aMyw79/SZj+7b8LWH1xAMJ3shM=;
	h=To:Subject:From:Date:From;
	b=CIMAipYvdTYmbJBxUUjW1JhvVy79JHDU3wWBwYaRwW0C5+91qUphAiTwGtfnMEyKY
	 bpFDTb3B5W16YlxOS31+M9yu+cyvKwezERemJwgF+PahqAcaX7Gt0OVY7IhBGpHD/3
	 rcHH/7r7xe+ouwJO1P3396af4e4k0e2uhO9fc7Uik293dGxXYbdBjb/NvRbOMUpyaI
	 o6L2oneA3qJi/uD4on43hw5+rWrhnO4zzXsLIN48k4MOIbI+eDE8DqgfzR45mfjkDm
	 5b0qnqOvgzidb1rMiLhFhxkYtQe3ZwHwWnAhwsyTLaOjAvlxlNLogk56OXJIHPfCjk
	 KUsk3WvbGg3RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3ACCD6E6B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 10:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178056927370.18690.7023915845416324284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b7da8d54885217d6d32f4272b13e094b2c9b628c8bccaed482960a1ffdc5e1a
Date: Thu, 04 Jun 2026 10:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780569273
