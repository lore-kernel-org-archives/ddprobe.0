Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7894B14E2F8
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 17:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714066343; cv=none; b=EOmTZgUBMvUODfYz8HgnAJNFyEDcgcidOu5UdjPT3Xab3JkTmZJHVG+CusnKEWZywrIHPK5Pmo1KsY8QnUuob35hr5Omip8/sByx0XG8hwPwZuny80pmGVbaN4+zGDByBk1X+3xz0SGoNhfxvC/lOUVxmBdl8Ll4kJiXhi+bHWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714066343; c=relaxed/simple;
	bh=UgDPgpL/VJiwk4xWIsrhLjKKuzaO2zhRuCvBrMasC0o=;
	h=To:Subject:From:Message-Id:Date; b=MfR8d/Cao17e/eKt7Ncs0hqgzLxlo5BswVcMXbOtva+HTFkfMhs1vWd/0vgMfwntEVrVZdWVKvRUve4Og+bm7p814zj+vCcvXxLwvhsQ9E9QMI6gbEh1jJzE6pMYbi/J7yYc1GEWu/n89VBnVyw7/ztYyBIFiIgiFq9D6g6Dow4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2UQ+IcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2UQ+IcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE16AC113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 17:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714066343;
	bh=UgDPgpL/VJiwk4xWIsrhLjKKuzaO2zhRuCvBrMasC0o=;
	h=To:Subject:From:Date:From;
	b=S2UQ+IcP96wf3wVrYoDQ2Ibr8yOBmjnLnDtdnJCXSRPdp4sm3/fCK4sAxZGQ+tfOT
	 +D4N3lkVcHfOkG4nT6h6er10puRh9qwJDz/iDPI8v4RySOQl/MXDhRwfAWPJ3Ag/WS
	 8scXAowubu02ePv1TaMLMEyhbJKgVrKYuvwvYRZTVSS3/NTLFPP+O15P34Z49HK967
	 3UpL8J4KFU6ZyAwxsJr7bhXr7X6BdaPyiTvjT3YaS7nLdMDeTBnre/RLv3nrVH1pQU
	 XtiyWnA4LGimzwVEXh9KokVDdtjNEqVU9uHA3GbuxfPw7Ipov5w9yvwDT31mvrl08p
	 bEqTJS9wGeeFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB973C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 17:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171406634288.23111.16384810651062204622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f991cb55158015291d17ff59a498d6175487b4d60710e98414f4a3591101b3
Date: Thu, 25 Apr 2024 17:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714066342
