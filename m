Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1F24653C
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 19:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717183463; cv=none; b=hm6ldrE9k3mqBpXk7BcU+3KrRcF488uVLhF6dnkllHdV/+mRZKq3rLQN+gNlot4wE7Xevz8O+1CeSWg2NNkdDsK3PQaFEIPARyNRS7zB9eCE8U2uoFYEM/Sjbt6+EXVJsIconR88CTjTo1Wd/6K/p8cxK7uv0ztg7xyuG0HJrWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717183463; c=relaxed/simple;
	bh=r3KpDCoQFikNKTcIBEzyBWz3GCVRxKsNscGQ3GGza9s=;
	h=To:Subject:From:Message-Id:Date; b=bqlidb4PfbDBPDWrgEbghR0uetU55S7tuSssxqLO2R38lHouXH0gAt01nWhb77Vv+7U53rKE6iJq7qed2sQCAwDMJ4EmR67Jl+xwL4m5VjylITmLt3bHh78mLwjAWOnZEl/ys5Vfvl6yVJ9teNndMlwEvvljslmLhVH5405jslU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6OkG+1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6OkG+1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC9AC32786
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 19:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717183462;
	bh=r3KpDCoQFikNKTcIBEzyBWz3GCVRxKsNscGQ3GGza9s=;
	h=To:Subject:From:Date:From;
	b=A6OkG+1+0Mn+WuFKkWh3mR0UZlLSmIIIJ2xNUzhMuvS9DtDnudmcY7LXHA+zC7Tsy
	 N3u54tLZPiHzDXgEFMW+lb/JSOiojE/CDz5WfWWf2wixgzR2pzcOkOEFw7kQ8mSHXI
	 4CTDYWDP6LMPAseaAlZoYzqNCj/jorUMW/jouxtyoSC4OJgs7vWANDSV5PrqQj66fX
	 PyP4ea499o5X/70MvpQvIXLo/b83P2WHIt4BygAEbuscqDaRnzI3xbtjzIk+R5h+dL
	 Pa6+Y1Owlw90Fk5HjjuQOpja0eaxeDWR7UUxAaARDngOpxJ7j6CoGnXRuXM5POjxCn
	 S5PgrbCD0Rhyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C73EEC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 19:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171718346280.2122.7596297283656995461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bae4c650b37192511e94d32709727730a98de868149fb8c3b1aad84ed3a3824
Date: Fri, 31 May 2024 19:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717183462
