Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFB1183CB8
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732137954; cv=none; b=lOEa9hYgWqZJ0+xlfp0sS0WhtHUUWleRFAi55DtYDSGT/cqN5kqlgHLNJvC8fLFWTyLSnL7BZn5enIMXBBcXiNZB4l3mOFX79enMmMdl08Kf3lsRc9GYh9HhOwF4GVgBBx1rUG68J4CTHxVRsQ3eFpn0JNziCIjsdycdxDZ94pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732137954; c=relaxed/simple;
	bh=3PJWwqRACit1UpuVf/1Wys58sbXmmWDPOeGQfXZceDA=;
	h=To:Subject:From:Message-Id:Date; b=dca6wpULxCidDcyOxPyAR3U1RGV8fok2pNmtJGUvZqY1zkqFImrPC77Us3Kx5pGZ++cQUtaPiO14pKX4rWcL+hWV/ozQaSfctoNrfFoTDj5FaulnKO+fFX+NmO6yqgKLSW7+Hr8/8dikaU1tBqlb4yu8552DIK1ufiU6sEryXWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOp7f3lQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOp7f3lQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF682C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732137953;
	bh=3PJWwqRACit1UpuVf/1Wys58sbXmmWDPOeGQfXZceDA=;
	h=To:Subject:From:Date:From;
	b=aOp7f3lQgYygFA0HPi8TqTMmdH1EueNFFV+CU6tImwB7KmHGXTzOzcIOMM3dmwBKK
	 K888wcAuLG4nMAdSFqLWF4GK5loBXdHDHNmCPIElm0KDQuOuNN7RT1Eqihl63Ej6v2
	 OquPkzQBPzuBLUbV2f4/ozpewEXwHwfBgtjrWbueb7ZLC5tqVnyxBZ0Hc7j1z5TH6I
	 5PwCuFfiCOp9YlTTCANooWE5p5SMtWcX+JX9RTcAq8zOpPJUyUHQdCLfAGpLq1Nk5j
	 RcofUeU5bULMOU3jjKdgYZ+Ot1+oOzVB73rNQOom/P56FyQ+NOu0eEqqCVprqjzsDV
	 E2T3idB37xXdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6AD7D743D8
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173213795366.13186.11073478270786296869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c86ec8259a5e55a3443f2e7b29917eafb8d9d6ebc303b85a287a851c5233babd
Date: Wed, 20 Nov 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732137953
