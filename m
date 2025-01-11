Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3227829A2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736570754; cv=none; b=G+EEN6ZMBVwQn/6NqlkELDbVDdlyQ8xMfSrRhSERusiCOo4kL5pjtfmZcozlWsFiEQqUlea7iICJV14GoPG1oxPDVT0K1FknLzyPtEQdP5/mAuW1Oqn15nAWBsQbpeo0nxrxbZ3DFq5UWnK4ycf1dwfh5Wi8dVvwMtvUDmlROl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736570754; c=relaxed/simple;
	bh=0aU5hazdsQNHO7pIl2C9/pRQ75/maeoONCpNA8E8Wi4=;
	h=To:Subject:From:Message-Id:Date; b=dPvzNyvmP/879u55ihmuwsh2RPEPzvshQ/zErN5QCeSmERnbZ3tij0tTsYGgrp/YlihwJhYbZd6VpW8XMRQkKm7rCtu2VVxjnDUFygpUmw0pq4DonBPAjY67p4NG1F7kJrwiSagt0eb4xVMiPdrR/2LM2UMdqTbyxfRd8oa5Ti8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1gEmF2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1gEmF2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C492AC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736570753;
	bh=0aU5hazdsQNHO7pIl2C9/pRQ75/maeoONCpNA8E8Wi4=;
	h=To:Subject:From:Date:From;
	b=m1gEmF2XxaGaPM+ReO0C+01ZpdKy1nW5ISzd5xjdVdnCTsZ/QtrrfkXr5/7rOzGrY
	 fqZ9kd1wyTs4AFE/UGBY6A1U1RQg+T+spzUVgzFq3NHgmh0OlG2I8/cdPGx6rBlSpy
	 jCrjYZ1JWaaMfjHjb2Qeyt509YzIovhA3EX3PSDSvCAC4mtxRCLx4E+OILLFbBsbRU
	 Alu2s65TxAmYlE7iIAITYBIPdAvMrqKBm+Al7NQLxUML9LXjH+pd9ooMTZgoAWglr9
	 liTtLEQlfrD8ky69lYZ4mwuXAJ0a9Zl/3UgRS3oJKl/J+knSH546sRCyzLrhu3VADT
	 JERVqeA3AOltw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3701E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173657075362.27143.2257530315642025140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f987cacdf1e8433381898cdf98b79e199e3663d27a9baf2ff2292c1f662294
Date: Sat, 11 Jan 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736570753
