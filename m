Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAA818654
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733040354; cv=none; b=RL8r1kc6ZIQ+1qe/6SoccrBvKGBJ8HvFWbKZ9QqgxpflwXAkO6bK0l4JuFf3T/y/RALwxHbl/5LsC5aYJr2jHySn3XPxkQyn1IHQwmqWqWrMt0Q+WW9T1tpY8f+1HTcYTyJsWdJInr4YkUDBM9/CHwzEa4dUw0OAsuGs5sZuGl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733040354; c=relaxed/simple;
	bh=NE+61hPRvpZqVIgNBBZxgS2o2Asp4E6BeaacsY62R+w=;
	h=To:Subject:From:Message-Id:Date; b=IoEf9rQybOilEM5ZjWyWfW/2H8/W96juXZW7/yNFcbPmE6ovK+kIte3qubHMzS5w6w4ZLqemSZ2ZYO4urqAcqUajd37qAobLDtSnLgEs7haqydYYJ69M5xNH5kdURz5FQ/+Xj1O16+YW7vAH0CaDPMCDnnKdtmGkUIctF3VVw18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjMaPLhG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjMaPLhG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8229C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733040353;
	bh=NE+61hPRvpZqVIgNBBZxgS2o2Asp4E6BeaacsY62R+w=;
	h=To:Subject:From:Date:From;
	b=VjMaPLhGWO9GnZae6sOvpFE52K/barbCUeh+/g7+/dSwKqSi5u5yxKlwl/9gbTVsG
	 hrwCyKYyUDix7TbEpQBlhUkJ8M6p7aob2eCwhhsgOFV1pRl9jTWhKpv3l/kSmk6Kcb
	 AFY8w5cP9M/u5pRXhVnDfnKa0V4Qu+SRowtMeXdIdPNZiHMJLWZzWSbp1Jr0oG1pAo
	 JE/KAio3kEMEKBUT6Kr4VlSLL5MpfxTvfMGcxz++yVC+EfyomKGZmLLn5HLH1Zh2Nq
	 AtJfvTxdftNXTFCB8F+SkwKSfRhfFLnAHLjD5mT6p+/eaNo7ck/acpMwFLquyiNJJ+
	 OfCwswRiYSzWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A0BD7360C
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173304035360.12631.9035428906090556279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f687cb06bb0b4872945033e95e89cc56a4c563647eec227c72c06e4cce1dfe
Date: Sun, 01 Dec 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733040353
