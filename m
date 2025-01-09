Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0CE14EC77
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736400354; cv=none; b=bRDdyWlwpepXxwgxZmVJHdQOg8o0GMtGyL06DBSTw9Y7sByJfDGA50qMYPfAJbdxYCr9Pnz2cW1WIRHc9jLGpx1YexrbcMKb5O42KTaX5aSpa1sdc8q6i7YhlZ+nsG2Gr7qWRUjLJy6QnT2i6CQ/R8qdaAl4F7mdIIomYWCVVS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736400354; c=relaxed/simple;
	bh=UoxX6MwEEkJI1+r6s+qKHnbQv+DQUomNPk7LayrzBPA=;
	h=To:Subject:From:Message-Id:Date; b=CCwARzghvEPjgiloO4L8yYESltg3NEkJMPOfCFJ82Hja4aa4pwkgNeeJA5LcqsRyBAD1LTyVYHID8bwY4JXXSjwzPmPCZ7W33VCpEhCO5bSQzl+jx5kRnE8Nt/Fqp7FR23H0T54NZ5vO4hLuHS4lkPUn9jUUq+Eqji5F8zSYH5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxvcijvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxvcijvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E76C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736400353;
	bh=UoxX6MwEEkJI1+r6s+qKHnbQv+DQUomNPk7LayrzBPA=;
	h=To:Subject:From:Date:From;
	b=lxvcijvVik8YmY8qqZjKlANWCA3BcOsUFg7gVdS/2k/3hpMS9acO7rSs4pLAv+pMt
	 AflmYtDDjHdFMGsrLe3iJBr04jWZNT6UyDb/nJMS9BnhL/cE3xef50lqlBwkGuRhE8
	 IGXcdzSAGVLKZTHTujPZ00Xfy2uC+4hf6pcv3xaI2ZmsLUOFSoXVzV2b407a+z4NWq
	 TuIP4rYAUkJiEQV1EvD3AfDC39DfdydJuQjPIknI8CWS2cbI7zXQZWnjE4ZadQXs/Q
	 uTmrs3OoMuXzWGt7O4Il53mIC+yDaRG8YZzqzYu+gcj1y83/V90jt2iLB+wp9H2Yj6
	 Q80aU7kItvibw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93733E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173640035359.1794.5403306384647691516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de1ee106f618871714bb6b6eb365aadacc117cdc9a0dd6295169bdc3d8a48dcc
Date: Thu, 09 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736400353
