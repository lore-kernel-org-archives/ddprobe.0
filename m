Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA597151985
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745322593; cv=none; b=en5292Rh1PqQ9Uj/UIdpiP5UHCmQYlb0EWDw31IqxjbcHyOD8jwLOt2UzIQiDXUyS93AjM2/50AhT6afwJ+y8vtbg8xYuF7SEtgBufV1u5o2RpzryBgxRrfrVpSeOkHVdNBQNxn7o0y+DuRPKM/ox1Yc2+4Lt1lkaL1ivaV/weI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745322593; c=relaxed/simple;
	bh=0OqTHruqbLVMPqLf7lbN0gddtolXKd9Pjmln29bdOWA=;
	h=To:Subject:From:Message-Id:Date; b=M96MbYHBiBJgwlgBhbOV3h9//9+/NzOD/fv6wErAjRuzZeIirsSxpdpNrxdkz4MvDH4m3NRgFvxjxfqDKV1XryIhnoOdk9b7aMsiU//aTPVZW7tNvKDELo/PFvpMMzkxPCBMItmPywHVSlOaocPlCvIgTWf4P1LccHuEQHS4RbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEqT80sv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEqT80sv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B744FC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745322593;
	bh=0OqTHruqbLVMPqLf7lbN0gddtolXKd9Pjmln29bdOWA=;
	h=To:Subject:From:Date:From;
	b=LEqT80svpq/KYiQHTrBp/GuHPXvDnUEojcviIoV0I0v/yGf4Asfy0cc+kfAlVsKeO
	 ZJ8eszDVGtajYet4NPdIcTyLVU0NobHhYGrr/oPdxYrrW5Dr+S4h8RAxp2t/oG7fyI
	 0efIzAvTT4Dcgl5Jqm0c2DUDZ++tWAgg2EoY+kRIAQS5Xo9NLkk/kYwgqzn5U+x8LF
	 j7P4/W2fKjsMCuA5Ztn96ZjtlatN9sf9r3QbPo18IXerpfUA/5se5idXofdEJEt5sD
	 2yBa05ui0DFJ9AeLIgsv7Z1j0R/q9X4astgLcJnWWJ24eYcDyIcelwwVUPB0CufA/l
	 ++/jpUcVUakBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A57F5C369D3
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174532259365.25994.7303943074512726213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f65a6852054193d3bab9efe77097ef1d64ffce3cf28f6cb765b86d3f050b3002
Date: Tue, 22 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745322593
