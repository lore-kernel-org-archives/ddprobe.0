Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D1C239E85
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750181994; cv=none; b=mFvMcIRUlkkhEguPfP/mPcXyqK/8cZGSzI5MqUXQgyaJl3eZGUmeG6cW3oQI89zBZozJ5DzgOLNS7cjWDz9VOr+sq3KWmERJzoKdPnKKLlrLbvmv4z6nJgTsoAQSQSpr0tAIAJ74vXObfQEpCHO3uCIunsfgYRsj/tPSuzvLnPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750181994; c=relaxed/simple;
	bh=yrjn/JNYVqSiHk68eeKNOHi/k3Zs3EY4DbhKyB+Wtzk=;
	h=To:Subject:From:Message-Id:Date; b=Exp7KxXoiwV4wpVBgsXSWyKBAG/OrXnuGSdPCBfs9SCOCam+yVtdvSc0HOXK7a7HJ/wK1YI8kmMDITyLATNImLoocIr2Y31Zuo0qlakzEGX9f07FDXrMpPbBD3fEcd9lnPw44VTdKl6ozvNunh38Z2C+ULP7O6T7wuhk6KDIkew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2uj8q9z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2uj8q9z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27E1C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750181993;
	bh=yrjn/JNYVqSiHk68eeKNOHi/k3Zs3EY4DbhKyB+Wtzk=;
	h=To:Subject:From:Date:From;
	b=N2uj8q9zQaWTIFgr5HaL6GteSg5rZp7lzCViKx7atwHJ5xR9G8Jq9sPaskn5dLQvC
	 JWRe7A6yemrskxDBtE7j5xCW8KQrL8FDL4CHKzF2eJvUcm7POScLhObf0y9WJsT7V4
	 bsdk6hsWDncVk6dWxae2GzKSoShiFurJ26NahBMk4lScL6NG5A0ZVOl5lw7smSjMt2
	 /9/gllU+o6NPeJQWn10j+07HXqLquOxETdoeJTPe/HLKTh3CAv2+Mbe1FCImkcfD3m
	 W+2H+BrHuhZwa9agNXAUsrDYtn1zn/BnH9u1AUVhyZpQzxAqO7H0NKIem43MnX80tZ
	 5Q1W3svLoVJEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9017BC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175018199358.30529.18424941565217029312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c6eba1caa1d89e1e9971ab13b35cba7364efde2e311abfcfa29621ff1414806
Date: Tue, 17 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750181993
