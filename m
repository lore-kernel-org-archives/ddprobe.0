Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F55370ACD
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 05:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783834114; cv=none; b=ilePzltTiJd9YFANEwPBIvZIje6yz9TtU4wCBoOGhUtWT8ZfgOPTyw8A9LGN8XWYL0z3NNn1tQiave+PFTMSGkWEzw2SDgZiHYS09PjiljZuD6XF9CUtiuTl5AIHhes1XvI/x3L5dkSpS9DcYCc4y+DaG1RTI+wZWex2s9RUZGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783834114; c=relaxed/simple;
	bh=h6DmtubBLouIquhidI0Re2COTvFLl7tedi4VHr+oPfg=;
	h=To:Subject:From:Message-Id:Date; b=ZlmOWZGyMOooPoW2CTcBRsoSZtvYhnlokZLotoBbgkQxi2OtmG4wG7LcSS3lNDu0CVX4e3NSOJcqw1zQfgxS/dihKJx6FLPepHUCgEUyj1tVTTTSvCf8Z0AyQ923cDD1is6Hi73KWU3ZBSc/8qNtKs4c1JocwEeF4o8MezKxGQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTvg1VqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTvg1VqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEF0C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783834113;
	bh=h6DmtubBLouIquhidI0Re2COTvFLl7tedi4VHr+oPfg=;
	h=To:Subject:From:Date:From;
	b=GTvg1VqXbqHBtQHvd57VZC9YdnWr2sw0pTzk4HrBSCT+OSRA1owiMRMftcZcPKcFI
	 8/QywWMm3k9KNf2bSqlQa6gWoyvu4Tk2IHCb3WQxI9c+uLZmDp/L4bSyqFVbSxr1qL
	 Q96U8eOwXx/A+pQxtfus4DTcIdEG1VAvwEg7GOWXqm/6KQ5jKnXjup2N5VJilztCQJ
	 9IbP9SqwwOr5v0kNay5CWjRtiHcXRI6TQ/pdYz+TdPD/YnGCAevT6VHUOb+MOSFl4d
	 HdRxnWIwhcqAuYcle/wASOuHjeS8v50qOWUCBDhXzZiIuuZhAvJ6NS48dmsN+cY9Y2
	 MlDsquKyrgxOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7EBC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178383411368.19080.8595129382577557491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17383caf491cc26cbf6fcec77b1ee40b935cceae88543b14a936880fb8153ef6
Date: Sun, 12 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783834113
