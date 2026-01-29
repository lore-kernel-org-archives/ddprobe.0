Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C70931328B
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769650434; cv=none; b=aM3x1fcqJnvxgmNm3Usan5vxWlhdMOJn3liPQEFgrbHYrCY0vM8XT8JNa9RZJMME09bzoUpK2uy7svN2vn2VZiC9vLD+b191lryWQnuMzsI4A5t9kIxnW0gTZCC9QtvzIKremXyYSopKDGbfmt3E36kqj3EOw3DBpTTHa8QIwHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769650434; c=relaxed/simple;
	bh=4cP6QEQxsdjDBTh9V+LZvfP5XCeWJot2IPfQII0mzv0=;
	h=To:Subject:From:Message-Id:Date; b=L/2OVuSHXAg+rnbL/HQCXSXDUhq0ItnJDxMOeCBaGn8SsOkN8YmdFssjC3Y1IZ5c/7Xdgq8CVnLAAZc9DoKuzh4pHRDpKvJIQZKmIK8Gk0Uru51Y9hFX0SbVuaY3qIA3mo4y/3iBZ1cY1fd+0ACBvQKepqPZ+FxE173tHVQPKOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qwg+2w/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qwg+2w/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D02EC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769650433;
	bh=4cP6QEQxsdjDBTh9V+LZvfP5XCeWJot2IPfQII0mzv0=;
	h=To:Subject:From:Date:From;
	b=Qwg+2w/BR7yABoc4CV105jen2YfOszMFQ84C2vKKRNaeBEyr6vt2uh8ryzc5B+WmN
	 NdLVA/Dqbgc+ly1Z5Bc2dMHmW/quF1UeUzFXJrotyPfbDcRFrHd6K0DlKWCe3kJV66
	 0UnZFfD1at3yDwSgnsRsUjdswCXh9tO5uQx0QGPmcvLw9Z2VlpSp2qwwMRmTSsP2sQ
	 CDGHjZ6f2A9BCGwurB7JJJfqSqUFGai7Pc4M/iIYC74Zk/C9P6eg+D5AlLE5nlWoGT
	 DbWm78uu/Dr/vP6Fa3FMd/fAmUj/Pp2qdqeMf/WdLQWOhRwn/7vNgc1NkGR+YeRqPn
	 I8zhrQgWBQ83Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F324D46BF0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176965043357.26744.14679782867359407053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99cc91c53e4baea2fc28ae2457661e3005b6693d2c7bd6ddf458730fd3c2f329
Date: Thu, 29 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769650433
