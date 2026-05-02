Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7562D3220
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777708054; cv=none; b=kPLLItVmtwu2hhwWd5FiuEzMvaaAZzrwA1AFJzM7vyEnZAWlMTP72sO19A6Q+ZC1ESeai/jcuNwMjfFOQvN7RNBtjkwWHAcQBCq/PR581qocnekS+umOMYS5sQHqemmx1CrTbpt89MjxlbysmJhawiu7U2mTywGK0hxl5cq+ct0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777708054; c=relaxed/simple;
	bh=plooWyovNB78aDlJLmjko80sQ8wlO+ICcJEZYA3dvCo=;
	h=To:Subject:From:Message-Id:Date; b=UTGKonPseSHNuOFMSmpP/1JR6saAGscjQA/mErIl5NZr2wcEnjNq5kzuLWgEYYR1Txy+9aCyr+gQ7xFzGc2GJ0MW9X7xyO77jpVXvlcYf1df3x956YlAqdux2TSLA1LZo8QtxnlofhqoYj5MzijO+4jO50GebOU726jy3s2qUGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZudTgCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZudTgCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C234DC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777708053;
	bh=plooWyovNB78aDlJLmjko80sQ8wlO+ICcJEZYA3dvCo=;
	h=To:Subject:From:Date:From;
	b=OZudTgCYyAFOR83eMO4LDj5cxs2vY7b1zVbZAn4gi3friNLlrGV0PWFKwgDnaA6dj
	 ueLBtFRrAE8UMnDwkj6nTtZX1grhwNbwwbZ0mwgK1o/AAh2hT9fu6hAg/kIWnFs+Lo
	 q6XVhaUK5ARhEM78FTZkWs5fr6+DVlJupbX4anOc8Qpd4yAqe1vzhiXA8H4aKiu0pP
	 8u1o3XQe38ilaqZByUVXHH32h/v1zPStml3VUUX+bpNt7YaILZ//eHZVi6TKUzfTQY
	 a29LOagMsBdPc2s+ARh6q7BpaBuNqLQPwrMF6FKBu7ZnVxZZOiUoukh7zYmpRKUdkh
	 ils4LXf53G+sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E24CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177770805368.31643.12778144675712973921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b16a25547768313fef5044da256ecc712634a4bfd8c5020fe8b9f390cae2a4b
Date: Sat, 02 May 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777708053
