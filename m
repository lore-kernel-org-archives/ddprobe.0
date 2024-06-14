Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7BA1487ED
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 22:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718402903; cv=none; b=HrLqdaRoulP3aheAi1CmgNW+OGWK6Mcr01xCT6KmY215ywmaMt7/mBr1LWDIdGLurWT4nKNIcQ7W66W+0nBDw2Jei57KvmEfp7VKlPO4+KpAoaF6HdjKRj9sVcWdbTQePoev0Pa+qZ91S2fkWBKs29RbEA8J4gPvtydvBhHFSj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718402903; c=relaxed/simple;
	bh=ARC6SdTAJkw8PLPMgVjwBjnExAiEfqsTl874kyADBIY=;
	h=To:Subject:From:Message-Id:Date; b=fjdnzM2Bgp8ikaR5vGgXgVbYtigRA5yY3YuKBAe7cU7WbJt95L01G7HGuHwFWeaz4mbl0TTxoUfZEkGhowhIVxWrg3qQ/tJHC+KO0uLmnFeg18NigqjkcDxKMveinMDof9NChguzg6JGV66zh4+2AbW8YppSJUreemclPe24tfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiBNlZz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiBNlZz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2AFCC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 22:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718402902;
	bh=ARC6SdTAJkw8PLPMgVjwBjnExAiEfqsTl874kyADBIY=;
	h=To:Subject:From:Date:From;
	b=OiBNlZz6kVhWzRrfj2QmVwHKvgLlch8e4n2cNoPNQqoRuEcPCID/Vul54Z1cnifEI
	 JXF79t6ptCm6Kyik5cdWp8JwSCoBTxPIBZSW5a42uE2WCupnNCoPBNG2Qbyd5InTe+
	 FC9O6l0lttbfUl4fkbY19hDiwaok8NicDhnMIDoPihzTm+Cgyp4vTwftKsH0FVQwlk
	 UhDsEcosahELOXJb+B9PRPrADzOz1Ql+loAO6TzWWnsphso1GDVFkMOQX6AlZLI2XQ
	 QH8RpSnoByyJhj5NEjLUbXLUP20asm+2/6kuCgQku59eSYCfDNj3pjfcFZlsn5zpxf
	 P4e88f4EILVyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39DCC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 22:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171840290277.20188.13495615139775201665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c40537393021e54c87e3e2a902b1da63d03a7ad4733eb33e9405fcbf02f94b0
Date: Fri, 14 Jun 2024 22:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718402902
