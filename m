Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4334815350B
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744568394; cv=none; b=foXGfGVEl8+JD6647EIRxVCp0QmNvSRWsBhQrMV+dv/Pd6NfF/5eBumoIAOo30touJYmB2ffMbLOdfbgMb8ZlNyAONxBxB02au8MQIkiuRkkxgtbfPb+5FA7k8hyJ0Pw22bpuwiq7iGR+rE8qJ0hxbHfEZehvthtxISFTY0RCoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744568394; c=relaxed/simple;
	bh=TVQ/BBiE/ukfyZGFsQ/kn9SM9SBG/wgbN5+CtGgs9h8=;
	h=To:Subject:From:Message-Id:Date; b=dDRchSyISgB/AEs/q3G4Q7ySnWVaCdz7FGcogBVO1mgbPRijHohq6ORC6Yhy59ZLK4DM0AS/HepNEaVy0YxR2MZcJDWM01Vbl6ahenewmbuEYGxLYAFfC4o23TmXOfDLinFgj1l4V2fqlZpgXepgdIrw2DKrg16BM/0eF9IYDM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHHXa8hm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHHXa8hm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14ECC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744568393;
	bh=TVQ/BBiE/ukfyZGFsQ/kn9SM9SBG/wgbN5+CtGgs9h8=;
	h=To:Subject:From:Date:From;
	b=NHHXa8hmNKpccpddDtUqaO5eK92PLq3j92C4i5Lzl3fV6CVoK3EaOc4ExfKpd8wep
	 uiAXxnHuMoPVzKU0SyeEQdISfRvNu5DTulGIObUXovEQjyvWwhOp5MdbRz40A/0n/X
	 WzGxjW84zzLCYn/WFPEe7ghgbPJy3yCj0IolGe/EjdIgVoYLul5s6uJfS96/5fWVq2
	 NNd6TRK+enZzT6wLeoF8c2l7qHOJLz8a0f7Yeo9/XUb/OZDiw+5IMxWSwhLyMLzEx+
	 6VMbVwbrLdlmCS+1n6nD1fLAnDCBccesVY0Tc7+ffwAUNfozGwGeDkXedV5X3p1whT
	 MQri9c4qxF0ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE6BC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174456839360.27914.15076689483430823465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6c3c507746f12a33d16d8a6ba06d9c74a72a64b0efbb326f6778c0d12838ca
Date: Sun, 13 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744568393
