Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5413F13DDAA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 17:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775324734; cv=none; b=V8o3s8mBGQHRHvs/bGsYeGikANvn3EPTsDdI8hRaQpx1lSUbbRjKvQRmYzp/5AzhqMaeziSW/ThHiYAenomF8BcUGs+ilo5sD1otdlMlB1Fs/l8UF8GvDoLd4uKEieGQ/rKwS7s60O3AZW/l2fbDRmKlSgd7+NcCyk3z5ML+9/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775324734; c=relaxed/simple;
	bh=/00urw2Z6Rh/2EmCzzbIdoARE1W3EELsdgNK67QgHgc=;
	h=To:Subject:From:Message-Id:Date; b=chDkt66Lpy2TZH8/VokE0lI/SQSb0P3jM756fnKweUzO/yDbIh1hDgNyZzd1AZymaEyTsROX5EpcsA99UCnhvhiZfrQ08Ns0Cbm54x2wfU8J9DA4+7VsynzXbSHBwghxsxdBX6HqPuzffAKK+IZ8HSSVlCQPBt2EHCsoukHOjfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzxNQzN3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzxNQzN3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 037D8C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 17:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775324734;
	bh=/00urw2Z6Rh/2EmCzzbIdoARE1W3EELsdgNK67QgHgc=;
	h=To:Subject:From:Date:From;
	b=bzxNQzN3YjBMA93lVaHbYlTxWy3y01W7iwCcStoqwgq10NT5Md82Md7NupcJ7L3Rq
	 54thD4AFTI2cRExxcw4phR39PWwut7Br/wtjBXiKxPCusK/YUrXwCULIoe1gCN7ty+
	 jbsQdHtwJjlyEM0a1F7REM5VzNnkDEBmoBm7VCpogL63xGZxuuINsLPPP2uw0GWvZk
	 EewlUVwjF/FB3ZC3HpmgH+uQ+wZhk2jjU9EtH39VAetxjmmNZaQkD38uEytBTohOGX
	 vXjXzLPiVD2Vey06PvO53oLcG2wnVxlp0Y2iIQ02pEmLL6LghcHAkVKe4RSPEaYHNY
	 1BCWQBr/MtvdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD96EE63FEA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 17:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177532473382.16966.6534210895976235923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ee6766b134ee8f748363030273874b90f7de5f6530af0ac6d7f2a939cc64b5c
Date: Sat, 04 Apr 2026 17:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775324733
