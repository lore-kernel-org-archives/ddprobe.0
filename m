Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D621991B6
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759016994; cv=none; b=RXVR2aYZ0MN2LMbExwROg4Dj320x4UshORFZK18+k/J+Auz1ss8SxUJoxy1mDv8Q8TE0vT4p8aGjpnuXA2pesy6XIPqmrcnP2KPtOn+vHAuBYcSVCRMfo3x3xGyHxU8CdXcGl93AoSkWQZ3qZLQWL8eFJFkCpRkI9524kUQJ6xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759016994; c=relaxed/simple;
	bh=qhBbfNbpOsUrkp8/gPz7SGGRn6VEGd80LT20RETF1tg=;
	h=To:Subject:From:Message-Id:Date; b=KoKsgxxBmslPP6VnYdgSWJnJWC+gvUVybJPXM75PyP1SaMAToUtocRWrE+GcsBwIEfrZPCKBEdwdtILxG6skNmfZuJAqYbeyu/JctAPAJJBXJjaiGHAYlAu8toGE2Nqj509Td8TD002/mb0XweCIn/Jt8ofI3lKXCVSvCrHnziw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3O1hQfr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3O1hQfr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A732CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759016993;
	bh=qhBbfNbpOsUrkp8/gPz7SGGRn6VEGd80LT20RETF1tg=;
	h=To:Subject:From:Date:From;
	b=Z3O1hQfrH43PKrIGcXX9iK5hD0G7ewMbkp1XXEvS3Hyywq9VRE8y74lVrOFlqPM/V
	 zJtkSqt4PUYC/GQkJJoGCWdRgB1gZcJIiWNwUUSzr5y7K05Gr4zh8D1ljaEjTa3VHV
	 sKpDbcQZtQq+OOmw1fOvKrJoFQvm2KC5UrfhKpoQ776VwRkF7xp8UeWf1yXprg6nTh
	 NN9XRux+FMRrqpgXWjQF1qEgH80k/Gsd2VmF6OV9GRT+bKaMocgK1VCRfo3rV8roCu
	 luhue5OS41SgE9mSp8VX2gH6ejQ0P4ft9jp2p1mKExSMvE0Sr1Kf3odjT4cqpFxWQN
	 XRmgZsfm+ckFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9252ACAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175901699357.23893.5686243495414431541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ffc626d7e4c56cbf0f0591e2ed9a2a55613abcc6bdaa1b442f85ef0d5c968df
Date: Sat, 27 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759016993
