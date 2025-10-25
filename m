Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C11721D3C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761367194; cv=none; b=IcRWQGMzXCPedn68NijbWD/EDGjl6Gz3x4szZIql0rKgfuJvTpVEh1ZvtuoWChO8GT+XwKP0Ms5Qt6CUeeVcSfB4K5yjOWCxnHGY8hMdKYpunQrWpaFIHD7l5dQqvvLAl/0KfDLHQdVWA1VFPgam4Qpyhj9Bt0MiKYkaBt+ssII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761367194; c=relaxed/simple;
	bh=zAbykFTCivs+5L7beCOdvMx4XDIeR2av2QV4zyvn0IA=;
	h=To:Subject:From:Message-Id:Date; b=Ues2Fn2xWUJF2bMmqwwTobt0n7++kms1kncYLZvg0SX9Rc+Y+IUb/4Zz9GSSan7w/hf61k4vs2fTmq4ypMxtvmEm5Ke30ruUP3ALsBoJU9dMUnOrRsVgQtb1+tW47IHfn4YiykcqV1bSklHDMOIhj4zj1mQ1B0TALvlJyhLip7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGWtLZQy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGWtLZQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F99C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761367193;
	bh=zAbykFTCivs+5L7beCOdvMx4XDIeR2av2QV4zyvn0IA=;
	h=To:Subject:From:Date:From;
	b=tGWtLZQyxFLn+1ViHDRqrwtzPNhK90kyp+W7FsiwDdvmtWMcHYxaR/Wq8oCBkmiWJ
	 wVRrOO7BOrX+LO9Cdx50PexJn7QpQApDlrtaoIr/x8D1UsJyX+/vL8MadBen2bkW+B
	 Bixx/x2Jvj3tiPKpgfFUNIDa08TTmEYkz2G4s3Jxml+5h/B8eksHIlPTBlESpE+Kl4
	 kc3uhXhw2+y/6DoSrcTkTLQWGr3XE1x7rLnqNJR1a+VWfshj0dyJB0EMGbLpePfK+B
	 HqPUbgLa2psmL+htdBDyTvXDaJ7qHEstxd4QMrcR+GR2ehQkbmOzXtyarpvEovaGSI
	 K2qRVuAlNF4Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B28CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176136719357.28701.4944511379942661508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af188fb78a24f3b0773f090e0bd0e91ca52c0ffd20585b53262a3eac1b2011e6
Date: Sat, 25 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761367193
