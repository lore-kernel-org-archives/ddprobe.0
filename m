Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D32477991
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790076635; cv=none; b=pdQ5E5O/Z1tZ/NTdZJuKYIues2tOQ/i8npY/XrM9LGUkTQNjINz1nKZhvsgBlK37dKrvpLMVi/pttQU3VSPiDqebxmrn0lK8+fGmG2LyK6aAw2cBW6HeKa0tizqAFBCswDb98co72IG4lWubElcNscDGGye+rxFr4HMQvL0gf5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790076635; c=relaxed/simple;
	bh=swz9MmIbZdGE8pH3cbuLN4/ffDz3eD0P4rkj1bVMc6I=;
	h=To:Subject:From:Message-Id:Date; b=mhTioGzgFn2DNBt5b6V7lUA33IPiWLBJ/X/aHPfD3WmCgxIhYunTyGBNjytt1q3S/IXtQriOHmqXQ1yU24IpKDBS7PZRo8OFjLcgbr0lfRAYvtcjdQa9PDJb9kZAVTUDyFgSC4dC10UyH0Pj/aKY4KRQkL0q/Tt6n2BhV48L7hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMsEk2pb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMsEk2pb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47BEC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790076633;
	bh=swz9MmIbZdGE8pH3cbuLN4/ffDz3eD0P4rkj1bVMc6I=;
	h=To:Subject:From:Date:From;
	b=dMsEk2pbHA7+ylmjxsl0uUvLdE+8ttzOudKL4eN+YkPyzBpIcKpdJZS+y7dZDpnBF
	 ngrWycl2Fdgvh2/zpKbz38O5ux5expzB7MhI23Sqxg8cXpAOT3dpaJwuKiZPkhEDjm
	 HRHi1OZyAK9GJSA9UxSHMpJ2Td6LZ9mU7AUc6LGiLruOkjOjRa+2iCk0QRQZe2qfOF
	 qvctUWxb8vF/A9oSilRbxoWrF9qzOYJ0CHHEIOvE9R9Isct6t1Z4LO4JMI2x4oh+4I
	 DgfglObyj6Ck7OTpgrvfmMB39NeH1irDCe990gGFcXFTaoI0LMPU162Cy03dreyqOZ
	 1BtkL3AXrnPUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2FEC982FF
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179007663369.13740.14189774818936629302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef98da9e6254b79404a59eb6a72e5f17bcf8e5babef8c2127711844718885e2b
Date: Tue, 22 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790076633
