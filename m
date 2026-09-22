Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F69113B5B3
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790045434; cv=none; b=OrDapvvb/bO14XymAFSXn0pKSZNXzL0LjUgN/FzHMHRM+Kk4VoLeXNUQJHdLYlCiV1zw4jHVC8Ci1d4Ir6sOTNPaCyhbpiwyVNrAvhhqz/mff0xrW6xyJLfgqMlozbSE2WO84Ip0otNCAzOzOTRlx+GLsHPMftqkBl3pgC4jxNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790045434; c=relaxed/simple;
	bh=w6TTBUFrv84Df/BcBaGGrvUxeN6sxPpl6KoH/G8mnIU=;
	h=To:Subject:From:Message-Id:Date; b=FGd+WN5HT0YFfWrMPiiT8BiRWblIe6qMv2ElTkNY1aNUrtp0TN1b3vxaiG7CQV3VR+cIFK1llCio/YfdZ3o7Rza1wQoIskTlGhSfGM0tPh3/FTY8VUjAUIGwLZiU0rZUDO52Wb1QijbtVktit0/dWrvl+apoJlhYg110/FvGW6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWKHhtWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWKHhtWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2285C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790045433;
	bh=w6TTBUFrv84Df/BcBaGGrvUxeN6sxPpl6KoH/G8mnIU=;
	h=To:Subject:From:Date:From;
	b=YWKHhtWxGWbinpQpNQb2g8yBkzJl0kug4pq0mOwPD9D3tXeXs+JKPzbqaF3Ndy2OZ
	 vsSmPJY9Meh+ycPr/a/FQBbhZ107+mLrlyNcVoB/C455k/s7jUCugn9IPZCPuJa/eb
	 YHXMb/G3nmHpxNw1C7l0kTdp+Ee9dsthq523UNobS6gBsvhDPLP0jTBhq1kt+lhbPD
	 4mpgnr7l2ZhLDHDmVbg/2CL2ZptLPML2v8Ui8T4im3R5y12nBblBll3D1c1AwZPd2g
	 7WKZ2Vp0P22zEfadc4Ml/iBvHBA7Bs/fTybXUFQy+Yj2UQ0OBQFazpPwQNM6Ztrz67
	 nXtoudOxLdp1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC139C982FD
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179004543368.19779.8698924849832648241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dcdad825d8857533160cf1ffa2a487957844de0de7a415c66ea56f0b7820e86
Date: Tue, 22 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790045433
