Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B761A681C
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782463654; cv=none; b=LfmsiN7+wEAzmMB1fSbSd/+s0CyLkF9sKy55H+G6Bi3GmNoizjtIeJEFD8/8MJ6RQR/iCs71ULw7z1nxxN+sTH/6Z9ecZ3w6QtSd57t+aj7dOJ7ZGr3UoYaBY+cD0LVgcV8IFRFSvaEdgEzHe/0+NnOB7Zu+gwRO6Haa402Rsyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782463654; c=relaxed/simple;
	bh=tDGkru+n1+sjFsFFqR+3zYESc8MnT0kinL5BdYsa3Pg=;
	h=To:Subject:From:Message-Id:Date; b=Xbdoo7pmlDjpxdeJcimcgCbd5PQWwB8xfLa/m720eBDJz+oMa8tYTmO4AJL1ds1LhDy7pxyhu6UTPr7zFraMJH1TXhH+xhQjWGAddb92Kl8BghBEybHUYYqg7J6p4+4eoIvbbmBAsl16tnq6EUJkpkKFE4js5sRmn9WtKmN0nz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SrAaNbl9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SrAaNbl9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5919C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782463653;
	bh=tDGkru+n1+sjFsFFqR+3zYESc8MnT0kinL5BdYsa3Pg=;
	h=To:Subject:From:Date:From;
	b=SrAaNbl9uwCb7cNH3Lroxei919fd70c0ub5Ben7+grFJroT4aHp0L0uyLhVjK+qim
	 k4H8FVA7ks7H9XXp+jQCUtmxNtn+NoSooj7gekmjfebAZNekWYbaJO8EN+URy0ShTx
	 8VPBqBUN4Oa5pCArgBJMs5il/dSeewEDH0XN77nl2zSrrVCEZqLXPAzmxkCk1KnX0x
	 9iz1zT68IEGf0uoedxhFOSLzCyxlquzlQzzuBmuL/g/5V66eamyhNBDbInNsal9/DU
	 c3SuBQ6h5On/FqI/BfbRtsphhSMfAvwUWvgDBWtJ6aE1vfk7+A5M/cPdc4z7Jrxsxq
	 3kX1oiItDd9Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAAFCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178246365369.6185.11802582831074297043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58492ae4001ccb0b0037f68802989cc7c2465f3e2529cae57710b9bf1da12c7
Date: Fri, 26 Jun 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782463653
