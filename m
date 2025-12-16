Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0239031A062
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 18:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765908835; cv=none; b=FJv4FVteL5mZ9UWR4jxkBtjtQuUvO/y4Aq8EeCMERGfn2KLzE0eCydrxkcEZAiqTJ3WRw2cIse2/9fbQX5YIoKsNjN8tBE1iYWoFxxnzKERGlSI2nspQW/vwW+kuz9ZKmHm5F163MXA8crvPy9OECJstYPkwbbKScMJ1Gs/RqK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765908835; c=relaxed/simple;
	bh=6JeWQRYQ5oJ7J8TTPv+k8y71P6jIddthxAw0P9jLiKU=;
	h=To:Subject:From:Message-Id:Date; b=dtiaTRPescV3/1ZaAbFFMYguXNhaicvenwlKGqBuuZSvrftl8Do/9trTWZ7677eMAdaOYiZDwmpwKq7tJu+CRnkBNcYY9AL241HS6XxeoTpL5lLRlPfJjHYkoLkAE0UulzWwsKNMdTdWUgb9mPKgvgafl6J5panbGmhA5ntf4PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmH55o9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmH55o9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35EBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765908833;
	bh=6JeWQRYQ5oJ7J8TTPv+k8y71P6jIddthxAw0P9jLiKU=;
	h=To:Subject:From:Date:From;
	b=UmH55o9Qh54kgKd2PJApOS2RED0tVAUiQgMwkiTA1035/OGlqLdb+mkbPTR9t2Iy1
	 YfrPjX1gnDg6DRvSEpv5diCAHIe4mJP+SIJKhCEYWztYF0fzvUoRfMbUZew7yK5acK
	 ciuceGChGu7gcb6p31WioflW1rarGOCezu8c4UzYFYu5+MyqsoHQvNNCJU4wvYeXxe
	 /0WpTv5woJNx6iJfw1AyrPLOxFNLd6/Y//G9IRU3dWT9xx80vbpPYnNPZuF30dr66l
	 xVgcVNC2HZPLq91gzkB9Ajw7bdcrwoY/uv0Ww/pZYdlqeiXpNUzm01oN1cQaR0Eo0e
	 U8aQyOdFiQV6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B00D609D7
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176590883358.9669.582577231209591981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e68d056437f80127faaad6927bfb00bd36af6899bd44bd8981d7514bc5880e40
Date: Tue, 16 Dec 2025 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765908833
