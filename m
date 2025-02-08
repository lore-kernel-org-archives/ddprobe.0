Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A78123C8DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739000154; cv=none; b=BqDOESU0JwVMVDlvO3Goe+LKlTEFzo0zsN/Fqetn6V4CnwPtdOfXOj1wgjPwPTZvZxH+vYQLiuKOf0H/u7VUHx6xiTaoIRXJOZ8cTBt/UKKa3CW5Hk/6KqijIY+mXPvDJnpD8Mh3ruquURttNZwq4FAnFbMtUoRZ2nxbr52P80k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739000154; c=relaxed/simple;
	bh=KLLQ2EwrZ/2dqPSt/5bVhAp/r8sdZFr3oFfYreNBaWw=;
	h=To:Subject:From:Message-Id:Date; b=V3S3e7x/AmkmrMXHhmkIV2TWII3e9fGLv62XvPjH0dnSfmx0EZCW3VOyxRAcmg9O6jYHOiD1Brdvp1yW93QDO0X4c9jHH1QE+RvDps3e56fTDTQawxoZNnLiCN2DfIEgztExLvi+4rDBWdMuqimNSxBUp4yqPv/Q2iHndWwRLA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BaZ3ocV9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaZ3ocV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CB3C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739000153;
	bh=KLLQ2EwrZ/2dqPSt/5bVhAp/r8sdZFr3oFfYreNBaWw=;
	h=To:Subject:From:Date:From;
	b=BaZ3ocV9Q+J82Npb7pP1m9bvWDiLQ/AOYtYR+P6mb+C90mjwILHiftFTrIFgDh+F+
	 mcLNPST1ujRDc/cWbtXJ40IQEVRq3zHRCVa6xPQsfjXStVT9+MqacOg3x9alfsVZz2
	 PNnzgeeem+W/lSNcHkz9PI4uQSMb5hGFItaWfkm/48EHiZH3ZE8bNlVvkfONoZavkE
	 1CiAKpPhVE8SFwsvPSRCFpXJbW45nKiRVjTkHZIcjo6Qi0vkeZ6T82zUqDZ0h6h3l9
	 05Jc0tcbziLjMJbEYGcNob3vrnGjviykqEzoAkTgEm+mXm+Bwcpd0BEpogSOdYDYYm
	 kGe/qag/Ug5SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFC2C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173900015360.17743.6458171825097700390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f87ade2cd3a8f1030bdff46b2e0a25c5db3e32d4483ae080d15d9e053bb7f71
Date: Sat, 08 Feb 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739000153
