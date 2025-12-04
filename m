Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4781E515
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 04:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764822775; cv=none; b=X4vP23NSuDvG7Q3ZHw3JjYwy6Edm7B1OECFC7BPeS1+5yHJqs53GhS5XRZf6PNpcirm/WYLC57c2OSy655kTkuS8/APIMhbhZe0i6gYwR49T0NzN3T8K1dcJHrF1JbvQSUS6earJahlib1RDOEaL0INR/go3v0LB4EiGvfZKRXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764822775; c=relaxed/simple;
	bh=VIHIf2wz9a9dsikO+NpPVEjAxwHcWE9JTmYt8mRm3LY=;
	h=To:Subject:From:Message-Id:Date; b=e3Jf5hWRg0oIRZtuodKe7QF1W3Kv0elUJ5/MfiJQc5OU8PhYjrDc8BxP/a87foth9v03aN1ShySOZh09wJ8dghRdlVRGtpGMRDananwJrVwJaSzq66HUI02HtyLfRLKs5uhxA5jkL353WIs1Pvu11taF3bqL8smk09Wz7wYwjHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkfjCKlj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkfjCKlj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8444C113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764822773;
	bh=VIHIf2wz9a9dsikO+NpPVEjAxwHcWE9JTmYt8mRm3LY=;
	h=To:Subject:From:Date:From;
	b=MkfjCKljdUc4qQP9Hx6sCL93DpIQQf+Pe65lUzdYDymSwoZM3JWLZUpY7YB82Nvtg
	 lROzC+apox2JdKvNxNadM8jZaMb0Z1C6ORmGJOlxGW3cgp1J/Fj8Ft2llUx1+nKkx/
	 xxij4yoIA0JIucAIGTWVbPEX2dQPqmv/95NK+8xM/tzhuO45AmIXCDAHasVpaZBPed
	 tsj1gguQiR85L94rlMJwT1pCACpgUaTH4cI0x+EjDMbsTYpx3XTyKDSIOIlvGT339K
	 SAu/6xFrkjar3O+zYEA1FMYtBmw9vhSRwvDCo0i/7K4XeeMRnSE6oTBvuaF88bvbjN
	 v5ZeJ/49AU1bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B0DD1CDDD
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176482277358.10670.3636453825631974421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2876ef0848ddf353f1dcedaa7a5a819adcd85e86d6c8cb85ba8bb3daa29516cd
Date: Thu, 04 Dec 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764822773
