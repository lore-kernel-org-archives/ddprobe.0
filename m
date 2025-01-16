Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EEB22CBF8
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737049554; cv=none; b=Vza6Uej7CtxIQ3B7PddpyDkuTiaj4OVCyzDgHQ0COhjTPldkbis0LW1sSVI9amgWToVR2a1maK8K6zs5gmEwKDI6MBCfRO0Ai/3c/uSsieHGTOaT0x2u/mJujgd/AvXs2Mox9pe6mPB7My5fiWOeFbWI+tnwuns0xDgpuEwxGbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737049554; c=relaxed/simple;
	bh=gr0oAUln10ukMimK/vH2vWHWqCr+b7Inipa/q/RwYYA=;
	h=To:Subject:From:Message-Id:Date; b=OuhcDw/AqI/uci2LuoVhOSk2nKWqEpHyqezWPvEULYkrrDTRf5UMMArWfeXoCmxKDyMOQFWe5s0dPRn3+p2bDdIyXhPZlmvFOLumWsA8FnyG3xkxa1qeVKq9R1F2J7PZeiDW8QJzwmQ2GHKo4OPOvjd/xup8lrGg6sdEexhdUJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUe9KseR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUe9KseR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A875BC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737049553;
	bh=gr0oAUln10ukMimK/vH2vWHWqCr+b7Inipa/q/RwYYA=;
	h=To:Subject:From:Date:From;
	b=jUe9KseRVmrAzlm8aFO8AlIapTzL60XzCvPHpIy0eFylqxDFitEdELxQ+nwKrkY+/
	 UAQmP76hhPMCs3XdQZNJDIUVEWzRCMB5vzjDNDAym5ksAkbYSRoBKVvLJjKkYSSGT8
	 YuWMcWqQ92vgNdLIA2PVBDLe7Kb0TeUUhK4I+tn5PnY6j9EszV86tzGdqWzQbBA3TC
	 ciOxOC2hvhZkwa7glqEt3DBAuiNi7r1jkw0cnvh2XcCXTn++FsKtJENAwzNy+bOW/6
	 /2o6XoWl0DSLqfKpBT6uxOLtklnEcaj69IiLdyk+liv4EyVBW7f/2T0aVYnPu+o69Q
	 pSco4ghEk7GWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943E0C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173704955359.22288.4294637680883533026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeda128f9bfbce6bbd22c4fe7105af360474e3f04b73cffa6f8f7001de4ebd2c
Date: Thu, 16 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737049553
