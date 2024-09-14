Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26915148833
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726317354; cv=none; b=UC3YDTzqxsNFJLExG7JUfzJXgITbO0UXdTTjIEjJQWF2e4SaQAXkEVjhLyfN1YsI3TKBBaA2QtlTVlANuSU5AsNKS41PD5OZEspGuxnSrdDHlZ65LFoR2RdUTVMz4r/hApBOmyAryRt/kdXNtHoDMQsIVLEVeTliuw/FXg48j2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726317354; c=relaxed/simple;
	bh=WiBAzyLiWlQU9/pS+7M5xDYlcSCCJDgXgFdF3WydEp0=;
	h=To:Subject:From:Message-Id:Date; b=XdpTqur1hxNWueg0Owsu9hCQdO7o50kuiAQdrje8tADz4H/va+AWgD8MBNjpN17wAiWGhHE1gXCI7iPwOThGxlmTO8p/UNToq+JpnqcwRIkyNvwI9hdQrRUC75fi5zUTNh9vzPN4In6JY0Jsb7s3Y9sNbHND4/ZOCe+hMIVBnfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5w20ziS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5w20ziS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBC5C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726317353;
	bh=WiBAzyLiWlQU9/pS+7M5xDYlcSCCJDgXgFdF3WydEp0=;
	h=To:Subject:From:Date:From;
	b=K5w20ziSMioFw+jXYCEaaHRgtJvx4pvWezxdcuAWCk5+8cuhBdpHfLupXg1nYxHbO
	 4uQU6QJSkjxhqDOnLHoL7p3Ip8iwQhKEecbDvOTqVUMnmub77nr6VHYGAe06gTSrlq
	 Qqr772OtvkzQXCWO6XUPE3w3p+SBbN0xh8joDsEbW/BlPMf/gsdKqPseGFK3qMLWBN
	 Pv1BopHfEO0paozg9WjptUuhBTCGWM0W7FTaTDxm5ym271LJej9GGNb0NGtHCc/p9X
	 rYpYUEpHUoAb1d9Avux8s5BiOB9tDx4Yfhqad1fNdUMhstEujEZJRGZUVYDKAVIXW5
	 uU8/vDrCPqDSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B82C02194
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172631735358.18175.2748509258683062335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e7bb2d1420ac7dc33c4e25a3f1536e7543f512d6094c482d50231ba4d4867b8
Date: Sat, 14 Sep 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726317353
