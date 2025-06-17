Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274662E716A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750165794; cv=none; b=LzN+TRk2aF3nt24oB+abl/Gg3Qy60A8U8tPqYcQWQGFnc1rC/d1p/KeJA38i+QsYgRXM4Bfs1t/IdYfKFsNDtZwNrOKUh7YoEPOvLbV/zUGJ4F4gVX0NYhaoH5EACfZmYFVnQlaG1AYDB96Yr9/3aCr5Jd35R6UEkVRDH92YxhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750165794; c=relaxed/simple;
	bh=mzEGvF0b9531D+lWW35ZDrzIagmU3zVcU+28Cf5Pk/k=;
	h=To:Subject:From:Message-Id:Date; b=pMXwPhcclMSVrB3UwK9YuIZNdidMstKGRenfvP5iVWHSyYYJSHDQh0nguuEN7nwJKIXAOQVBNoaiM6kCs07RWKgSvHAZ86LKS8EKlz+jCfMRvIK/lY/4GThO86uwVW2aKyLT6C/C+aM+RsV1+nHwqk8f0HItcoYXA7Nkcu6jc5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olBf4h11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olBf4h11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20F9C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750165793;
	bh=mzEGvF0b9531D+lWW35ZDrzIagmU3zVcU+28Cf5Pk/k=;
	h=To:Subject:From:Date:From;
	b=olBf4h11F2hlV3hg3YvVUA7YpCrP+5jy0IrRkBCNsqoytqpEqpqjqj1ER+gwXkcrd
	 NOLCK9KJGYs5WSsIBoIw6FZWaX4CAEyPDYlPaXqKugACYg4HE2YSvmM57ix5RJMwSm
	 cD9gX2HhtHJ7ZjMvykVyComTvmqlHaXpxTXRONrRrZrmYh3w1OfNclAZGTrxc9l+ht
	 s/+VmtyO+B13cXO651Tfu3V/A5qAsl+A1JUtMLh8GHi44dhCLAOkACVAXeCSC3lgWY
	 rHraa04BWvs5Ctf5JErbGEK9yq9WPNZ952jR0obnFeAKJM7ryUbgqRSCoSg821SHVh
	 EGitMIqydh3tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90465C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175016579358.10537.13372821808964406490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce90804ed7b8d7f5ce7311bc5ea2d1aca504ad7f3ad1a5a3d1da184eb9e7012
Date: Tue, 17 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750165793
