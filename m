Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5038047D46A
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787244034; cv=none; b=UG4cvfb0lyBYinF3wZIKqaI2W4s4Bhm15Nyl/epvOIQxasgk39SugU/ndGxh6zxjCJeA3GrsmKAx9FAv2E8ucDIPrr3HvNO5ZFffEzqLSDciE1LfjrMizT5OI9pCb7JEHXsc5AN15LgKm60nwBmMeM02N9t+TouGh+jOaasE4S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787244034; c=relaxed/simple;
	bh=RXQZV8XPctmTQQazRTu6QQumbKY589Io1AnEfJ0EvQs=;
	h=To:Subject:From:Message-Id:Date; b=ifYIKWkAEKWzTfhvMYcjZev8V7neErrVaMytUsVlSzNo882srjMss1NYHMZPMqG8Uld98D7W0VoTOTpa5XtYrIfAPOwiDTLgvxVTPR9023Vu+7+7YsuYMrREYqHB2sw15kxhfA1YmxclcyEpzDTfVkDUoT/7ZXsgT7uVp/3WuEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oE6gds6g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oE6gds6g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6CDAC2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787244033;
	bh=RXQZV8XPctmTQQazRTu6QQumbKY589Io1AnEfJ0EvQs=;
	h=To:Subject:From:Date:From;
	b=oE6gds6g4UbJSF3i2dqy35WMbNiX9At/3wf5b9EIRIgFheCDl0WHF38GV1g9Y4eT8
	 TWtvbgwapWlinWmy3ZDUdT3HTR6vIc5814FirHvTk+GQPUS9m7qA2wKaldt7ZiBWKu
	 ykx2+kNmVLgn0+Y1yupsCR4DTBhd741wEU6FKHS1ItUdnnCMFrqhrT8dOrfUAlVcmm
	 xxvJ2FtzR7WFc9pa/+NBxRAJn/E6cXo4BrJeA75pUas/JE0GCbS/dRcZq+VQnntayu
	 h5KHaIPMwLh8kAq49sezVX8t4tOe0vrNA29r6EH8qmBc2Q++LVFNhzVnxQgabtQoiW
	 qANk/RV8IncJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B94C5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178724403374.31904.116521372921944069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b42b2b247c9a5c33bf56327cf46e6909ed09e4dbbf855a63d0b2574ab78ffe3
Date: Thu, 20 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787244033
