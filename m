Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCFC846F
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 10:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734861954; cv=none; b=RYdltsGD83gayCoElUf+w8Yxsfkw1WZkOMmssbjmhSZ5pDUX9KDHqdnsW0cMWlu8nr6OmiNEYQ6euxTQETohDhVkD+92IX4VkK0gW0+FwH/vrT8I+lTp751hTixpvQs/Mi4ASmha0lYuYyMQhbfDnAnDA3SAypTA801tIKX528U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734861954; c=relaxed/simple;
	bh=tjCvlcmc/DE5lhzXP+kG9p3UZZER0Va/LDhsZhuMtmQ=;
	h=To:Subject:From:Message-Id:Date; b=ODVBHvtp2JxpDHUrHnozLjn8T8VHttpdJg+0FN9qXFGyWtZhSUNxWAEsaivId1hg9rq6lWRCzg6TM/w1akuXadl3ysgt7sow7REyhozhHX+sPuAe6THmck2ERu15LeKIupsQ5Yo1K/r/Q39SctQNQBFTEkKjtb4SBICjGdJd2VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POAoLSnx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POAoLSnx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF54BC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734861953;
	bh=tjCvlcmc/DE5lhzXP+kG9p3UZZER0Va/LDhsZhuMtmQ=;
	h=To:Subject:From:Date:From;
	b=POAoLSnxRuNiPQ3aBa0teyIEC4zqJHG+Upd4mG0Q1dkajj+3gSy0iKh0wva9wZ526
	 cjqzp3pMmTWIGuQoik/XzogysZjTkWvz49jTHe2/MNeBNFxzGvrvi2BSEIZG9OC/sV
	 zIUnG6mFSc0zAhFo6NupEOA6AreLgszS0F22lP+bWOo3HldWERuN3RKDozKXJcCBhU
	 nWqQT26MLFI85aBgj+dbNyzHPBE3RYK68Pb9XWS9OnCHEq8PK6Ym1hW3V+N6sCCcoU
	 7h0tyRWdiQkxt4AFYqr0arXi3aufgQebDkayqCS9bRwxujVDMolpswp5ubMoczcdls
	 gwapRJdM9U7XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE36EE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173486195368.18719.1659401429127758900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 474882cc43950003680f1583c736ddb0a2e4346eda0fc32d52672f80196433c0
Date: Sun, 22 Dec 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734861953
