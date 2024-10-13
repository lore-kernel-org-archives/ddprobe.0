Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4114D80027
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728810354; cv=none; b=JlQCPY6YmgF3k+EhtYtklM+oXkNFPAf+2r4JlpPVDlUwMYIxledE8EtoDxPwtiUTbaWsn0aTlK9W11sRzq0Al8h0PPv6XHr12UNpG1hNEAs6XT6LMrgYqi2nBA1XdyfUpIWeNzbL5EsRWzWjWARRntPGhdpOi3WMlkMVIpDrvXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728810354; c=relaxed/simple;
	bh=4GXaPUTbZ1LgYS0S5wWph41SVVprPmFKqBwa/c18vKc=;
	h=To:Subject:From:Message-Id:Date; b=qmGXf/CLWxFOHpSmRR4/g+mMxjCi0ufBAr3bvvaoDJBM7DZQUe64XuscgXmZQMatmHBt+RvIxgIwhbiLmr8NmTgjGERkinVCfn8dRzRXYVM4TIziefrF12FQ/iDWZg5C4shVKvkIsbbMdE12nTmhUlEPTSK240hsCojEvntqBwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfQQbATr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfQQbATr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4CFFC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728810353;
	bh=4GXaPUTbZ1LgYS0S5wWph41SVVprPmFKqBwa/c18vKc=;
	h=To:Subject:From:Date:From;
	b=XfQQbATrSRWhw1FxanStIyDVYb+6qQP9bmjvj1gQUfKNxzq+beHximbXhrH+mNqoX
	 UQuSRsJmVRbJzgzW826Ks5b8AwdmQvHZ9FFoEroywjebFMkgFKwBdF8tD8Jj+NPZ7a
	 q3jKpy8T59n8FZrp6i20VyW/AeIoMO1Qwo3jSUeKV8SDCvh/pSY5DxkgHbKFUHGFrH
	 Wb4KfC1ro+xzpXnuVR/M53QUhejd4YvOlnUBPgSXrPi4IZTvrl9Zn9xzZ90Z/odHrg
	 LU3h+WYkZR09peTvcRiy/mRnyOTSdKwkU2YgDZX8HT1LuxcwGCCZquS2yyWhbkMLS+
	 HHFCpJZev007Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB9CCF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172881035361.9170.1975059607094478684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70347dc922d65f7fa161f2aac5d3fb6f2e5c72a19b5d3899f3adeb13ee8586cd
Date: Sun, 13 Oct 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728810353
