Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B5B199237
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735807554; cv=none; b=BjyTO67fIPbqklIkaUz/voZ2oBS3N+Rq1r1hj2NwTFhJKmkl0jFCvc8Sf1Zuou+LT2IQsEUMvP2eF+4CcNbWYpXgeSfmgPZRRx2nFh3fCbaHApcOiRaJ5tfam93sXBwxYMRm3ZnPteytle2NrxgeUoB/gRRuGkIk/7X3nBHJmGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735807554; c=relaxed/simple;
	bh=f/sTK9Psqdkuufb8AtIR9+4SuI2bc6lwwMMRNB5XNuw=;
	h=To:Subject:From:Message-Id:Date; b=ibLrzJVNsFbwHAxvuc9KM1aB1JQxxby16TtzuiCeefmU1UooxNTp7VWf1VDGIs2uULBxzL4Xi8D5cJY0qrjCjYG+ob3Qg9YMXhxngQjNOCnMsGZ/FlqiDnO3f+F7SFbrcmUwK2eH2nnd2ChnyYmuSdK+koBCHDOdj6uuefXvfJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3pWMICa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3pWMICa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89FEC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735807553;
	bh=f/sTK9Psqdkuufb8AtIR9+4SuI2bc6lwwMMRNB5XNuw=;
	h=To:Subject:From:Date:From;
	b=E3pWMICaEM6yw461Y40hMivV46nnyw7VSI26nFyU4ZeyaAW83i86ff4KLe7PLPJ0Y
	 jn2LPkVCssReknUJY4xQDG+K4oF6HHxk5vHNiNvZ8R++id5kiBsejCm2AE+AFUEESq
	 yvlwg44cyNK9SLySD6jp0PLmCwBNVkwgnVxlznXZ7nbTw4bYg1IEP7HObqgO38Zjb/
	 DlD5ocgMROR1W3Pq5BaqiiHwppLbqOY5icfHXVnjOfzm/4YsPLHLpxByXZaqJLrtpC
	 9s6gF/nXJzd6zKSFHpsS2yccu1XDwFVafjhyAmiqe7DSnIlfZKFglEwI4tXxO+ywmm
	 Qq1+M271EF9iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90825E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173580755358.9277.16581893971423608776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4af5ecf902c0fe8c81064050397057796600b645ff26b63e6ca999c54927495
Date: Thu, 02 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735807553
