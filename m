Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A3B38DCC
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723376154; cv=none; b=nlRv1UBSoP743gcsdH6S7yWozAu4/r+No280LRQ5crT3jPUnIWPvQI7ziaN0NjUruGXKRAt6YUuZMIiguUHmBB+t+BNhUnUJ1b6YB11iTaH+e838OCLsySbVyT8iNy6dqGq7hl0pbWH1AKYecst0dAzkzwxXvFkcBDDYcQsZvrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723376154; c=relaxed/simple;
	bh=9n0Cf1zZ0/iMJOjKCHgCwD4UQktsB8yNeGnxZ0m99Bs=;
	h=To:Subject:From:Message-Id:Date; b=PdenXMNe0Pvzzl90xngbGUJPhiurEdTmF3QiTDzwWTuwHZXN6PLCchPetQBi+OMqtZDm8q8poX1DbHP88BFbr45ChujeLnJ9b0Is3KTvLvEA6Ql1xUdwSOwhsEkuyb6fta/pq8Krui+IzL4VqRB/3bBVutSnykI23WF2hhE9lSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/aTVnqk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/aTVnqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB87C32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723376153;
	bh=9n0Cf1zZ0/iMJOjKCHgCwD4UQktsB8yNeGnxZ0m99Bs=;
	h=To:Subject:From:Date:From;
	b=Y/aTVnqkZIX9WJy8Ov5jPlLZETfVFf8Oc5fRGZdEmxCjIExjAaN58T7W0iMurOjrb
	 lmYlLrq2Z/m+PXCZ/6UfuFscuwDmU6gLzMXZGVeR+F7wI/cKPHccBaSrrN1r2+vt5T
	 cMgQISLmOqsWn5V6vHJ0QdOaJeXEds7EUvesc6uxp2HfIVxJC46tWsZtzD55j/cYCX
	 9xUDGeKIBFuwhZFyQPIq4Mv/nKgxMdrzgvysttx4wyAFEgoBP9Ue7fmVHP2+eibokx
	 GGSl4Z4n+cAlyYTmJCh1ve063RYcsJRF7dhv5J0qMHbhttj594UHBcbmrDGnlMZK2o
	 CzDMkpf+z8qyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999BEC3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172337615358.10271.17256479402504894397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d5f7eff4314c2c0de7723cc2fe6dcce791fb30041c748538c4d32880ae2736
Date: Sun, 11 Aug 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723376153
