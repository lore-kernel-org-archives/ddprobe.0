Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C2E2F0C46
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765536174; cv=none; b=k1ToeT7qAtHefy/dW1q1lgJwJpmTwH/j2ta/PkCx0e/So0sY6+NBphVJj4bB5u27bHLU1uZ7jIEEyUgR1wANVp7/XYJlbGlYXEHHy7EmEAyZUjDvZ5/6IyhzS7NsCvafsTP7dBNfkBvUPdIZAtzBd+CCmVn9a95nmylwZUdYbao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765536174; c=relaxed/simple;
	bh=eQ/8nIu6uai+L/DgN4SQR5wD1DGsB9mSV/odGvrS/1c=;
	h=To:Subject:From:Message-Id:Date; b=o5RMvmYqSIGAS+sgOGie9POxKnr1HPVZ9HnCSugfvq5poItEb52aS20fBVhOqjAfg8LYzDLhGMBAMT3WMWO/ZRx9/YqUSToUOlbun7+N7kHT/BG9L1WhdEJUY9zI2Xmj8YOELLEF3gWKyA8oSbLBKJLqfsGgJC/29gJMGUHmkiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCHi+ojs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCHi+ojs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB55BC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765536173;
	bh=eQ/8nIu6uai+L/DgN4SQR5wD1DGsB9mSV/odGvrS/1c=;
	h=To:Subject:From:Date:From;
	b=DCHi+ojs9gw0tu0ysyDc5AMIzdmygLgZbpJwcz4RyDeBwt/M+w6/E7gy0Tqb5hPOS
	 kUT7Qv5w6g0kTT4IlrwyolvG9eXrDX/+RxgMsltDtx9q5gFNU2j1iU4BiVOPuMaPTU
	 ryRpQM1cFks39R4n0PCIjrCZtVqtQAAu/DUmnutzDY43sJ1Q+Bqgkg/dQO77hl8U+C
	 tZ0MoAjU2Ra2GnUv3LCHDgewWpfIYtgkSGlYIk9Y/HTZHwNjbVLinWKPTryIwy6h0c
	 JEf9WG0LTEhPOR6TsdJxlmYieaA6bGySFvhVsNWaut7N+FFCE0d3aSfK83tGwayszp
	 ykrKMT16OmcfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962CCD44166
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176553617360.31939.2040862631585408900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b978ca20383a3372e9fe9e87fdee64993c61981fe2432fe2052fe0d8717140a
Date: Fri, 12 Dec 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765536173
