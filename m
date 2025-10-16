Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C5218FDDB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760652594; cv=none; b=t/gcQxLDdo5medfBKeaaBViBgJyvJQJ3nwcp0tadMDyQHEQ8hLu7LeZzBEX4mZXDs2zuI3jB/MD7ywuHFwMZpsK50Sqr6Jipbffx11gDQYpBO7+MaJD/3nBvI96ng0kW6BGlvvceKxAqd627aCEPCXpOb5dhzaWm158jTqCWRd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760652594; c=relaxed/simple;
	bh=fl2HUrFEUsGqPmMgftOECiK3JyfgfD3Pn5Ptwjsy5cc=;
	h=To:Subject:From:Message-Id:Date; b=tF7g5jy0gJeEHEvAZSYrdUFEYuXoAb2Hh0TrdnluHfCzBQ4w+V2TKA45tr2g0gzqKL60/KnTtxb+HrgkfYfyPpsXLXUQzeXd4HnMShkUfUP4OTP+4BdnUKeT40qnK7lBE4sf1KcZAQTzXk54NtzWVR15D5JU/K+jQS75rzCvUvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjQatzd7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjQatzd7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E19C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760652593;
	bh=fl2HUrFEUsGqPmMgftOECiK3JyfgfD3Pn5Ptwjsy5cc=;
	h=To:Subject:From:Date:From;
	b=LjQatzd71JJn4EHMDSK75xKGJDrxBvVy2UPzoCMGSApHkU8MokbH80pHDvHbFHyS1
	 o77ogB6hqJWY10fWDWVmOdFwiIpJ1GMQGjCrTaJPhuq6GKTycfKcRzuKG4anzd/rAA
	 xwThBal2S0JjLchXOcAnyLETMISDN5kMyQcDiSKnEAuGn3YIAE0t+t1CLT8vSfOdSy
	 2nrDraT85ErErvEeozAoaWb0OadzvXmKLOX0Azlmc/0+ZynslG2D0Wfwfe7mAn/ceG
	 L8ls/CZEABG3u3moBFN4gzb3GWwY0DC+azcXs/163FKC1w2N1HVumIW4kjHbbCSK9a
	 QDklG9784QbMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937FDCCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176065259358.17090.227788598127446297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e7530f0c73b80007c536f48705ad4e75c73f7899095527e9a51004c7e1d2434
Date: Thu, 16 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760652593
