Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1621552FD
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759585794; cv=none; b=c+C6L4Sn6LzfgBISJKBaMu5obsrBgLHMTeoCpMRhr5N0VCnjRFH6ePdOUXSDgeysBS703cadsgSzskt6tSu7WBCw3dI+ZEBaVIS4B5nLa7x43UYiNI5Kw3V+ajjRoX/o8CSFrgeRlV1WKFI9q17EC6gXFT8/sMa71DluN7uK+7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759585794; c=relaxed/simple;
	bh=v00tREyZTpzzEW/uBdJmvMAj545lypeiWSOxz7WWhEk=;
	h=To:Subject:From:Message-Id:Date; b=KEYdE+P1osOjWSR+WHqJvdODVuVZn7mQNPWVywr7QJN+v+24PwTFzAeaQjwsDvwk8EJergVSc5mETqc2uYmMcqWoiTnemWFlunm+aePl5DcRfjs4LAYQyvA2G3DG1jMsdI9smvklaCExXjgXRT8Ztda4IzuFQx+uVIwF22uFgzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFiVERJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFiVERJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F3EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759585793;
	bh=v00tREyZTpzzEW/uBdJmvMAj545lypeiWSOxz7WWhEk=;
	h=To:Subject:From:Date:From;
	b=uFiVERJhrr9lW8fnwbLqPeulYDJToHQh77QrSfAyKjzK5wHClPscOU9sTqRKS4EUH
	 8xtrAW5xxYaeNNqFTsv1d2eqsjFYcN6aJl8CBo8kvvHa1nTFPnQPSCXM+q90XvZvSd
	 ejTyNnd2PGDqxGsm6SYQJc4DVDz9Pu4+N6VRJV6x8Jw0qBUppJV2fbpJGaDDxdeYWI
	 tTuCUx0Vq8ePeSERL4Po6eRt8ad5E3QS/QU2tWzxcf/BFE0o74KCoLA8LfKMK+X+QZ
	 ZZc6UiUGJojHA/KxPE9z8GobGvgeMAFmjoRBM4lIgQ1oE0SgpqkAuVHr1pZFMRHiup
	 nwAOMcJOVxCaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F13CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175958579359.17625.4846580086403286590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8364f282ed27e3e12da4b3b6212cfabb40e6f2d5d5e90d9ad112b00687949ddd
Date: Sat, 04 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759585793
