Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA57175A7B
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787621434; cv=none; b=gRC367FCKvjs7zcCTNZ1l9rHR6OBTBb0Q35Lw9PMjAR7BsyUmLodxmNEVekWp8uNtzyD0VQh5fxi0B5NAPeHDg9c9kfw3Aae5wzhBCHatJ2lexvf8CRrnKL1JHuMLgRAbr2/62Lw19lPNoQdUZ1Iv1bgaewNeq1loL1BJuhQDw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787621434; c=relaxed/simple;
	bh=/yuSzBNpohA0+LBtI+r2ZpCCt4BGqq8e3/v+2wJYnO8=;
	h=To:Subject:From:Message-Id:Date; b=EZP5uI5T2SYYuHcS7lGxIud7jliUhBrNHLIq+wqIXITEbWcBu8Obf/f3fJQ618fnTdCvnbFJZOfWWIfHk7X4PDNt6eZpY3/cyniOPQAnK+oC0GjUyjREUpq3/4gwOooTD4cg2mU9MoLEExKYZX6IdV4Zs2mLnke1LZelLQnkvKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owYEE0V0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owYEE0V0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B5DC19425
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787621433;
	bh=/yuSzBNpohA0+LBtI+r2ZpCCt4BGqq8e3/v+2wJYnO8=;
	h=To:Subject:From:Date:From;
	b=owYEE0V0GD8v2BGjt+oUFw1T3+rljQeGQn5ALfkqzcV+bfV9v+bL5aBWngwkvOQKy
	 IWpQOXOUr1qJJQqdqIG7tfpPGtEaFS9GqCfmdJJe/pxLV6unqh1TjgJJKWnRMTQKND
	 nvjy93AL3mET3ls7dCne7R29mVSahxe54SkKmrEE3qTjjXal44mv4oJ1qxx3aPsajx
	 uha7fRqGLcHvMaI2cFm42Kqi44nqRRvmiKLfFCD4KyAJSJqydtNGdbzJfstGTxkNZP
	 WtsHFYUg8U3IZGytobi2u1INSKW1d89Ekifp90U8nMJy9d5CzCv9EKmZHDfEa2Vh3F
	 4EjY0nfWubfAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05A5C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178762143368.15135.6578531656434338588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b8beeccbc449b40c7a8a8d69d63459b97c49d61a18bf2a6df48711e3f25e938
Date: Tue, 25 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787621433
