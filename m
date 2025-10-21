Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFC41C28E
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761037794; cv=none; b=eHvDUJyNFxKTZGvMKLp5gxqpMTjahNZWYDtyUS41GMQL5R0CI9JlgmnD/XES55BRSSX4IkV7wCx43gfHrCCmjwD+O30H08aX/wN3R0x0V5yjQ5AC/aHxEZ3kPT8paz2ze7NvbfV4fsPRsZeBPhjxKGAFy6d9LVG8W9GMbpW3Hg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761037794; c=relaxed/simple;
	bh=IvcJMaoRw88shnV9f0C/1Hs4jeJ/IXyINxn23FmvNEU=;
	h=To:Subject:From:Message-Id:Date; b=HDkCJZ4C88vPT2ND1+/roxz6KEVpyDj+SkwVpRAKmB4obPsuIhnmnwGiMyZpmiGoYinezM620DH5+ppbAmsDPQGuE7lW3ekvh0w1BWKOknM+8Ha0pB8eanp3zjjD9CMN7mAqUxBoUibms2pvEyF1YKYW0Vfxbr+fy4Yl+3Fvqmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URm7HZqt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URm7HZqt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0D4C4CEFD
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761037793;
	bh=IvcJMaoRw88shnV9f0C/1Hs4jeJ/IXyINxn23FmvNEU=;
	h=To:Subject:From:Date:From;
	b=URm7HZqt4TE5ykZAHIMjvCbRaFakgyJKMG+O/OO+yoWZst6+1q+P4TV0RA9a/xlO/
	 n73TMVHr+Hm2fzL8Ye4PVejQhsGX4ks8TgtqGCv5Y51WXZna58hbM/UG/chdWOhkwL
	 vKwsZ2RG8/xWpyaXFPy/mT2AfyM6c/RbWV0KFdVCXGPOLJ+MT58GAvUTsstrmcJFT3
	 VLwmdVwH6zvOKDAaz4+vogoC4C4TKljzpkClUqw1y16lp2tCdErrmEYJpcYZc47pv/
	 mBCk0V7OdfR+FbR2tomE4qw5a1c3tRfNM8OSoUrLqo2C8/YYatq5RK7Jw8CFAQsPPl
	 8BO1xkroFxgbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9780ACCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176103779361.14781.15110434242467851797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3d09c8e08182425b57eb23ea4c6f1d780561f839af24c47dff1214116a5d812
Date: Tue, 21 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761037793
