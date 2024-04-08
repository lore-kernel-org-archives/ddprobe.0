Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1451DA3A
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712603896; cv=none; b=WNlAr/FpAbcijKaKn/O/AF4ebV4xjzpdXzRH9gQiXyjHXBjUb+JPnLdqfkK73lqGQOLX7aO3j/GxlyR5NDD6dj0uiZFeTgs5ePa34ob7s18+xuGpeYsKrXK8TOdxC8q4mXVfOiD9D6KglQO2as5efI0AbW2uhYXeO1UNcSa4PmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712603896; c=relaxed/simple;
	bh=jupbdMKY3lWXV7uCYwX9e4cWsP2qOHn5FS1cVvL+HFs=;
	h=To:Subject:From:Message-Id:Date; b=OafmvakxPhs3otzkk0M1B0D1r86+MNA4gnx33yqRolZMLq4mmMhJJNi8ByVTUOrRybw2AbzzEhQlA42yTyCatQDSQAqGw2GSl1YDB1lcexwUnJBcyQ17SASZ2bew7g9t67YrrqR/Q8brGY/ycYmIckS17RagHRL3WLJdS0gwGFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQMr8rUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQMr8rUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7673AC433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712603896;
	bh=jupbdMKY3lWXV7uCYwX9e4cWsP2qOHn5FS1cVvL+HFs=;
	h=To:Subject:From:Date:From;
	b=mQMr8rUdPpAXDGFWihjQDtJEc6QLDWhuTd7RyrtkTf0PASvfIRkg0LehDIMvYcFfq
	 fV3xIr9vh8gAVcLswi1/uf8E81QrSg24VrPIYDpxPB0w6dfHoPoVdwfxSr7w2qMzUd
	 ctVu8RowtoqoGGAVSta27nS7IoYrR7nQq9SCNFTshauN1QimZSUnt7apqSRqEdzk+n
	 rqMc+3rCPyAM5xVM81VuOgrZ+MLe+Els5w0ITlRuLOR628GoK0EEfUDm2GBQeqOCVe
	 O0Y5DGqb3MZaYD5hlSdsY1lRR4rSJS+3uEStJr33hJpX/DmN+b2/n5Hp4BN29nC0t7
	 uGzmdewNvG6Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6664EC67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171260389640.31957.16935182510371330953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64eb40c29722fea4560d7fd01a25f340443a21729e431f5121a9185c95822470
Date: Mon, 08 Apr 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712603896
