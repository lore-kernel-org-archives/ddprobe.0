Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B908F48
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773978294; cv=none; b=qN6RWqtJaSP8moSafh94Z4FYjljYnOM5QRMRJqeb+qmvZes8MFTmM4LTJE31HHaJ7CF/eNFeURk3/dXtBF+dXl8/jIQ8CXGW9FYR7D6zVpiOCIy630UMmyW6PZbW7W1Qfr3JaIpKdnM4ekAVW5u0VTf9pYxWlK4fBmUHfpYwjT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773978294; c=relaxed/simple;
	bh=LhxSURkWFuff6tz0K+bcFIG03pXxr/g4FQgG1R+Doog=;
	h=To:Subject:From:Message-Id:Date; b=bCHzR9dNmZ0A6Xbm7oSZFBHC1/TzcOXjpDqrDKmhjLRLiFQuWkxmZMfc9rikvBS6bZrQrEUEYp04HLZsS82KTRK/3F1+1JMpg9Z4eWmD/zPuh+n0VVpjtV5/CHgBgl6cGNxNakzRNxi2aoXFefWTknR5OrMJTOPKwwId0E4VQSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JeKaGxkY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JeKaGxkY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6855C19424
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773978293;
	bh=LhxSURkWFuff6tz0K+bcFIG03pXxr/g4FQgG1R+Doog=;
	h=To:Subject:From:Date:From;
	b=JeKaGxkYovG9iDVK5sw8CojzV99rbxLsQVKG1ExtWYeS0fjyV/osamobz15d65HMN
	 FHzWpS88IatnCT+5ihzcihTN5hNUHFE21ayTLCb7DMvDfbuPWnZhiiac0Wkxr9eynb
	 MBphQVvCGux+eUvkIXEA/cvcEb84mxDV0SJc+i7Tfd00WRKrWd11F5RBX/xAHFZsD3
	 5Wz7uS3m/usavzbzyFvIBvfj92ZbFZ3eDB+wLmdKTjxHUwPQrRyg+7GWYvdCQut17B
	 GN3KNxfCRrJ7ncmIVH+HoTEpJuFFYfcwCnLFu385EXYA8bjo3RoDFWURTwA35KAab+
	 QCiaGUbs9vAJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C191093170
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177397829357.10763.17708769148374182688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce9ffca2725d2940fc671ec3e7988cf3ea19859ffd2c8cbafb045a0842669712
Date: Fri, 20 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773978293
