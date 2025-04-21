Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD14B640
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745242794; cv=none; b=H30mBj5a9tFcx9nOUQfvK4hqJKe/APmP4f5y2y/Vfzu5gkNAPK+3HU6FMSnJQvz12DxrXry7sy3gXX1KNdgXwhh9/WhaPvDADQpqtR8nOcO2DoYHaF77zmtTMYPabj6DErjLW94e6gBE0sdwgYgpT2MeT2/9QodS2yxncaXfOXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745242794; c=relaxed/simple;
	bh=lA8N4oW2QitvdmiZKfzFWjUD+0v0/LKyLGJFdkGj8gE=;
	h=To:Subject:From:Message-Id:Date; b=DR+nXfDPgbBkKJy+HjqlGnK184ahG0XhxWFCscu8DP8SGDGeK5RczZCnWq83ni/JGQAoOZGjoFvL4YbPomvIng2D9q45aahMUIfXGC7AN/qhmG0dGrRuMVW/wqNYwmdIqg9AAO8OnbTW4Be2N4RIgYhgspbaUoiR3VvyCEY5nq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5NZmZdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5NZmZdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9007C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745242793;
	bh=lA8N4oW2QitvdmiZKfzFWjUD+0v0/LKyLGJFdkGj8gE=;
	h=To:Subject:From:Date:From;
	b=s5NZmZddUft/Jh6TkXmmHvhrOMe4+NQp1xVoqYh28MEvWBPP8Bwr0gth01V1wRvYQ
	 u0f+CVXxJIa6/qa5unnZnfAQnjGO0xTs5Nl8yygY2SNOS6eP05PJ7M8Ki1U4/a8MJF
	 0R+9343uF3b0Wb1jjfmk2vdGoFyPm3el16+ps7KzAjXXKFidEN0AFiEa8re1RGiXq5
	 RybBLGMnD4WN5IdmDrvT2hEi0vq0BjHYobMOIzWdGuUp+W9F91IfiHJM8V9qZ5orRq
	 45d55e58+Y0xeejO/8tENCXgxFNDbBrmbrZwe510bHQQDPHWXBb83psyY3GO6VE3LP
	 Ux/KAb5M47prA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45E7C369D5
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174524279366.21097.11717767895427759530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b807effff617c8910c8ebe7ba9e27f5e52c39b9fa0a9a82212333064c38ac447
Date: Mon, 21 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745242793
