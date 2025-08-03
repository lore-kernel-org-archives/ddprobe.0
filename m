Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF3084039
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754215194; cv=none; b=mKpNa6Po4k0Syb7Z0KamJwffZSwblAHyRdG6oLnQD4F7JI6WeidBun77Ev3Cd0kEx87/FlAud47zWwASTGhBGw4pWp/Df2M6ceQ7/5HP/OXBq1SYutcNjcm+ZkK041zZrAgIDgW0ugQAQ9cRX33XG65jhWn5yog87gj+MJjArQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754215194; c=relaxed/simple;
	bh=nhCBCJsDCF5Lh8e3g9ahRyESW54kHrFR/qtpv+KeOSk=;
	h=To:Subject:From:Message-Id:Date; b=gXR0njiqqS+psknNRFg55/4aM4m2nqiuuwWxZBvHcUslcdF3tF0XGdutMsGZeZEVVBb0Uxf593OIac3peUnIXABuQsWaqZTLIPeI/0Irka5UwFt+0B0VYGc0RglQF/Z/N0MHTm+zninWxlq4dbYs11Au2lj7a76c2SGn3NOupus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjANVJn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjANVJn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2583C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754215193;
	bh=nhCBCJsDCF5Lh8e3g9ahRyESW54kHrFR/qtpv+KeOSk=;
	h=To:Subject:From:Date:From;
	b=NjANVJn/dZmUM51/jo/jUIc9BEb/9K+Q5kMQFbMblPykH2mCQ66kVUGHW7Sw16N50
	 hHV2MKHFtHWOmeEHuXLi8oasmcqDYNw2BMvCNUFOnvgGEtNMTSz5p+5tpS5ZIi1gn2
	 iBjG5IVLl9bIRR/KZHrm0TqBgAQgmn47bcvldpnFTuPmc795+YgC/BZJWsEcx7BiRA
	 JLVJXzmHzOXizdHm3m/ahKJEfEWMIkMoC+DfYMpgvePeaKkIWz9Z5qbp3XV3UvicO4
	 flf4xGmMKhRtxZ7LpHGEBGVRXgLOM3J/vIUo0/S0xlJ+PEAPFgSXo5eFRCHmn8lhNy
	 2Akmf1OUmNVLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F9CC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175421519357.22565.17615445281562275671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5982ac2df888db5c04fb810828088664c8f6341f255d852fa2b2a3205bc225d
Date: Sun, 03 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754215193
