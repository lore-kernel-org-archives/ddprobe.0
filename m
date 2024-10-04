Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450A528FD
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728008154; cv=none; b=qf28Sf4EfgDmu11wHUVCxRv+Vw3QmUX+hrJ71u69g2jdZ2M/n6lnZQjX6iXGFlTB9Z/ZLVtYZvqkDx52cO4ZS1yZpn/jHrcgdy+lVZiWt6pRAdkjQ5LaeJ5QgU3N3DMYpIMfvNAHIJdiC82hAeXywjAVbxg4SBa7bSPxnugUT4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728008154; c=relaxed/simple;
	bh=X+zr1A8cFcF3ns1++ik12l7iEMBz56CpygbG9QF7HmE=;
	h=To:Subject:From:Message-Id:Date; b=e/t1h+HShEzGdK7/u7IbRj3nO1pRvUIAmYdru8zlaGxft4YLXYe1vjRKUcPCkoDDZKsEzQcrqzMEKF+rdrMzTN6SojKlLMcDGTGq6+K5pRsS+tJjeUHwndkBMNSlgs5/9xLSC00Ji4q1if8g8yv6AQO0bMJFn05/yRnMXEamk7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CaVvsieT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CaVvsieT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F83C4CEC5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728008153;
	bh=X+zr1A8cFcF3ns1++ik12l7iEMBz56CpygbG9QF7HmE=;
	h=To:Subject:From:Date:From;
	b=CaVvsieTKB2b/dtKakhT09Evqcy2R/Vir+lce9mJQLBlSZbk4qVv0qwT8XryNRuSh
	 DZucM1rMGy5GqeLbmpJqrrYCoRvec9Zebs0xwUm37SsNeJ/nD3pb/QUVBJH+s4vkVa
	 NQzwquXh1KQiBn2JRFze8fSTIKjQwZ7ejivfd39FI3UW7GHvb+nn3QdmjTBfPsDPVv
	 MUAvVKvMX+/jmmlqrEn2dKUD7fiS60FJdcfTMKdt20B80mq/huk2HxNYEu02HIP5vS
	 7SeA4Cta1bzoXgKglheM4085bEBASwvaPyhbkqx1FkHu8sJn2nzklN+SgNU5P4AiN4
	 hAdUkTquD0WOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3418CF34DD
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172800815363.18663.18336779504084096513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba9b08a9f55c0621c840eaa90e2f89240947b3d67dda94cd62eeead6cf98da3
Date: Fri, 04 Oct 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728008153
