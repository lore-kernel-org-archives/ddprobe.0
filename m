Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF1A1684BD
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 13:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718632703; cv=none; b=crHmRlI/AxpjFd+IHR5RbzmdOl/LhCl1M8/NfxK2rlbcrZp1jT3Nx5Eawf6hkJz0003ASft+L+htA30mOFVfO/x4fBf6faBXDjr+RMvtMO9Zb4CipE7Bp/aTJ/hu6TYwsaDxpA95bhcaWYbEY69goeTAmBSGoKtxwvEh2AABML8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718632703; c=relaxed/simple;
	bh=VOlqnfsSIj7qYuv1eUl42lM7QCfPoy8WhLiMC+lGobw=;
	h=To:Subject:From:Message-Id:Date; b=t/X40Oa/1ZvyOk4epjGVy2LKfYAo2oCqrrb/LUKaI3SdsvXjaF2YjFIPSVP+dntyJdiDtobI0MXIZHHUvY5z4Ln3QTGSkxlXfxmJkQp/qnHi+3iKDVSjGTy+M5ay25AJFeUN7B4YPftNRBy0l2QRT+7FjQ5avGhCo6ZSOJO+4BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpMh4QLh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpMh4QLh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF065C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 13:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718632702;
	bh=VOlqnfsSIj7qYuv1eUl42lM7QCfPoy8WhLiMC+lGobw=;
	h=To:Subject:From:Date:From;
	b=rpMh4QLhhwRari7lu/tepznzkUt23JvPgAr+KTTbQ8brFlI7WVgUSJn24jXdD945w
	 0GYif40SlgfvM7aywVB2RDU3ELc5bUZCGzHcfFqFc0B2LqKcLSAnrkEAcx17G0BWV2
	 ekblq+ivrZ7la9bqPAGGWCOPPqKl3sJhgEqxyOjfs/cmCclb0zHZ8VixXzcm39kalV
	 YJw6ewuyh34Vlv+ce9nNhTMucH+T1FA9uaXhBVZtotuQtvctix196mvFqTyZVtpF/D
	 VtfOlq2onh3aAQU71SyXV696if1CCmyagUCK8xjMA+B/r1SKsk//1tJujqytbXnCYX
	 FQjSSuqRDRosw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D00C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 13:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171863270278.26824.9924822920251782163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd6ddd99b7c1184558a42d6d88c67b4b20e92a197b7b574d3d255bb8214ce45
Date: Mon, 17 Jun 2024 13:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718632702
