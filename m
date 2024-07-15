Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404311CF92
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 16:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721062523; cv=none; b=JOGBxRTncauHn3X6VBA0LUP8MFrs4pMH0a8vjXcgTXPwaxhCz9e+T1mZdJlEac+Mp+k2DKtNExKlUqugJHvgCN04tPNjryxha6FEzfffxDBzVqwRFNJq/Hncnu1KIh/s3RJkeuGn5Bg7lxSKdQ2W7K9rf6yy+rxFiyW4++338U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721062523; c=relaxed/simple;
	bh=icgMInvL9velcoXmpvESkFYyknUanHpzdehMfFMrsvo=;
	h=To:Subject:From:Message-Id:Date; b=r4T53qR5oaEQAppJ74xW0cAU47lQgwlRYmgS91rtKCvW+wv8Z186fzDykTVoenvTcB6qaoWbcThkkQkA1+YCR5/A62LjanEw87VrE1Ry00VMXkEyEDzKcVDP2HM5Oas9T6FThontwQd8J0Vvuowc3aqffViYCVUY5VqPtgysUws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVnndQdU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVnndQdU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D532AC32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 16:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721062522;
	bh=icgMInvL9velcoXmpvESkFYyknUanHpzdehMfFMrsvo=;
	h=To:Subject:From:Date:From;
	b=DVnndQdUyMFK9EsQbX7g6bhrstYmShcy4xFjs19sc9RdEcqfPdFdRCYVt+pp8PN0A
	 8m0aQosQ7/74os/OE5Xg0/AivDTRND3OqFk4Rgh9h3pqtjSxGPjGt+bFc4LOH5hFId
	 mA9YR3xqCtMdQ8WTxGWiFFo8NdHOMM9p4/rnzTrsIvkIDZztI5ji3XG2MyF2E9WzKL
	 RGtEdMZalbUWV/FkLdeb7CLdCYw0iqvtJmtBpkShTPQA1xnrnoxl5B/WAFBwunNSjq
	 HewOpJnNlVYTyh4dVPhPeS9B+oZhF7VWhIXxN/g7473yf+hRG9HdznPzNnUliFYvdL
	 T7cFHi8l750OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC47FC3DA4B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 16:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172106252276.10076.17951838259570204375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a27f8c0ea52a512e2e5e769c4f8d5c1731f93107bd1c3a8b094c822b0c3ca47
Date: Mon, 15 Jul 2024 16:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721062522
