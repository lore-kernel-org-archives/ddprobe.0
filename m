Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2497C1AE02B
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722620154; cv=none; b=Y1DkMGWIxz/GiDuM9ReJGu/LotrbJFjhey+bQhKB3VuCxTdUse7w273SgBwOwXrH2mb/dN0SdxmZLo+fcEBywhlEguCIW4mXGCvB4lftioA4fhX29lQF6CfKg8Nmu5LnGwSD/SymWOWErVJsyd4ebCK0vn/s6aMCQeIlZx1TRN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722620154; c=relaxed/simple;
	bh=VNE3lnmkbMJvMSg4kYqFRRnOHGc6ApOb1h0rdGPSFgA=;
	h=To:Subject:From:Message-Id:Date; b=eexufh6XhUSLyGxV5POYSZcnAWzkC9yLqBS1OgpTsstY1fdPHmPtlv2dXPpFOdu8autaHFwgZx88WhyiAMTpAFCff8u3OHp/nyw6M3/m6WzOXIzOcWIxtwBdoSLS2BKk2XkpDRxoYsE/cQa1j/u72+hygPMuABJDqrrNWnXbpzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9+WDq2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9+WDq2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB870C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722620153;
	bh=VNE3lnmkbMJvMSg4kYqFRRnOHGc6ApOb1h0rdGPSFgA=;
	h=To:Subject:From:Date:From;
	b=E9+WDq2IdZ0JyzDW+d+XQ3AQZW+TyN1gR5yFPVgytSnRW1R5yjO4UEyPPNGHKMo/7
	 7PaMn2PcTfELMu5TD32LbO5DyCbVvc+4HFEC95LRir4IQ/DpUCh/M8C03Lg/etbv6H
	 eNBviWXoyPVgP5OFPbQanOkyqnfOXP1KlWeUWGMYEdU16Miw2HMi9nFAzkimhJdzfM
	 DiaNP0DTMg+XDCQ5aqPHWuQAS5Pll54v0WhmC8LVFqByt1xbuDkftGINa2kyI4XigH
	 Ap/2MEn7DeMwUvXOu3UKQtmT2c4yycLZKNKFkxNpFYylpLxm3G6wHS3BpdW5vs25yk
	 fRRSVBHnasHaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAE9C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172262015359.22392.13704591180378516161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd601ded6abe1d6e3f909a38293003c4a360a7981e064059819c9b8fe9811c89
Date: Fri, 02 Aug 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722620153
