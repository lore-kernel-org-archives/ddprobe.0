Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D16214A8C
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 19:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715194943; cv=none; b=dFK4X5EL2kw5oojLje0HbWdaGHNHNKJIAXUqrFDD4it5AOzvnJJd0R+gxgwXfdYSK+gFBe0QAdjp8bNGtvLnmORc6qC1jCK2ZzTzWC9Z5DjTo78dbC9euBLBUqbBVwWfKaZjorVDeI2uTt7VL2SuBSSOVKJuwLUHhPtjsy+0w9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715194943; c=relaxed/simple;
	bh=CR3LnAWcENMVsPVjr7/gmlBTC+LcRgHr3ZUO9ecTqu8=;
	h=To:Subject:From:Message-Id:Date; b=BKKRdCavLwWanGzMtYZOnuT3HaU3XQuYTG6wl593Bc5X6pLJ6jmjRHTasOr0hz8+fr7z4PgDMNcggCc3RHY29Um68jegsKhU9A5W6INKVryhrDlybi6rcLRaP4zcg302j+Z3vblrP7OZ7anvSvAx40364xhTW8v9gEGZEt9HgIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbm8IAvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbm8IAvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E554EC113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 19:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715194942;
	bh=CR3LnAWcENMVsPVjr7/gmlBTC+LcRgHr3ZUO9ecTqu8=;
	h=To:Subject:From:Date:From;
	b=jbm8IAvFL64Mz4oTl0TE6XlAp7836Sb+GOTTPssmMfmthgIHl8KoIQdLx8mj6OsGV
	 zodWXRSyAOy4mb5BHlDH92gKVOshQAh1/TCYtzYxn0ftfmTgdqPWOE8WjOfzB8qiyA
	 Ot4N6ot1MwAKC7JWQN/n6N3/ae2SS/484swYibxHRTbgkbSgTYBxK/yC34Ry8HNtnC
	 //t14WMWWvBQgX+Yd7LRRYiaUxYO3pM+EyW6mT1J/PNgu0XTZDR06NwOGYugS/jCwM
	 ilRqaOjY+5uv8DCcmrBMa34zEZTIiSZnD7DUmsRvINzHTctMCtIV6+nmp1v9/oWF/5
	 hr5gUHbXeX6Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9A9CC25B4F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 19:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171519494281.16630.18191132499287477762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e149d78fd036211dd021da6653ef419410e76b315da844bbb024d9a8007a693
Date: Wed, 08 May 2024 19:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715194942
