Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E9C146D6D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 11:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719486863; cv=none; b=Lmvk3n4A3Tqw22Z97CmzL4QqgoI5PYoxPMineEeE9/f3YSsMiz7pjK9/w7U7/Loe09HII2NLK0fZeZUhvK5EP7vx03GxpHUmUfEGd3LXARM22fJVoq4n6PlPPw8CDn/sgTSTVax/E5L2CtaPCBeYUh84fNvxZ0J0bmMZsFA9hqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719486863; c=relaxed/simple;
	bh=zTRXJYb1adqteWAxgYVeYjM0nq30mxcnyNF0/4P4vaU=;
	h=To:Subject:From:Message-Id:Date; b=uYCaPDlDcd26mqaL/d69o6KF6V5CgJ9HiR8svJtgsGKzRLNnX/UABOMGMK7oIaolTCN4+jg/jFuuOSwS15wZxpTNy4N76Q/hg02NThihbhe/0MwOsCg8fzajP2Qe0dGyxsCpsZO5fgnM7cVF0SJRn9x+rF0uwlzOMkvRSV0p/FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSUGyLuY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSUGyLuY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC77BC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 11:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719486862;
	bh=zTRXJYb1adqteWAxgYVeYjM0nq30mxcnyNF0/4P4vaU=;
	h=To:Subject:From:Date:From;
	b=kSUGyLuYUOC8pExPNWGpPATUq7lh0dtLoFkoNB0Z52YM7SDJ9qwevlWlnqpCv9Jyw
	 GTUuGKVbD2aiBfpTi0/hKSYVmprrPgiM5EXoB28L/eZ8GLn6Zdi/qfweXCGCMAvt+L
	 dLvCPAt5s6/D+Xi+/LBMPsDF5a9X0J8T2N4uKZbJU+Aws4d7pBB/MViQo6Szb8XcNa
	 brhWv/Gl5m4NsrivA1khDO0Jaj8GbNT7lyRtxVtZgIAqVaTnaTowTOFnp7UH2rWv1r
	 3YdHBgNs7uvIr7s+rGL0Ale2r/GE6fAf/RX66lpVqEpcVT36LBllOmJPov/5Ytx+hR
	 rM94qjotkfAHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D26C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 11:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171948686279.11787.2265796863721905361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9118c14b0c921d19885fad305230374e4d1d957bf4374ccad95dce0db37346fa
Date: Thu, 27 Jun 2024 11:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719486862
