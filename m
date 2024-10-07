Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512FE2AD05
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728276954; cv=none; b=tMNHAd+ppi7SaunfRIM21JMQr9kkz4gi8O4yGMcezySCNabRwuApFk2dt9WNIgYw5PU8mkbvBnWvKGgQoo+pCc2QjkOeJQ7bEln0IuDEBQsIxS/xwmIvkLiYmLxSFz0XpgeZf9v9Ap6wxbq8GkdSJKmBdmF8CmBV0btMrgD0oFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728276954; c=relaxed/simple;
	bh=krJZKjt0n7aIN4UZf39rZGU2MwaJoaM3emozbZL+9yw=;
	h=To:Subject:From:Message-Id:Date; b=W07SHkDNRC/76jwYt75fGN+lXux+MHjvvWVTPUzV3Ugdd/63E9Lela25wMXHZQlOZu1TaqtSnCc3TyID/1Wt1GKbPKkxbQWz8SqCZ2dbkLasuyQ9DoMf6Wv/M3Thn5msL9Z8Tin1ka6/gWcRQEPwEzqa1QlLic7OFeE1jmq772c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8hYCcGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8hYCcGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BB0C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728276953;
	bh=krJZKjt0n7aIN4UZf39rZGU2MwaJoaM3emozbZL+9yw=;
	h=To:Subject:From:Date:From;
	b=o8hYCcGlEPAcaMClamOiuHYDzHhVXgXFkTCdMIQ7zO53V13YFUTAKWVY80DmMwrSr
	 2QbmiAk1gBcjOmMr1h76vhQrKNZU5NXd0SvOG1gWwU1ULcUSUOQMBYxpbKOMFnvYYu
	 kjR/7gdnYGfDZrdOFjavOPKpZ62LemS3FicAknKgsQlvqEpnvjBGIQ+AKCpCPOhzAH
	 lvkUEtYNQb5wAOCckTv7HbGSM7nKtYm8o2ImMOXybofSjfr6Eh7JTegoCEswT963gr
	 MnQFgsNN7ysV46fq/8FIUeSBK2dN0ei+p6CorI7X8HU9UnOa5vmYQ/qnQZplEKI5uy
	 k7YaYextFl/2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A011BCFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172827695364.31454.2902549233581816035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36fcc1ae189efeef214a16529172d4c56609ce3896ebf8e2c39313ce419b0cbb
Date: Mon, 07 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728276953
