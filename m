Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4378BF7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 02:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719800063; cv=none; b=P/wrBpPJAr9HLJnWDjMcAZOpUIHvipROh0G9QstWdpugJJ9MvHVopuFHaa97FOHDA88AKBz4E4SFExuvxYmAewy+ZoECJD6BEqsVh4Oav7gAFHrwNtsZKgcyJ08A1cO4cqrUoxlQAWiUCyLmkOqE/US6JWfGKbuA9A+ebvK2oHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719800063; c=relaxed/simple;
	bh=V6X25NOl7Bm0VNaKsUh+4ZuOet8ndGzKm7iAAITLEbk=;
	h=To:Subject:From:Message-Id:Date; b=Gf2mfXztBsR2Agv8i3y6+fPHeDq9+jpD94o3tcXXTIXGZioNl6QfL5KQgucPH78TrWe0mG7bv7wJ4QmdSCwd0PAfr5xGo8KG/wYQQQyll1nALjzUe0p4s9CPrZbTZSIxwWqcsPtEcFlaoDR6SeqdemzFu1RNzrbnO2yyKFhYLVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cT2q5WJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cT2q5WJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF081C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 02:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719800062;
	bh=V6X25NOl7Bm0VNaKsUh+4ZuOet8ndGzKm7iAAITLEbk=;
	h=To:Subject:From:Date:From;
	b=cT2q5WJXb+dmJkzasonhvMOvXZZeQ45Sm9cARdAsHnS2g+Ru4igU8/6fLQY0Ek9m/
	 fKD0/aYhlRJTzxlpGG9GkjDiw4fgr5902rvPGIWj6MTmNjlVZzg/619mPuw2J/ni7H
	 i+CQd7z8i2236hv+2f2fHK3FY+wYxFb9C3sDgYjGtzAnFzxZ43eCulDKeMJhDWj/HL
	 uCWX+JkS3BkTw+2o2FsEaeGgUeuhmxGGE4wu3SGeXbsNTey4OL/KhjSSVoyl+whCbQ
	 2pcRRGx4LLLv84DPy140vzZynWPygh8hy0pSx5Vg4Gw/B2i/eowk4z9ugIplBmr4pg
	 G+pp3JmIAvA+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C711AC27C4F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 02:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171980006279.12967.14224990918980472216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f53df15ae5848390428ce7ce909c5887ae70f79d19a2af5051aa99ec37289fc
Date: Mon, 01 Jul 2024 02:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719800062
