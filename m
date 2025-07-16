Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC6928ECF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752652794; cv=none; b=TUGcWhUyLuXKuKyimL16P+4z5ETC9JLWHEDygs3Klf1ZCVMPOggECLsZucqreGghoaz3vBvkn2j1bZA9mj7px4bfAEIwQpyc7/E0O7M8YrZSzJxypwvmx6tfPA2Law1KiR6MFvv6w/wHKepvhRg4nTHGo1OfOfHXCnt1YKZ1fSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752652794; c=relaxed/simple;
	bh=PcPd3Y0JX6ze/lqBRIR1d9NBRZrSrhfgKnP56icuQyE=;
	h=To:Subject:From:Message-Id:Date; b=kVR07FF2Z4NGkiMTUyECZWSOc/+S9Q673G7957jJKrfB9XDIJwv4db6U/+CyWEINewo2aW4WSDS4PbZpb/m78W0KGpNCY3X1kFLJjhBwG9MOSercXda3wLY/0UrECBDRHOzoTHDnftTPJKHMuEMCpYeuco8IODPiS8B4aKjdCJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GyK54yfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GyK54yfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0880C4CEF9
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752652793;
	bh=PcPd3Y0JX6ze/lqBRIR1d9NBRZrSrhfgKnP56icuQyE=;
	h=To:Subject:From:Date:From;
	b=GyK54yfPh3ZCEdpHVTW8qqueEs/EoefXBgt+EL4nzJVzeFrMLTq63S4tdmrJWU8xM
	 4shkXvfCfPWDeEfi+h2uFAV4D9Q43PTqV9XGj+rn3und4UiyVzRpnYX3CNSBYX+IF/
	 2d8bKUw2wQ8JbkwP5/Ycwk69+Jb9tFatFXWPd917DhyF3nc5sd1oLJ8TV6hQJW8+AF
	 UiYo7Qx0lXJ+cGQTE258CEICpSos5F24i8AlZNN/bBRhlstfALPwpxaXZWt0BFYWcO
	 6+kAfzuijxWxwIB7zPnb3XBP4Ko49bY5t8TqCcjOzzfqjjtdl8yIqCT1PedqDqHyKI
	 NB9QMHoV1eHtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900FFC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175265279358.12296.18268483485805167973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 226967cfed08f23281e39431891011a36acde120c6ab4a4bbe2c100a55bbc606
Date: Wed, 16 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752652793
