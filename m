Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332E212E7F
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745682595; cv=none; b=emKulqB+tCKvcLHPbLzpY+3NVPo2lAv1fxqUUCublANc8iq+0gCsRW708OROVwF5s1TpM5Cw5/HDr99DpWixt6RmisYfy6/0kg5bhmnU3qMEfbm+1+abysEgFZfOsuuW88+MjJhbiusIXWsmLeFl/aM8XdBm2R8xRsb6wVNeF6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745682595; c=relaxed/simple;
	bh=tTTUInKAX0t4zRBYsQCliM4mNgZFKv/RipoTHQEtpRo=;
	h=To:Subject:From:Message-Id:Date; b=fqRnf2xiRGFMUZ1U13PK6DSZnpA/kMTY5MFsiRPYrHQJA83XfwfHupnhNjduoaT8srIyJb82b8CUbDHD02X08mRek9cK2LIT3yB9dIGvtAvxY2VM4qqrR5VQFjJ+mxUQZbjie4pjHAjtehp/KH1MqGpH/sJ4Dlfr5UeuwyUisGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVrrmlOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVrrmlOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53AAC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745682593;
	bh=tTTUInKAX0t4zRBYsQCliM4mNgZFKv/RipoTHQEtpRo=;
	h=To:Subject:From:Date:From;
	b=gVrrmlOe2XDke44IPqJpkQhMe8/yajHCCp5BvFd36IgcNi8djy7UrusSD5OvSB9wQ
	 kZbKiSRLwt0S+An4GoKgwtvXwxqrRoGAltKmN4tQVUvJ6FokcQBMyXEYRgfJRZcOzO
	 lPZkTQIVWrq0/RKsPt6l5ih10xKzfo6GLgLuyMNy2nuCseyTJoajVSMYvwJ5pCiHf8
	 iJ3QZVYix1hOUNjbGDm1uPpy9lP3Lr9FIihZgQp8Om2nA5wdRo+Tm8VarqhjS2RpKK
	 3+HeX9B8HGf4g8nDLXi808/Hq0pcT/Ly3JCTkXzPEPjOREfM2rmg36Dn3EfJw85QfD
	 rHXphKu6w2YEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91510C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174568259357.968.3463763665937417455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1fbe0eea3001332631610ec48973150885a1467c55b1c0fe732e2931e3feced
Date: Sat, 26 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745682593
