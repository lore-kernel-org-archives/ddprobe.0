Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B570221714
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755877194; cv=none; b=A3KIw6KpJCAOQg/j5xpmFMb3Cz2XLKB3NT8aqeMSRyckOs7A9dQ41yNbvd5YBpMvK2EQrwEogPW0sq50usE/eX1wu363/74NE9q4vyr3XLvO+1s/f6TI9kqrI5CVucytQ9C1uZmLMARVHriw1WvqTRWZkSHkRivdZsys8QVAb9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755877194; c=relaxed/simple;
	bh=fSSiXRPtmmNw4ntpTFEqb2+MdIR8NbvQlCOlwWMLCQw=;
	h=To:Subject:From:Message-Id:Date; b=jbbTlIaMdPheLruiXIT8A3rKWrNw2Ppyp+85X/8W5zNEbuxMuubaBzN1oJpM98HbsoFR7ev+DoZ9Ahx4g+edkzB7YgN0Tslp5CDsZCxGGEPDgprDEPMrttP+zVx9M/dQmc3XJZ4aGwDfXPLXn6Kxs5JTA1TKRDThbIzEkugF7PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGiHIAB9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGiHIAB9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15C8C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755877193;
	bh=fSSiXRPtmmNw4ntpTFEqb2+MdIR8NbvQlCOlwWMLCQw=;
	h=To:Subject:From:Date:From;
	b=rGiHIAB9f2yi063QYwIh6VrWQUxYbiWO5zvIlxdgzCNTJbyR3FKm+edagCISaFaKR
	 WjWdfaS7pacmtfpa7QmhUo+nFOIvjwA24gk6bvjL4FbeYTg6eeC1OBk4Fn1gNf2cir
	 54nt5LLipJUPIz2PhEgiSP0BsUN/aHRhim41aRvDKi7lyu985cbozZ1YgxbaGxedtE
	 psW2rI/MWcDhQOQXIXomxTzZeSLZ880wP0sYgmo1W/2NqeKSwuWQoA27yCcWUN0JVQ
	 ds96WuTC04zXZKoO+q6LmRxIi5eVT3DUApQVm5JJMpwmrYc+109o1W/+7Iz/iQRSVS
	 B/pkT5kQpBd7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB1CCA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175587719357.20506.1581584452609963594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a88047d4ec7103aff22bcb63c3c92615a60df46ad5bff0f691738672b6d4ab
Date: Fri, 22 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755877193
