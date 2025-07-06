Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331C5846F
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751840994; cv=none; b=pvzIvABtwCrrjXtxzjdg0SCOqr3ooUNA2K5KhEwjDrF3SmtbfbbptsYWNcz1EpyWBvpF5Lxrcm3Ow2y8dWVRr8MDaah1XhisCzX2FGCDZOnBiB6gBpCKsnlfpB6zsTzBGi73YvUUt717+kwp8vmBTvdjuQUiYG9Bc3Lr5ilIovY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751840994; c=relaxed/simple;
	bh=pu650zJplxX+0tjFUHULhHhmXO4phvMnMJTmrj2P1Es=;
	h=To:Subject:From:Message-Id:Date; b=u31wcVyCInLJYS1EKiMU2TtDkDq8eI2/c+YUd7VHUunnsCzOtoMfEJVmW4qK+wbS6Y6kfbYxGvNvmsv7kqfmRXXmfSbzHoC9fhTFQ+pzfM0jNTEHsAMGhIE7KrIoyZNl6EMz1tRBjFDTpQdguHUMEz2SVyAgjEKq69p04OwZoAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7guOtDS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7guOtDS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13ABC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751840993;
	bh=pu650zJplxX+0tjFUHULhHhmXO4phvMnMJTmrj2P1Es=;
	h=To:Subject:From:Date:From;
	b=h7guOtDSXLvLFE2Hy9AQl6XBFY1XtaGGLojTxFLuOdPT1/fyOrJ6uFx0I8dTZtV/+
	 E6AMLsUi8Q2tJyfZl9UwfKwtoZiYOX2kp5frXYR4/K+bUl4sqi83m9+8SPR2e9tb6e
	 m7GJU+WwQatza5tlUXuyWgFAczL4NqqMi/T30d6QyFOQzaQchaFyUmisufz3My9DBX
	 A0CE5xAGyMbjwzdnkkvD5sYjucdk+vOKhRzzpu+ljISA+mxm4l2fRtsqsD0+3tIVO2
	 kiMnZWBKaXrShGajD5657JqnTPsOSmSJgJ7/4BnJGejxog/ZK+7c2tzju5EEybECZb
	 L9CdwcVP8V37w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9186EC83F07
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175184099357.26054.3368024635215626851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92b22b2662e84a9832648be9f3b579450a29d3c52fe23d05168e3f42a68d275a
Date: Sun, 06 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751840993
