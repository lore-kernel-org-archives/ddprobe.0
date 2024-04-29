Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3E42209F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 10:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714387343; cv=none; b=r9seiJuTL34bBpMVrfIDl8butWMiuETsLJQ57mRxFVM17YxweFCQJpaTUgcrKNAEWreFiDY376rKd5Crh5xeuaBNhV+LGVn0Bziz2TXPGzBWN54q7b5MpU13PgBmnRMWvnhMx6wlhJht4fgBiimvlcyscle1fv5ENj0tkPWOxeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714387343; c=relaxed/simple;
	bh=S0OZtgKRxEwp8B21iUQyhbLRBo7XqwBHpUg6XlmP5ks=;
	h=To:Subject:From:Message-Id:Date; b=pEOkzwBkqQIy+vZD+SbQ5/ejynpgPTvGpxhcxo5f+eo1weHLhc8R1IVg+vHMEm08kYCu+T7rYxM0u/NpDNpEqM8TFf3lMLf5IbaxhC/MXXgMRzDtoOvJTIeK5Xf7WnvqRJGP8bEiyrfuXZb9W0Kc+Ew0Q6obohl2NdmPBLb3O+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFTu2lxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFTu2lxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DA6C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 10:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714387342;
	bh=S0OZtgKRxEwp8B21iUQyhbLRBo7XqwBHpUg6XlmP5ks=;
	h=To:Subject:From:Date:From;
	b=mFTu2lxw8yWMb4Txl4TbkAYKsH+TG4YAv9c8zyRUelsFgmeLSewJD1dfcdeHWfJmI
	 CL3NMeGkCNFuWf2EgR/6HHH58XUWcb/VPS4a9wUeUdcV+0OIw5mbUj/vkvuIC24OG8
	 N7m1LLSPt8FhZ8pJVUcK+DbXWCRqwEJOE3LCa12Vs1RLaf+9McCx6zcAafvB97mkGk
	 1KMgczscgtc27yQn7tsI7MxElvbBCq2bFIHLDZ5odCwu9Nx4EBURy7hbw6qNCSZLJy
	 KN/lPOYjblsDw6DPEphbyV0TA8LI43pTSkzT2h+BTWkpvSJ4rJ4CNTwX0Xu8mj+Hg5
	 gLDxc52rEtTng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B97A3C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 10:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171438734275.30867.16807926069753006451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d75f818fa1c59d37e548af131d85774d137089c79bb4d0f28f7142c4899610ce
Date: Mon, 29 Apr 2024 10:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714387342
