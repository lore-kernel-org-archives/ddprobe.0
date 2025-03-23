Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A31F2A1BF
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742747994; cv=none; b=tkNoLRcISq+XTRnyDhSj0wCTJ+mRvxbt/Y1MYG4okXU9ydGLgxFRVDUsz1y0fzzrGSQtXW7YdNb2gTSlIkg7NRp7BLKcVIue66AI0drw0OQMIyCg013+ZH3DQQcBjnBbYHfhvFYba/0x/6P4e+KHzOwMltRdz5F2H2sUEZhKkhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742747994; c=relaxed/simple;
	bh=eFGYI4rwTnlJGKceGM67KbEjcnDFIzfLTnuZoE1ZmvM=;
	h=To:Subject:From:Message-Id:Date; b=p4csiMDvs2MmreMA0AHbi5ClooEj1FRooyJ4T9+EQ3uSmkxXSXgsrCkOGSygqnq0dDVmSkhhVHYRpOgBQsDEw/sz5oNuEjvjY36ugF6NCIts0ip7aMIvks96Te04H05LKRxGhVuMoaRWcjMTTup9811Zfg0Z9THz5BILiOlSjV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/TGhhbn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/TGhhbn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8823C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742747993;
	bh=eFGYI4rwTnlJGKceGM67KbEjcnDFIzfLTnuZoE1ZmvM=;
	h=To:Subject:From:Date:From;
	b=U/TGhhbnw8jW9HZ3tBPlG8+AKJLgJTf6N/w0wVcuVhottpUBlqFSe8DIsGxR3/KNV
	 Cdq6g2M+oMxPRyk6fjH27rQA9C++5DtDW8HGbCdUt7cLM9VMEuSc1IcjDVC6UzgaTy
	 Jb29StaLPRG2gax1LlCRJIeaQn2QN9z7wGV4qIYt+MfU4pHRTk3pMJ7loT4iX+WxXb
	 0OFi8MVqDulCqvITwFwNmoOwNjcEyAzecKZq8GStSrqxfYY56H5QgQrL3CXw9YSkvb
	 AYVVmWsm2mWwkl5ciWmjs/gSVDAAR+1MPJ5ux/zzte6k2w+Nz73+7qeneQUHD6SgPN
	 H71eAmChtdtYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AB9C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174274799361.3909.11804927126284251042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee7841998b849b743aa29a43c1cb6b070b122e6e3108f06a3a50347c89c725d8
Date: Sun, 23 Mar 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742747993
