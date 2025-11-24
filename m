Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338B84A21
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 05:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763962914; cv=none; b=aLCEGmn3RAO8kyys/675zcbaD1fgP7e6mOevlCIFaMkmoD72gKzcpfIKqaTuSJu2yadAqIiDvz81dDuDZooSZyOSpOLVs04/XNaBbNFd95Mo8JF5Gfqt5vK+hy5uq2h3MLhKy3Lm6o2h/uZ95hxspdX0MfcQXcu5Ut6dYLejz04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763962914; c=relaxed/simple;
	bh=Di5bOFHUePP7rKvjv72wtOSkJL4dbxSutKtL5O67Zn0=;
	h=To:Subject:From:Message-Id:Date; b=Qi2NNmlmJ08ecLb7BCsGb+1N6RmQESmBkK54xeaBclDPoU48XtUESDRuQ3kKOA3XUnnFR40gWZ5JKBZtb5RYWYd1tqLkFX+zvfNpyUdSrPqB8Z1K/2IggRipgVIJSnunxZiF6gc3J2UCndMGOvxoApS9xmA2MRsYpumZmKDFNYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5ewtCEA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5ewtCEA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA96EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 05:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763962913;
	bh=Di5bOFHUePP7rKvjv72wtOSkJL4dbxSutKtL5O67Zn0=;
	h=To:Subject:From:Date:From;
	b=o5ewtCEAalrz+66lJEfFAHtqjtRsiDm/hFeJ0gZ4bpRcunFWfzWUMVSlSfjGxr/mF
	 Z6HNOtoT78vzpk4q0g7Jx1yiuL0xovIbk3qJT3pmvIRhcAuxx/3090/T91UPqMbUMC
	 fuY1notOlwYEP43JBKmAOYzMKwrnSk2ZhIYxpe2JY7VoGEuFM15k6BXwPcc1OsSIxL
	 KkHn7UeGNBimNdO4whhIk70zHJiFT0KVm26zc9gi9/vpIR0fL2gAwlk//Nnm6M52yK
	 iii8wiLrCKX1Wl1Zru/S0yKxP2zpZ6TkQH2UD14Gxl7pgOX7Fa9SpZEu9Hcf6pn5FP
	 +1V8QpMZuNBUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97006CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 05:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176396291358.21007.17972668872264077466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24571e83d51877bad1f5d64d112999044b9e7c7a07ee78cf2055738c69a864f
Date: Mon, 24 Nov 2025 05:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763962913
