Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCB47E9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 13:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720099523; cv=none; b=fnMrvxNu6dRctijYywp/imi0oA9nMy3B/q8gwEBBYIQUOhQhT1kb4x/kVilMlz5iHkq1ewvyQb0zhsycIDwEJE6hF1uMlOeod00PV6cuNo7jMv671i7tycFiWrfsXM70IGDYIPhc6DNVUWVr1Ty2B3Tra4ESODhPH//u1DT1oLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720099523; c=relaxed/simple;
	bh=NPkW2J6AR/jhv8xKhbmkoZu53fa/hG4Fixil8xtEGI4=;
	h=To:Subject:From:Message-Id:Date; b=bt434vDuQw5PYeUeKYLVF9QOxWYdFfH4dD3PnWoQ78U7dbfIOWT2krMWVvXSq3bhRBpDH5GEehKmFZ+GZogSE3FWvr/QskkuTNU8cW7lQiG0vCshNh92HCUMyEzEE6gTZeg0z3BrXbkGclgELgTuJZ1ngvOe8sLpuFTQvjQnrCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFTjKaQP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFTjKaQP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C48C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 13:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720099522;
	bh=NPkW2J6AR/jhv8xKhbmkoZu53fa/hG4Fixil8xtEGI4=;
	h=To:Subject:From:Date:From;
	b=GFTjKaQPhtY4RQeLVQnw2Yd8VhDa2FvEy/KsfYCKzEGk3qm9dB2duUqFc3bMGEYqz
	 VoQ7M8WmlX1oRQGrFmOWU9gs2BwO3IjFDQEcBJOZMN5eeR3Q9bnlXWYSnFguDTCmAw
	 sbCk40bcNL1a0/F++pU3PZmc9E19hXN0iJ+kIo+tDzwZL4rQ/gIMiTI02zaW0N4jze
	 YSlsgKfh5ZuZIHvfrB+RhnJzCAXpwdm9HhlwemvbpCaUojX5v/kX6T5nHVuIocCBv2
	 EQP0qfI+0ISoG6rB+MpSoAWCiIimXnfEMMg6ZKjx6c8c2zmCFWvgOXAdUIcYyBeuM/
	 /vmCIak6/vTQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B84C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 13:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172009952277.6095.1368650547357731771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6481df820f89822987d9f1133822f20b33a86f8fb8410f44883302cee6e51ec8
Date: Thu, 04 Jul 2024 13:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720099522
