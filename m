Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8673F3B1BD
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 00:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782173794; cv=none; b=JKPfINm3NtuqUKxDA46XCTXK9MJr5oUGswkkI87wXVGs8EykmWobIomJefN2mgn/+RwJJBHWJn/71rohhT20FbFP04+HpuztVlSP2s1F1UR3IclyrhcQf3P5lkzXsDmtT8+SjMn5vUw71UAb+pWMuC4g94ifxCXR8wOSdb03bUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782173794; c=relaxed/simple;
	bh=PVrdedBymkKsI8zgGoK3CKAkimxMj4PMEjBqOqkAYlI=;
	h=To:Subject:From:Message-Id:Date; b=awbwTNdgZgmhVCFca927kM5y+hHKa/bW/ZnTIT7reSdzl81q7lG2bOqBkGZsTCJ4ELMAgy5nYUCMtjzm1JDLz36l2W9wgDtEs6UjJp0QLeVgWXLN7h24R9JO5SPNJr/Dlxat3ILMLpEhX8PfjEo8veNCaNJmBgEjULiue0je3Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxIEFFJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxIEFFJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C40F2C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 00:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782173793;
	bh=PVrdedBymkKsI8zgGoK3CKAkimxMj4PMEjBqOqkAYlI=;
	h=To:Subject:From:Date:From;
	b=MxIEFFJdu7esmk4+bZCzLRnUbQpmIgdHOeeGQPHGbc+MDMntfTxhfGltgChoqFYIl
	 +oeeEih5omQ08dHciudkNsDjgxIe8MrsoE8hnB47fYWhZpeFwqvuBSrD/tSco8fQW8
	 y+OlWduXqy2UpK7q42rU1114nM4WGY0BTOCqc1PHGKRs7IkO4//nWnZofcPkw3goUF
	 8/Rj5hmhU32o9h7x8xnXMC4OhfEgS8OQ+1gOMlE3m5vowg1TlILHtB3iF+hyZwNeRt
	 F32Z2HRF8kuG0axI7KM/H8N2s5ZxWWiaM851XcDNX+HjP07V7HPrEcYvMt2gwNrM+3
	 Q1bxpb1VwoZiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC89BCDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 00:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178217379369.7903.10056222589195749683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f728525e64f40a1edc09ba1731444494e6e1d1cd7e72b2bca9dde24a3defb4
Date: Tue, 23 Jun 2026 00:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782173793
