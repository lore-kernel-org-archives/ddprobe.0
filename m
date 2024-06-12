Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA1B53365
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 13:38:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718199504; cv=none; b=B18FRKSuzttW8gYzTozVbRo8h1BsQD+60VPRgZM8NwKh+N1WOraMSP2LoE5wepfiJcET97qWJpK632VLvFzQKR+Hho6xpbzSEs8/cmXk8rx/BXAG89Lb6HWfiXpqPZ0201uc/wZKceYstyVhiTudXDTakv2a332hywh549LEGKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718199504; c=relaxed/simple;
	bh=loC2FboS7WY8LwGUizfFB72BCgXlCY+UW4XYhmSBCW0=;
	h=To:Subject:From:Message-Id:Date; b=EVZN3TAoV9M6udb1YxISR70l3b0HcTNS7e5hO8C59eVHRG5UxaJUHF/Yv8Z3m/4YpIp1aRtZvk4ga/bO3yU/eg5xh3tOTHTkfSt1n4Lnl4664GXH81CBv7+7CeM2FJUXZI7Uq/MYdGO9gdSANOHwY1X8T557pD0iMcasjRVaxvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1IWN01S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1IWN01S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E399AC4AF1C
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 13:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718199503;
	bh=loC2FboS7WY8LwGUizfFB72BCgXlCY+UW4XYhmSBCW0=;
	h=To:Subject:From:Date:From;
	b=b1IWN01SVaNRnTOart1T6IjpqQFXz7pNV+gsJBMsF6kkQrOdq1ZQZeB08NOe+gJiQ
	 JB7HQ8Gp4cdCppac1Y0+k9EoqwL2Y2VN3UihtuAU7nULgrsVpNU6JYBd+p0MmcEr0J
	 oRmWxPoQPaC5yIGa5OrKfjG9ZBccCB5lZbCLRtmcEBqyGtRyeJMc8fZqeMA81UeO9T
	 Sv8lqlX2O3alL+gNCvsO/BqVR6zdpozRiahKUOUZshITAI98vKSUJa2zYYEVmmYh05
	 b0AccTaCYY9j69LmjNXucv+pN4BuSzR1PTNV6l3wl480U6f2LY11CMCJ5I162YXOXQ
	 mrpxifHs4YPtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D074CC27C77
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 13:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171819950281.2625.1676986240144377840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c954c5ecc6aadc65f95abb06b031b76facbb4f4846d3acb6efe0f9711df8cac
Date: Wed, 12 Jun 2024 13:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718199502
