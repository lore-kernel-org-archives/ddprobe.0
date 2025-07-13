Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EAC22094
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752380394; cv=none; b=qegdSZCHh/7k7w2Firz1SQIds6q57f3Ux7QO4do5vFoOsiFVy5tqIy8SX253VqzLcWfnJGMtrPzAMY0iiuCZSBhM5CWiTmtOtje/HLZ8oEePW3kXX9MiFcCK8Fa4dA1ysJZEMJjFCzt222SDbRp/yhYOLOaDwlaDf3AFtGhMqlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752380394; c=relaxed/simple;
	bh=fLtbTjR5h7rpu3cyFuvZ4+8HjemxSazHUDmjbk8CWC8=;
	h=To:Subject:From:Message-Id:Date; b=T0BsSlZYydryA64byJYduFvr8c4yCFbepa9vSM6MRX17ZkbGpIWmIHw10Gv/anRpw27voehHQZUH1Mc6FthdeJ4kZIKGPOLjKQGkwak3LqwpaWOzq+jTFGaW7q+Rl6hOQ5+lQI3Q32l9RiTRBsfGXUq6Jcu9zE6HOREKqcEGC6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OStvyujx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OStvyujx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7881C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752380393;
	bh=fLtbTjR5h7rpu3cyFuvZ4+8HjemxSazHUDmjbk8CWC8=;
	h=To:Subject:From:Date:From;
	b=OStvyujx/4BjWXs/HmWtnybPPohUV3b4jhPcwkA9IxFPg5SWcp4VpDvuhlsCaKAsU
	 OPi9RVsdo29xFiSCinNfrGFleKfR44kpgtSiuvFIQmKOLNmmYAN2ekHDKah+40o5z8
	 AocsHVC4UR+lAZqlgR65QpAIN3BV4clR8CZfhhgr/3OmJrFEQTF1Ze2OH0VUNqj8iF
	 T/t1hY37iEFT/+urYD4CAocVLZNKiymkiJI8bWuPGGrt/Pk7mWpQl4qhx3Qyd3p9v+
	 svyp1vBc11djbBTrTIHehdYF3FEfImw5DvtzmBtv/hg77XG3o/Avt0vwsN2kYjRHON
	 6WyK1k9/ahg+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF12C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175238039361.2914.18119314014583177865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 207ec5cdf2a71a92fd9550b25527c18a8c97db13911eff64c71cd57114e7818e
Date: Sun, 13 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752380393
