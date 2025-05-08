Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317231C3F02
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746703194; cv=none; b=Ur42WfuR1g4jgym53zSYlonXv8m3Hr5f6BnCn/PXvlr9veqVj6c8jplIPOOwfcCLV3QM8YEON1rojjDr3OkkhmYUwogjJy5II7lCCbj3gm9THNqvtzrvOD7bgMkST8T+/ZD63X7WjRZzWUL1I0rAFQhxTNWLhI5p9+Ht7QLRH/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746703194; c=relaxed/simple;
	bh=SdZFS632YwBY2dGC57DBewqRh+8j70UMJbXDqvbrDj4=;
	h=To:Subject:From:Message-Id:Date; b=rGE8GhfIhYtE29wujWA5PYjLvqCjq/d7Ip6HjzoyisAsx+Qieybm4sekvc0yRhZr6mxOtrwwkBmIS78WSYSjQziHHigCmltl/EsZZ4XcMnFELr6WK+zKAjdJ5n0a3Py00mVAGcyAktq3cFQJ0hg3U61B2p4vZbvldtdCEuMJ++c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=no0HJVzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="no0HJVzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0772C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746703193;
	bh=SdZFS632YwBY2dGC57DBewqRh+8j70UMJbXDqvbrDj4=;
	h=To:Subject:From:Date:From;
	b=no0HJVzfuWeqcScCcXL8Lzpi/poJOloZ7ZwHlbtptKKx+5tlpQGOilIC8LYqxJfy7
	 66DPXF5kzcoIsIMpO7vPm48f7/UIx8e8dGlWDFz82Hf15YEJbDpJnc5Rndr4i4Lv7M
	 ws/R5SRoUPr+IFEf2/NBz6E4kJl2haAbuGH9m69+xkd5be7gxmbpHwTAdzeS4lahOY
	 Rq4xWxLDiibPzBDUxw2pTZsAsCDYU1kBjxoVmBWW6UwHYyCxBuOlt/EBEQ9AUK035n
	 jzvJhkDfuFykzidin9lt1pAA4aWymwRi+IxMWLmD2YPc5D3PYYIO5X1F3Pd3lm7dgn
	 +8x5dZAIFQJ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E801C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174670319357.32527.1723008628615749473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a691bf71ad9ba995b571d37d9453c344005a9ced95bffd6e1eb8877d71c0d364
Date: Thu, 08 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746703193
