Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC02E246774
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 17:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782666514; cv=none; b=jmC0kq3HcAv5R+uVfgAfm28269Y6itX75h9DfY1iSyzjF7U9N06Ls8YUjjXnDVAtm/ocI97NTcJBeFf8cALs9SMpT93jHlIhrkNwe/mtph5XzFAhsTRrNKgxW25HUkyUtJ+ys+wv0sb8R5qs4rsCfebUGmP2uwQ3zuj64rGgT8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782666514; c=relaxed/simple;
	bh=IWQbs8vRyVoZ/R3CmRU90l1d7rl8J5Dbvrjgcbf2l+o=;
	h=To:Subject:From:Message-Id:Date; b=qemDc2bM1MTF9V9vpD6xTh2buxC0Q0dMeL1ysLk4x+2zfhgSCYMFSVd8/n1RebGGxQe3gTOKbedz7tWwgnApylLoPhCT2bnrcW502FTX9oczleJN7bx5Nwk8QAmM1yDzkbfUgi6pDAiGd5VxsLKJVh/iaT5O9O91pAgIlaWD3K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxzpvE9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxzpvE9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF1DC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782666513;
	bh=IWQbs8vRyVoZ/R3CmRU90l1d7rl8J5Dbvrjgcbf2l+o=;
	h=To:Subject:From:Date:From;
	b=WxzpvE9IjqYxoTo8nZySyj4w++51McrAD1KeHZWfJofX+Rr5pSn6KjoegCk2/2BvW
	 g2vDmS0TB3QH22xlU8qXFGbARSDDaxdusvl0Uw7nu0ZcggaTVKT1jsXQB45t332bY2
	 EkkN0oUF6/QiJOyndVlsOggye7ix0rvrB877xPKMYVL0KsJY2t+fT8lW8fLkca5mHn
	 r0ZDey8jO2W9/CBvXPgDGQCsE5y8+MTrMopJfPUgX3002Ka+/mLTYTqkeu4/yNd2xd
	 ZbpwzjFwH0bv2DjxUo7/lzUnWMRycWIfYI21r6LRRWIi99jn1+ccNKC/wkSZKNzpL8
	 vHM5UORDz1wJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A985CC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178266651368.20710.9413249755594639861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 502a3508923c321add1eb14d0130ac20c401bb18e621f869be1156013371c018
Date: Sun, 28 Jun 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782666513
