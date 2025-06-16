Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A1D2BF016
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750093794; cv=none; b=WWDD+qjLuDgZ7HfW6gRUcgC2D7PXOEYnBQBjHVEeRaO5dE1bnBbJeODCs6mL3NS6blX2knVhFGgclKtMtfMbhlGRswGB8K6ObImvXer/w6ci502yIXsKVb2QIR1YQPF7DUqh7VthuKA0NnAPajk2xKwGPgRy2gnn/sE8R1CnqnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750093794; c=relaxed/simple;
	bh=pkiSuGAJx2e+67u84IAhXJzAgXKF+EKyno4x8ICDVWo=;
	h=To:Subject:From:Message-Id:Date; b=QVRePbA4ROTxr5Gy4zILTCsjfqNEtRrRVm0FL5YRIhsoC+it3P7S0txrnhgmnP5141mKnuL2L3knXyDeCgrvsuw72qdxtWvFDzHBYvCXz0hjmA4zBQkSH0i14JrP5eEgxQ2vHdQ9IKROSQLvsU3S73Bt6Rch82L+RCVJIwVWYrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOc+b6Bx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOc+b6Bx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B2BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750093793;
	bh=pkiSuGAJx2e+67u84IAhXJzAgXKF+EKyno4x8ICDVWo=;
	h=To:Subject:From:Date:From;
	b=fOc+b6BxRdovY+6ACT8F6zCTrotLQ53cyzHj0MM2nR6Yu6WhkQQUSnlvflwDqxhvU
	 ShIeXsI8nA6qTGKGp4sSs52Y+7dC0TVB16dODuCjxuSqLh0VMOQ7d1hy3JpJDgzDyf
	 dtSbq/e4U3SaceI3SoXJZOQHfRukDivcGjmvPve50it6mDUrJxeHb3kwBZUN8tbyET
	 ygRN10GUra/y0HmqsWktSCToTH60kpA7yWDBFswAPmtRMyO1ntmCcDfoWzUodfvAB7
	 Ak86xITloJBh5yflcmZ4vbMgVYXrUAqqGnhvTDGVzsEl3E2wt3wKpfUylxyLaG0YGh
	 3TpmHHh8GeTXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909AEC71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175009379358.6091.5959479821427940648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e02cf3c85acc8b754e3be27384f2451c3823860f5a91c7461eb375aaa9599b
Date: Mon, 16 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750093793
