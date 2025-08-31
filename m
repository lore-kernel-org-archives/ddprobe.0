Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183E21A5B9E
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756678194; cv=none; b=XvvIUkO/mVD8yfh1Ocgqunqzl/GafJVCaMflpWvUUG4jIH1dGVUgLWmrFbILEGcOt1yB4F0c9TSBxHKTnQAwAJRqjS7Kv941tLI/q41Gjb6wfPDMjzDNTB9Qfr2V3s2AtAgi4B03LNzxtw3Et3zde2l0Lmf4gkL6RxCE0rgbDxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756678194; c=relaxed/simple;
	bh=+FUcpAL15HUousA6gOD6xPiFvVbX4WasSesE08cJMBM=;
	h=To:Subject:From:Message-Id:Date; b=cJzSBRtsQeJRe2f0DCAdSM7roMFI1CBsDZUdRTGVdxF/54pK1/ZFBUJywtWnxSTc/7JUGJKNopySqmrbIFlRlHVJ/zS/3xjWODBxYLnp4Mvp6S42KLxzlJ6c7WiJz5o8me1vbNvMqFVIcvw5fZCRP5V6HhDRCZY7a8t6TA8iCHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLeoFzFx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLeoFzFx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6CBC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756678193;
	bh=+FUcpAL15HUousA6gOD6xPiFvVbX4WasSesE08cJMBM=;
	h=To:Subject:From:Date:From;
	b=NLeoFzFxELbLAq4V86yJ1GH/DQtr5U4X+NDOiB/GOIxxRl0U4fZIsj7V0OAMggFog
	 78w/n9NoOIyVE1AD+eTlnqI/Xbncjtm4422YpC1HuqAZKgXp+C6+qtJawEphG6ADFM
	 tYRaeesrCO1zlTF7+/E5i5wyMEwZDTpejNVELNXRWrhhhA4XTQe2Zw7WnVC5AQ7CJh
	 Pf083HwuHd/Ey+K7ynlNPPt7dhLCreqDh2AyX8ahNJmqU6EZ7ftJ+wxP3K7Y432sSL
	 y9gJPRIp4RwK7qjwbP0PMI2vfYBdqr6U+5pDX3+qKqBDkfw02zM3SpofNAk4fF7gAS
	 VLTpb9TUTmYbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF63CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175667819357.17054.3699402224188588898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fedad9ff0ab621cbc755855bf6532edf39c37f61def3d6163d5040b5a0409b
Date: Sun, 31 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756678193
