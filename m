Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C320215667D
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767993233; cv=none; b=Dkk0L9bd7RmbHVLHYgGM/PZF33g4kr6aUE+fQp5CnQlHGBxh7jtXyCnjeagIkBHJa253uiAKYObPvZQGUaqfOzkHNtiZUVYp4dlFp4hOsK6lwsB95Y9dCMRNpHKuyqySdN2EHGDp7HYGPqeDNleGIA2Thf+eRxoGkKRXXh4kFO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767993233; c=relaxed/simple;
	bh=UlIctC30+SnlsCBqdx0/sCi3eg8XBMhB3uwuCrS9pCY=;
	h=To:Subject:From:Message-Id:Date; b=n/1lu/kHuV0GaHLUsj5yYfm+UU/14J6l96Mk6QWVUoXkbZT9x7LYnBqi7FGs27aZu7bzAaMO+Wi8vqFtHL18tPzGzYKGiFA4YVg86M8j2apQNSLkN3fiLgBiGI/lY2B7SGgcyHLUKliHYsdLQ7a4DwdTqrQL2IT3iYYGxaljX2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYhwLVij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYhwLVij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D29C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767993233;
	bh=UlIctC30+SnlsCBqdx0/sCi3eg8XBMhB3uwuCrS9pCY=;
	h=To:Subject:From:Date:From;
	b=JYhwLVijAcgjT73fG85VYx/BmzQ4lY/3M8Wb9iqrNI1fTv4zCYTKto6gi6XKaFgMb
	 Gp4JGdAcrjXd1KRTV9W8RvqhiWn8lNTjazUdpFd/Pd8wG1C/vX6o9zQ2Xuv30fT7Su
	 ++EvCDntU4NqButrWROSbHjWk5TiWj/H3JEmwiu5woqQK9Kc15HPry65+cVV24vDVk
	 XDMoigLId8pYOmEkjDoMYQGbK471ySLCXW+gX0vzZGi/Bf+pEY1jayosquKLJ8fx4K
	 4ppPnXThNoEQ+QGd5DsI15YjprU/fiuEyDgMVGLzKI2Eq0cKTyaQ5G9Cks6eN7wIYq
	 4mZxfOpebk9Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900A6D26D9C
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176799323358.4543.15157387156784018057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f792bed90d3cdf485b620f2980424c4fb19d16b92a55e2e4916e6ea3912b3ecf
Date: Fri, 09 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767993233
