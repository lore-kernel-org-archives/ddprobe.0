Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B571224FD
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746629995; cv=none; b=dYUrdOC9WCimV6shKHoHM9A4AwuH5KEfN6roKaDaOyzQpp11cofQNIrpFeSXy081aokZ9c116j1d0tQSKplX51oFo269T1kwnpWn18+SxAqNVJe/bh1Rnzz34X2/PdlVnuK7s+f4/6BguUFVY2DRuSijwWq34/HZhfp4aH5Ufyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746629995; c=relaxed/simple;
	bh=VSL1uC+HFXnNdn7Xusck6XZZR+1jsX67lusYfKSTjC0=;
	h=To:Subject:From:Message-Id:Date; b=p6fALW9VNLqmpQGAGC2C6X+e+bDGWVyYQALOTTkj1tWOqX9O0SJlUG75gbv4TO+XcAafeCkkwZ+1LB3G4lpkB0G8KbS6ZNj0n5RUZAFR2ueZc/ll+DlqPwzbnomHOesgZAU/zXKYPzTdHPgDL0fGm22KBhlke5nzrLk2HbT3f4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cg/hTUbL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cg/hTUbL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5E4C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746629993;
	bh=VSL1uC+HFXnNdn7Xusck6XZZR+1jsX67lusYfKSTjC0=;
	h=To:Subject:From:Date:From;
	b=Cg/hTUbLUnO7+8n2B9veTHdFKCVpFY78Wta7W1Wx05FC59CaFm2fN0FWr5vjWEk+t
	 ckHdNJTUxNJt17dElEnPUyw/g0y2tu7Y/MmWlvpHbh3wr0VdVGs/u0v3yY2qvaMC1J
	 WhOlvNrKgCTpaHNCVoqa165mEfKd3YeyJGczBmaLqWczHhtVbC+gkNLbPIubdciTL1
	 4eJwYxvlTpkLiR5LMLEHARLSAQG31tpXhrQXYCvPEFiC9+D6CcjMzPpSQ/PZWi0K43
	 P7GJCnUFsF8jfvF7wfWBqGAsMrtR4OYKyjLQ+c9dZipIOW2jc4n9FhSyqGsaeJAZ7+
	 M2rh/gZSMjrYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90413C3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174662999358.7327.15456474175227086170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 587313a7d08d70cf56c9a60d6b7dc30dd7dbd02eae0590059acd910ddc63d66e
Date: Wed, 07 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746629993
