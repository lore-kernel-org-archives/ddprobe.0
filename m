Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8B2327C1F
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765830773; cv=none; b=pqIZ0wOPRW7dE176EcJug0jGIDeNWB+iVUuANlCuguvoKNPEV89IpJDUpydJFRGchTZGqhhL4A0qoXBCfd5cMdSUV9uUP5LiQq+Md8ZwPDFzF1Zgv2/wGNeu+RA57ocKK22Hp3443e1Vtr89quS0HZ4H59jThv19+O03yyfT5Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765830773; c=relaxed/simple;
	bh=rzNh5feI5XPSjw5ew2UD3wjGiSlYY3cR4BovjdSbnzM=;
	h=To:Subject:From:Message-Id:Date; b=gk8lC0a9tt+cCJmM2jlMlCfgKTWMUsdbswoCA3MNtxvXcuLSW7b9Z7GafPvODuQ97Y7ZlqwHf/4pWK2SbOZqw1o9L2VJcOC9snWcuFzHK+tvpolG4UtyL2Zyq/2aZ9LAnf0PY3gOSdLtpb6QVsNj2reXijNnPV9QbIAuXRBHcXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9h04t/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9h04t/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAC0C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765830773;
	bh=rzNh5feI5XPSjw5ew2UD3wjGiSlYY3cR4BovjdSbnzM=;
	h=To:Subject:From:Date:From;
	b=P9h04t/rtajpT8wXeBV6CX45bGzrIDlScGrdto3UwqLj9aeH1vPA2Ubqm5Jc/PvIe
	 ZmvT8BVHTVMUCZwoIFMXGp5tb3QmcVO3KtdRp8hcJig523kfyuBAkStiOPoj/11SF9
	 dB+GaUecbVYKGys1i7Q3VoxxAYG8E2b+sWAgCQTNUDjdIt3YKEL2uoWmjPLMVYs9xr
	 Te6G5noILyZMTHa7+Hj6j0RvodaalTi55x/pUHTclPZNvseMGhqAgVdHnnH2f2849x
	 G6xMtkf0aWygdWpmRoL0A/Q1tqEh4lj/OwZRZxgWj1SNVQ/CBqLrsY9Mk28gAooQh5
	 KJhoRCYFANtLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFFED5B868
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176583077362.25503.9536291001048813128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e3c35534881ec310a7ec30e6b4c979913cc6ee56c94beebd3fae8f84f30c84
Date: Mon, 15 Dec 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765830773
