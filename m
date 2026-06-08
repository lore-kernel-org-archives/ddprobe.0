Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBAD2E739A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 09:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780911274; cv=none; b=aMCcGL+LN3uJs512rmqwn2LpK6KvIvB0MIfNIDt8JyM9gsu83qT2xRE7fmsBMFJU1+sFmmRgh2+CzJCUJbtp1j4llh0uFsnK4FdPFuzfufs3Qr1o4pOrXjTJiamaDm6kEYB/btFNji4BdxcIksTWojpRhbst5ULddBviFVowhrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780911274; c=relaxed/simple;
	bh=CNAvCFo7c4yzKqwQywhgyNPyZvqbeTxhFgYzjgMrScQ=;
	h=To:Subject:From:Message-Id:Date; b=UKFQT67+dOMR/cnwbvrVyNmigUg/oApf6oYgBsLbd0ZD1n0MY2Y0GwzeTmdml+2SSWwMXeqXkv/EJ2xodjbc9qPXE4EOA8bgo334dFsv6viGKv7r4rYuCgCqygt8d6ead0YTERAzqmXw8iWZY8h+Bt6mS3YBtmCLrEFbP0qONaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKR9MF7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKR9MF7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4ABBC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 09:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780911273;
	bh=CNAvCFo7c4yzKqwQywhgyNPyZvqbeTxhFgYzjgMrScQ=;
	h=To:Subject:From:Date:From;
	b=lKR9MF7UTQrBVKgJrSOCfXHSdL4CmgU29Ce1OdzgOmKRao9+CsXwz1pxt2HFC7h1B
	 SMyPzgITTwfbojjiR5Hxya4SBtGstyluyixlcxF+Dv3DZLS/XdcD42K09JKS/sUguQ
	 J0hoglScC+NLQGua6p3QCg/jsJrvxaL9JANEgQBUEamuTwQz0UbFrnpix9mHsKU9Gh
	 uwqwk8n19OJc/xNDSnaO+u6GLE8FS5kkUH/6H0MSQSt/j4DWPMz1XgY/iF44NAR5rf
	 09OOvj/vj3KSP7ZzVOuyJ2TiSgCELsmxPL3fEXkfwHr4zMKU529p2W2dRRho15dek3
	 y5lu6oXk3YUOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3C2CD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 09:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178091127368.1064.8027301615108773650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d0a1e250cc93840690d4df5425930f430c7261df504fbd3000a7148f88abda
Date: Mon, 08 Jun 2026 09:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780911273
