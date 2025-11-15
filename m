Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271FF39FD9
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763165994; cv=none; b=YAhQpLl/wbYmuDV18rYQox2eRnYx0Mv+qmZpbEa5DZkTV3h0LB2g1H0hL6NzTTTFH0tjZFUNX62HWAHTSwshBwBqU0R4VPmtOBHU8vChWMIMz9y0u+KcVK5Dv+3xG5RFfZ53O9pIl5Nnxrp2pCodGAuDkkjaUxRCzvjspw9Mdp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763165994; c=relaxed/simple;
	bh=5ePVL1/eSGLe12F0eU/YcJQa51GtYs0NWraTBedgzK0=;
	h=To:Subject:From:Message-Id:Date; b=Fw3TMc+efq2aJ/DXUUFKpgxGbwWohKyGaKT+zdPSJSJ3ZDatuNZowTO5KcOzCqhdTwOO1GqX9+Ml476r/6t5n0PjgMJ8qJL7obgj/YAH3IrgZWDKQat4QObFkhunOp0n2IyguJJSWRaEdxKeA6g5QvYMMmGQqUDM+eDBqrsgMmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMTO5Ksy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMTO5Ksy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C58C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763165993;
	bh=5ePVL1/eSGLe12F0eU/YcJQa51GtYs0NWraTBedgzK0=;
	h=To:Subject:From:Date:From;
	b=SMTO5KsyUOY11jqfxaWRnvD/LeUS/ZV9KgQjXjZlCGU7K6hXUVn2wyJtiy9M8wxuQ
	 2sq3Bo0LXUl+0CytQifIwyoSneX4V57KqPDuw1L+utc8AAaTrfsAaInhHuto6RQ7UI
	 GDOk1NeOLFhtv50a034XcEMiZOVhibfWOJ56/EcGoSJG/2w63S4gYo7bxLmvoM7XV7
	 eax85Bq+vPGgVIN+Ote/CVe3vWyeLhxMUNSfYmuRGF5mumpaO6QpFTpxTDeL3rhaST
	 HPf174jDwEDf4N9QwmsvaCoyHgUtQ3WNU7lxPD1Tusic7A0hdPSWgq+y0xvJfM+Fa1
	 JIihk46+HFMvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E0ACE8D6B
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176316599359.29193.5887709500444634191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e0031acde5dbb333abe595d5ce82a39004b8ec5846df2ff35a5063a27a4fe38
Date: Sat, 15 Nov 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763165993
