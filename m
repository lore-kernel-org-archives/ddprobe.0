Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BF11761B1
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 10:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717065863; cv=none; b=Q/wzW9/h/zNUp5jKgnk/3BP1EqKLHiL3P1U/yVooB+kZ4muOp/Z2mjEk2r0k1AewFr9gKLo5R6o18RJB0r9ToxypnEayRhp/hSWPBNDRrn42O6gZp8C/jjTq74x6C/xLeAYnEe5+1AzJxjw/MMKPEoeng01blAJAXRi/JuN8cRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717065863; c=relaxed/simple;
	bh=BQXas1opK2rl6i957urPMcbRYW73bsrnP9poICPhQo0=;
	h=To:Subject:From:Message-Id:Date; b=REtajx6lgjpfSpvWlqoqE1q4+vmNebs3K2SCzuSeIYdOSbtETFIXueAk+l+ceCXTJLS+3rvrOjqFFmy0ntZ3/ytmdsIgieLvxnaRb2eqU0zZCH0bsdfxL3YSAhQqwBUuYM4mdR8iiZBTOEFZpzpSxngvjIIpgJO1cytEU5Dbma0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1qgXlF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1qgXlF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EF7C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 10:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717065862;
	bh=BQXas1opK2rl6i957urPMcbRYW73bsrnP9poICPhQo0=;
	h=To:Subject:From:Date:From;
	b=t1qgXlF03e5GAhM2jclVoRUNPStstz1ilLernsj/scbDXgfV2gVYATOCcH/a51r/W
	 PwKx6ZTU7f5/jmZDPmPEsyNaCO8RnK+sK/DpPXHu1NuuLcTsCjYGh9DLx/Pd3rNW42
	 T4isUqNvEgm3aPdtQ8afC2z81G5w1NUHqK0XRbcgr5BySLkNUtiVWwd7ZtyZ9Kh61F
	 ND7mCbZEdz3MwoOyCVhzY7ioaSdRIb4ROlMTHhOEVRAZFILY1ol8GwDf2UBucxLtuC
	 S1CKBbetlFfbD15A8PmHOHDXDJzkn1Sh55fXUe1jGgvnFzwvsYw3ueuWT9I5gHhV51
	 aAZo8bWuqSzWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE692C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 10:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171706586275.25958.15906014971892815559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ebbefec3d46852cd7f1021285845328490f49e852afb22608f0cb0b5cafb0a
Date: Thu, 30 May 2024 10:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717065862
