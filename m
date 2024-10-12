Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1691F5FA
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728739554; cv=none; b=OhcmcU6jPCuXRfST9TKL00Ruc9p9WR+Z5WH+99amXjiu3hNEkBkDHEVyah4X4bHQaWvZJrGh2h4IqTrYY9t0rQ9RuywKKFJjLbphEa9EE2pgTlDog8qM7+lHZS8oxAom+/AoPQEm6JDzlAZqTStnWZedNYElNLVgJ/IJXGNYFqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728739554; c=relaxed/simple;
	bh=nEyXM/6xVOZlsu8w6wTBaeSUINs6RTaUW0xE591h8y8=;
	h=To:Subject:From:Message-Id:Date; b=t4gEdJ7/uePYRhCSvHbHNzTVZ3jWmg6RtPBo39Sjd6YPMiz1bwlfrsSoNQ2u2DNRrn9HIh03XYrZ9/3IUwP9jo9kT1t9xKaD+CfL6m5EsrLrbsMiOAkHigwRmNxAxwFVIVYvv78qn+64sHUgOrv9RlLS2NRJ3Mo3fVBG80mg2U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHxc+0xP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHxc+0xP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAFCC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728739553;
	bh=nEyXM/6xVOZlsu8w6wTBaeSUINs6RTaUW0xE591h8y8=;
	h=To:Subject:From:Date:From;
	b=GHxc+0xP0PjgJ+6jUaJ5Zm5LSGsxbeIkRe7pG7j2k4JPXl8/tF+ZjsII/s5bz3ESN
	 wbLDAa766Y7mF61qfdox7g1wo0xk293AuDTgMfBFtLv+KFMs0EKjKJyTrVtW0tf9Le
	 EKrkHR0BpzYoacMfso0d9yvar23huoCo/5sUbRg2txn7QF4UZCd788S89ni2HyDQAn
	 ej4RNK5O9qRW2xexCuIJzahxEF2KCIqEBgJj9IO3t7d0I+o2rWsk8pH0zYMFcx4Y4o
	 gOlI9xBLVoKWcLk57Xhf1v4/BKB6mWXLwgHq7DSeTfvLBSVfatsWlYNWV3BuOQlt3l
	 j7zpoIn98FmCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A17ACF2566
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172873955359.2927.7257034556510626699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd5ebf6c4dd4a5bae404fff6ccd3763b6e3b5e981caa380b763769f61e6c8462
Date: Sat, 12 Oct 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728739553
