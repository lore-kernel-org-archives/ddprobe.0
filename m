Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FEA449EC3
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 11:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782993514; cv=none; b=o8aMbanz7lPU0qqyw8t6EoJ9cxutVvgXCZ1B3LiadclFRsx3P51LC0mBsj639Me/sRQvnu4jSqn9HvT5EBefGk//XRCRGh15r/hIe3Wyf15PSxSAgigTRxww5iAoUtfDJHG07LhlJkP0HkVRF30GUbb0i9ATmEBM8uNCpMp3xfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782993514; c=relaxed/simple;
	bh=klf8j5M/82HUidFHv5HMofVYuYAXUtPzMptInjXkU7w=;
	h=To:Subject:From:Message-Id:Date; b=q4ocEsnqVOZ0oxYI2pdMK9FYXxKjCchpeGG7Ptlz945CpuOKP148iaQaipTU9FOPdMxQVVQX1xY/YBZkSQAn4aAyWjIDxdZ5cYtEBn4k0bElcyqbrmpWuHYh6aA4JlJ3W36GfwLIHc++tgSkERqCOVinEcbm5VN63bbCEVADD4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZx6sZh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZx6sZh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC73BC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782993513;
	bh=klf8j5M/82HUidFHv5HMofVYuYAXUtPzMptInjXkU7w=;
	h=To:Subject:From:Date:From;
	b=HZx6sZh/vQ3VDcUIdKhzFuhVAt0vtgSCtUli95lMjcoEkZY9VfeALQcLtVYe4QQGN
	 hfUAW5da+jbuQnC9AhHHFx/xInkvNQEqVeEvKmZPuM3mnGSvBJMrGmvPjhnoggapzX
	 nwskEmbHFJ/iejxnTv+NJ1FomKO+4N3Mzt9thASPraCVz2DoJycF3bHiDeoty3aH4G
	 l6W1kDVyioCQJrKDDcYwEH3C/fNsI0fc/OlZvwTivr9VTla84ZQpCzf8HjuFpmSyI7
	 H0Y8fXfIhB9qSI5cglhvpLZNBtB3+R/wIoQRQGA5wB4O5uDcw+FnNb/tXn39lJZzYc
	 DMDfO0VKNnkQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9800C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178299351368.11840.6421000530018164885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77daed803a2d3bb8ae4092c7d194f980fdf92ec2563a78504fa2a87a75daec19
Date: Thu, 02 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782993513
