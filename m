Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64870372677
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785346234; cv=none; b=NXc2FLqSVu3BFdMdmP66CNgN8Y4Sy58QfvpR2/Tp1wgFAlM99S0uBzoAp2kfenttpgycfWinXz9DQmpkZt9w+IRtASAkKAmFa6ZNGHITzUBrDiIfRp87AqhQbK1vDR90h/GBe6Xm7HeijET2B4xE8I81vnhg26A9RCwC35wTEbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785346234; c=relaxed/simple;
	bh=aTARxenfX9e3JeXw24HSVJJWjH6YSb8s81H5o5aV+Bo=;
	h=To:Subject:From:Message-Id:Date; b=dKX6ihmpovZv9Td8JZvGWdXyVgeFpfnpQGgHzsj2YC7cVlVrktoO6c2H+9L2s1nH94laAiPwWevi3Qk6GV6SNxao+rZ/N8rBF93u1/aacieZAUZpI1LDrswrIoRp30uQDM8VeTVl7X7U93GKLGjF0JyI1LTpAPRk8L+bSn1dVBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4gxl9+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4gxl9+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF32FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785346233;
	bh=aTARxenfX9e3JeXw24HSVJJWjH6YSb8s81H5o5aV+Bo=;
	h=To:Subject:From:Date:From;
	b=L4gxl9+9gPJ7iJGi22wiRQ1UBDBZP/JS8bOpzq4sGtbrahRtrxYYQNPLEgA/RUEu6
	 66tN+53qpEmoHQfkM0IP/dCxHa1fuHbxOO7oWPygyNrCmIHQlyWJQ6chWFjTgYwBzf
	 qcV/hoozWUZTJaekn2StFb/8N0m1VvpeXb2kA3mFX1na5ACgJzx/c5w4t85vDRwAiq
	 9dFA1ApmJ3ZeIBGGBX76hjAXPNnqx+MeooVeQUqR22hmlX6xacW+/7heGdpwwco0C1
	 OJ79s3/v9HnKulQCRPLjYe15WYCg9fazToA5VyDWAw/xfdef3Zvw4Y40tdA/6Rd+sM
	 QiJum3Bph176w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD349C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178534623367.17024.18104554329899824675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb2da9fed4652cb10ef802834213d1dc2176a839d4f4c277c3b74c8c64ec844
Date: Wed, 29 Jul 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785346233
