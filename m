Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE0C9479
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723090554; cv=none; b=biGr8/9BfPFmlkyUtOO/IzHe2nq5RLmC2rrGNHUyMpEQKgHyvRzvn+0RXdeHxk6og8Au2d1n5Sc4HjlhSPFgTH++2zzxcd2X8f4z+ukhwrTR6y5T/y78aVc1ANAbqPfqsmB2Kv3ksCw1FrGWkwkSvMG20FuzgV9FZanE3RZ3tW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723090554; c=relaxed/simple;
	bh=13HKe+QO114XAbG40fI1SyapP0DZU4ZgnputcaqRaW8=;
	h=To:Subject:From:Message-Id:Date; b=sBKO+BZxESrTJ1dC5kocL9Vu7RMh5t9PSUIrN9X5yMVvbrD5PWJt/FSCBK9fc5SWb+AXhyHq4Pz1yXk+KvCFHZDQJrBCgLOJv7/wS0KTXZBV4fvMMeYM1yqz1kVNleJoUc57tIoIijPprdz4Aybb0P4D+G0LEY5ZNKpHUCG0PwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dz1J9sIA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dz1J9sIA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9833C32786
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723090553;
	bh=13HKe+QO114XAbG40fI1SyapP0DZU4ZgnputcaqRaW8=;
	h=To:Subject:From:Date:From;
	b=dz1J9sIASAvTLhvSp9H/Wno8Fhyc63LKPCnFKTu4OgXRISbbrsT162J9tEqwFRHac
	 mwl8MZI0XBc1VvY+JBMxn1Po5fBQbyMDdqhaa8Po/AQBWSv8kLdyAqSwZGL8HAXebt
	 iJE7IB6PiKaDAP6bn0B+ou5pQO/0mhr3PDZXfD9WQ0kvLFOcPtOqeZQsXG1XvqmUdb
	 gPL7REWelA9fmjkDQctumYRLrvAz53w+u+FVZVTc0ArUSHQZGmVwsjcPTFKdR1YUdq
	 mcAlmRktbTHGLvU1B76lRs8pPiYEg+WBa+Pcz9PCP+xNwGswqhpjSTaICnItBUUwSs
	 Oxc1jpB387b6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E56C52D6F
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172309055362.11609.4608897271136590235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e32350213af0b3e7575841e58e5464a08959a80ca2c69568f0cbbbab28e88175
Date: Thu, 08 Aug 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723090553
