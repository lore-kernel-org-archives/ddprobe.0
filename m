Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2763217BA0
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731825354; cv=none; b=NNHJgflxsob7LPwMV9SqN5k41cZcvU4q4X4l2KLWQC2oeKA7q6QtBY32yZjl6QtQ380Ulm6Gos/7AGWn7GbGWQEZhhq1790mhLaKVH9uAVplp8vkWYnl3SAUolPjqxDX4ZpJ9zh0UIcESjD6poKemGLLRwjCmhV7vfGxfF7jSU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731825354; c=relaxed/simple;
	bh=eG1vEfYI44sp5ON1vNdCk9tGGjP6j8K/sA4RQeLzIv4=;
	h=To:Subject:From:Message-Id:Date; b=asRhLpdj94+eia0d20CGhWwDhTrIOTiHii4JBeqPVYZ8F+0OhYBNr5/SpHyoJxRMmmjdRAcn+fbiWvOxLFDg+ivEr9YEv1DMHhFyOrQXofIyrOPAw7X6ACueOBliFhLIze1/AiPnmr4SI6E7hpCHiM9cs9Hn0rUg4Ho8hnyUvKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axdrU/oI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axdrU/oI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB24AC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731825353;
	bh=eG1vEfYI44sp5ON1vNdCk9tGGjP6j8K/sA4RQeLzIv4=;
	h=To:Subject:From:Date:From;
	b=axdrU/oIFxMpNnoP/lebHWCH2Zk9t5ZfRfrHd99eAA7ulWk7P0rcHzH7dHstu01t/
	 XlX70aHMAba6BQATREDC2zkWCRHgeiS1d647YboDROhmsU7ASf7l3pglO/s20crY6U
	 c1hZNDCtSjtXiBtolpisI4K/NkwFHBnY7fJL3pGyZcx01Uj1Th6v7YUc7TlvQ+atea
	 QSNBtdiIkmIkCkR8yC4QT0VxN9t7YGg50pBLJqjj6dQgiBmCGBL/IRGaZvPFFBhnV3
	 wZHhuVl9wDJNUR/4Mkbsf6jwsmPF9VW/tfrL8hjnZH0PZc1I1HLfTSuZ4HCJ6XKpnu
	 8W8azEYpvUjcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F12D68BE2
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173182535358.27883.9195093160747259707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89ec6ec0cf4bb920b66d7989b284dc4713c7cab669bb663c5f8a0be15ec8eb2f
Date: Sun, 17 Nov 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731825353
