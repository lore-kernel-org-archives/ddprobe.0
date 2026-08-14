Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C7E35C6AC
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786697434; cv=none; b=fnk5yhO2yd13zy1dYZVw8x6xis2PB7uZXSjmkb7ujgPjpedyJeL7agOVrAWO5aBHZTJiWg05gbwXmEY30Ue0VmsBIgpe6ZEj2SB9+g3ckjgVu9evmF2YVMopUNTZpQNF5CaGo2xdGh7BNLVeswq9zspCz58b+8ZrhRoIRhaJ2ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786697434; c=relaxed/simple;
	bh=EQ3AwRDP77cRpwsuLp1gNj+WuQMYPX9zhinXB6WakKU=;
	h=To:Subject:From:Message-Id:Date; b=hkBRVvGtjoeBZEHpKL91lKNdcJ8kU2BhjadUPwwXUvRxornORaAveJNH9eBWzY2PnuSoovDWGDel1MsVYL2bZpnto5Fg0Mo8viELg+K6dJpQyTF4sLArgPYnRUUnPI/Zd8vZtlxnziHDi6Loi2gAnzPytbsI34QSHSOdNN5OPu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IoBTjQRR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IoBTjQRR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F71C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786697433;
	bh=EQ3AwRDP77cRpwsuLp1gNj+WuQMYPX9zhinXB6WakKU=;
	h=To:Subject:From:Date:From;
	b=IoBTjQRRwGPG3aY5yWn0AxLBSJXAcPhvovZpAA08jlSc9OXv5hvLc98wF8fyv10mE
	 12Emhn5KJ2PSCZ6TmYS3p0R1V4+YyLeztFuEyMSfNcbRfyO8s2qLbpdS6/hQs/pdDg
	 Y0rAdqwYZFQg3Oll7iWubZTfWOWETHE4VktSJHMBMbmcFMa3VSVEhWFGxeMyAL7CCr
	 UW3EDwhhJw5XjvczAcb9soqBasSod0+qWgDyrVnSSkFtFsd3r39zbc4EDNAGA4Rm8N
	 ciOgz2Vtmg3X4duRgFl5ioBwDFd4UZ7ctR3FlqLB9IiaCeec5Me7a39+2qFC0CMvN4
	 Z8oMSIA2zCvSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF37CC5CFDB
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178669743370.24449.5312987923186593228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0d5adc8f45bbc2d9620c31b9d78815bb973f630fe6724d378faee6881adca8
Date: Fri, 14 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786697433
