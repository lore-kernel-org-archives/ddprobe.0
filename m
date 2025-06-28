Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC771A257D
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751145594; cv=none; b=EBEfYSqueAR4cbf1v10eMs99A7TDM35aYqqvda4kgjJc7bTqrpT/n4BczmS2LLpX/SYaQKn435M62lCC0UOwDRU3PpCJgV3qW84gJhJpKPTaAd5VXwDxsJOQ/iwX8teSvvQj6bnK7eDvBLXQtK6PJ3E1NLjXJB1XQSsBlsL8Fzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751145594; c=relaxed/simple;
	bh=hmTy6S/trEWCTdyrH/R4mdl36OnfaK87+5sfKDF16X0=;
	h=To:Subject:From:Message-Id:Date; b=i4+jiT1+jis9EP8bSHhqkKqTZJs6fqFLOTMDZV07CpeMjvpTjyyUxGFgnwMvIvrizhgBnn0IeT7fkMxxWtlPBf1sthBslKm/kqi6x7QV4OBVKB7nE51+gvlcwRdbX030uR0ClZUFuIMEOR0MZWoV6dKkZ2Z9DiqHaELTZk4cq10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHwYXDO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHwYXDO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF35C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751145593;
	bh=hmTy6S/trEWCTdyrH/R4mdl36OnfaK87+5sfKDF16X0=;
	h=To:Subject:From:Date:From;
	b=YHwYXDO8KVn5W89JDi1L8Lbc1VqrBFne5fkqI7rI/EUkIxuH8IRkJRW6Zvt1377NW
	 HWhYDFKgqnKq70SZ0jsxRofV4n/V2so7uEN01PqIVU90i8mPb8mzrzqGQRZlJKDJUs
	 gQN0mKoRzTaxusivG0euCWyDC5Rg2YMHrOASDAlY/yb+CA/VfPIw//0yRo9qynBu09
	 BFlawkRmnV4dNSUaSijkelUU6kOYSRiEj9keCwh6JbSVtYP/nHS7I4B5ssPiK3M7JK
	 XR+wLmdxlcWIRRKBBcKRvb6pp6cSY3R83BGOugdMn8mi3kotKj3RfWYq/ngXdzdXuu
	 bpK8fIlre6I/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF63C7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175114559357.11551.12772931717606301976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac366a429b1fb0cdb9ccce6b5a47a5cbe9b9d9614a8b67eafce1f73eb64e92a
Date: Sat, 28 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751145593
