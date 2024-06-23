Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EB663D
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 10:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719138143; cv=none; b=jwLT5C2YMVOsUWxfLSlgH9MqtfEek5gkQYSsFhdHbaeCTixDN6o3Q4CbdLwG4kwfSarS50uBUnLIOZ5wsh23MB7mQ0nrhrXMXcEzvaYq7BqIFphC+IDmOQbmfBcWiYkPy6pNK9Kgk1SmsSV+Nm116IkScaHGuubw3mB+TlEA9F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719138143; c=relaxed/simple;
	bh=EpOWHr2cvyAoAtSLV/D2vEvbsjO8VzhG9Q7x76VbvuQ=;
	h=To:Subject:From:Message-Id:Date; b=BulZ46/a/FN5fnst1Vax+huP0VK/1dpFRFUE7yKIjC6SEpJN5OdqOxzO3U5MVJe8LOZ1+VNWbeZu/FGQsafyeg+Kjc+md2FNj6WRzk9YITLItmwbyAW1M6GXu4Cp2x83H/KzUAV1kwAZGocVNvKpcM5FLNcfd3Z3T6dtgf9u6nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8GkP6yO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8GkP6yO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D452AC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 10:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719138142;
	bh=EpOWHr2cvyAoAtSLV/D2vEvbsjO8VzhG9Q7x76VbvuQ=;
	h=To:Subject:From:Date:From;
	b=s8GkP6yOL44z22nNcV2PoMTl4s2GUyOf8/UZZDLiQfdKId5YIg6yrzRqViBXWnrkQ
	 5ltcVicT7KgDRBUPX7gGXlwV1E2B2Ep7l2TLcSTdXmj9hCBnzMm8YZAlt5zMPUBGdk
	 XRizIbiTrHPSs6OLy3e35E+21R+upCghgPjQEn6W4zMbbRVTTIfO5Fgd9cgXLPXiMj
	 Rulz8LTrEMJVAOdOPqynm6Q08/nc7zDiI7PkEDsVB8iXb92IyX/6UbDxkwXHXJ1wSA
	 afPNuPVz5LUknpJenIs7wcg/msKSPUKFv1iW7KWM7fuDUUoT64w8FWE76xcRoRW5LM
	 5M5ory7hk79xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD783C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 10:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171913814276.16668.10270745099879274196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faec57f3e940b65b73204a4a2bd118534f23af9419bac5c262f21290ef6227ba
Date: Sun, 23 Jun 2024 10:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719138142
