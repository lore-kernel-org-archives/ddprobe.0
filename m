Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235FC35957
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757824194; cv=none; b=e/wZIgn7vNmHw4fJyE+d2lVyhcYEOGqcGx334kxpqLihLVJWfbDKQ1KnS4+5iWUGdrbJOkImC9I4/vmsZby98MTcy/PhXUPbgFoJaSHajAeCia0kPsp5DtqKfNm6Mvyro3Hct42DBHOfsO3PsvY4/qoJAdtfNbsiht+AHyfnctU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757824194; c=relaxed/simple;
	bh=r1CTnH/Ij/uZu9uM8sMRtHAfZG5UH5Vs98Tzy+/1lbM=;
	h=To:Subject:From:Message-Id:Date; b=dPF43LCz8x6GwKj07AdsmZKJWXRBsZh/3YjTAqw0fOhBtoRca46l1sqJObXakWLFrPo8k9BOI2t9kPo4r8nfrCquNUrRny6md7Gfhw/iTD/qxCQh6rXg6EOoKIGlTCIkhCJQ+Z8SMMOho3G3HVIHjPepTddi+L4siigAap3U/L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhbQo5/y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhbQo5/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A232FC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757824193;
	bh=r1CTnH/Ij/uZu9uM8sMRtHAfZG5UH5Vs98Tzy+/1lbM=;
	h=To:Subject:From:Date:From;
	b=WhbQo5/yuufT8jnXPR/Q76N2wKRDoROrIwA6fGlzSpNHh9n1M8wnHD+kZ3mta27uj
	 lKentz6KIHWMJSxwwXvA8n2a939slBQb/0ceo1iYBcFpyBuSH7WYiN0DFA8lV0G8pE
	 akkZfNDpMOS/m1WOYuMk6gQ2fTN/fFKk5NqRvRorjvjtbkEZOUkyrzkxjunIHRe0nv
	 rRyldn43GMX2DWxKWsVzk8DzkHLApuOcKLWaa/2Hg03675bGAUt4+QajVUb7hf0h1v
	 K+Z8c06YnxRHBfNuYEMxhc7syGrKtPZAMNxKDz7Wb1geGntDPfE+Yq9c4bEftiCytD
	 y+1GNxy9G6z/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD2ACAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175782419358.27233.12389421747153422704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f894ff9d3c602b76a8e0e28ed7280022a11d60d655f8d9aa60ec2d95b47b3c
Date: Sun, 14 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757824193
