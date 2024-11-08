Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B511E6DE1
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731071754; cv=none; b=SOM5KIXndLnMiWYempf6DIh5/abUaWCZlNyJXFZ81OAbLAHHhe2RmoD/uezeOb+qU7bpovkSYglyN4ovIgW3AUOtf9xvjMkBi5/L1Rdmg3lkJn7bwTqAG+FO4c0Rbvg1l8hRyOJsC4sldMJ+ZCag2wgVrY+A8VonnO4Ah/9BCgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731071754; c=relaxed/simple;
	bh=BZ16GchcMtORg737hctekuOLD3R+clPSIJZ1OazFeBo=;
	h=To:Subject:From:Message-Id:Date; b=TWIhBFQ24xlB7dORG+ND5hs7jsbORYg6kLqN93T0dY/U5wtNo6WU0Ys9BgINdFoL9imloxDm8c3HJ9fnh/zFDZmxbtqD4Z+yz6SodLZpjxcV+VXtexmufoPjmeAlh6ZKW/OrqL+Q7j3MmBcesrHoyBohW3otcgOm5/vzV7ZmfPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjJ2epcp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjJ2epcp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A883BC4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731071753;
	bh=BZ16GchcMtORg737hctekuOLD3R+clPSIJZ1OazFeBo=;
	h=To:Subject:From:Date:From;
	b=mjJ2epcpMeaOr0tIWVSxJMvPybJAmfSu1+FAeNRyDRJM1L9wmxVy2+kBsQlL84U0o
	 cgiklDW2l292sJ18zAVd3ZAhwfuMBiyRON98MCt8q6lsBaFXVDYOW7X/h5pv/V52tF
	 4inNzhqUGcevs00JYHUfNhWO14C/jETxkIE7IysXI26syKmr6lSwB1sjhwNKdTEWKT
	 PJTBri3fRRxBh5A6gNSnfq9Ga5/DNURjo1Td95dq8Y/mA1rPPGefjYc9b2Gy6t7e64
	 GZj1o7lSsXcjR/MPMmlQiTO6X3UfGOnwljdo05SjFmQqSq6+cfQqvyawPb4e3gqjWG
	 rxoV/j4NNAn8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D08D5C0C3
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173107175360.13603.5558197442390988043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0138e026e1dfa466f9137c3b99b479da6b8a460612e008a59f8465d66c29a9b7
Date: Fri, 08 Nov 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731071753
