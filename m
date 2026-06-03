Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359FB175A70
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 13:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780493074; cv=none; b=a4qyFpLtv+MExPFkP+l82WmN/c2VS+e0K8nzNLRolyrEWyOfIV/kptfST7lFHlENBypZsPZfPTv5bvNBMmtYf1z+zpBg7CbRAcZABsUe00Mo+lWfiqzcCBM7WrKuoVWis5SI2dWqj7rzCLrXnQPDfRWwyiBDYoiIx1jaXVJEleI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780493074; c=relaxed/simple;
	bh=tF6ea214sPkDBZ+R08SGxgWUKz+gN9itSWyC50+o6Kw=;
	h=To:Subject:From:Message-Id:Date; b=N+Q0yCM97kUnBMLTeS0ZQREOpJgX6h4IFuE8kzzBkhJrEqsIUJBfwKRrbF3OCyUeSZcNh1YYVImqXIQZCbCfTggFVuOo4Sh57+tpJzKQ1qWgLiau2pCR5gzme4wtyRA87J8vrDK1UmD/4GjLeeKNzP+ymgwWJNCxJAHKeWoyqpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqSqCnYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqSqCnYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7551C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 13:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780493073;
	bh=tF6ea214sPkDBZ+R08SGxgWUKz+gN9itSWyC50+o6Kw=;
	h=To:Subject:From:Date:From;
	b=oqSqCnYUhiVnws/2EKXgXMImUUvRX6PaBArZJN85z+ZvXV9Ez9DoDAzuJ/749JyNn
	 Kj13mlnsye6aWZX22U4NPeLR3yTJs0RQ5lef/LMigXMehFVeAws60QPDZ7+nxhfSFy
	 vF6mTv5ZsYzektpLGIbkR+jHmX7UnoPsIz9YM+iwGMrTEg/hpTdYpTH8S9D34cvtMb
	 s38F5Dd6i1oRB1sLEnwjUqCqjSddrgGIqUu5l8rqWP2PsTzC1yMryUMwc0JUu29K9n
	 nXNMz5SEeTTnRHCAT1Y8kfERFtW79QcIE15iMNJQys2U1jvS6BtL3gMC1qnZ4LOiqe
	 v3w6TjAoE+LXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A936BCD6E4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 13:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178049307368.8643.9043801903822211353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0fa4c53363bffc5689f6510cda3363eae8dae8606bbcbd1901f29be66bba78
Date: Wed, 03 Jun 2026 13:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780493073
