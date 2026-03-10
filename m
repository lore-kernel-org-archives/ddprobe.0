Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF37314D13
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773140694; cv=none; b=PwiSm8iP49EuBop4MYnWOqRYDYqzTVn2rn9kxn2KJTbcqsKDYRO+bWsWwA7Xrr5/PvMnHAWxO2dJNJ4LPv6PKBlNQYKqhqNiE5JVFsNx4OYyZt++QXICR+ZsdUNoQ7Khqb55KPzSa/AFheyLmtb1SliaZpkovo3jAZXxJm3httc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773140694; c=relaxed/simple;
	bh=jLLBHuKHqqrzra/comCpFEE3fFXHt3hLq4axiNI6iCA=;
	h=To:Subject:From:Message-Id:Date; b=G1zVheFAtzN50P/RC/E0lRSrnRi/bvvFxNEJFPTZLwMmfWRfGoW1vIh576r3clDYtBTOPx1ZGZU78TMgWgd/P/lhzdisR5nRM9AFMM++q3dP6F3Tl4URgn+LLsWDYGfVUv9hOMS/BAL1MyIDBdqQSJ5t8aogadAuI7Euosd+aGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfPdtSRX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfPdtSRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D98C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773140693;
	bh=jLLBHuKHqqrzra/comCpFEE3fFXHt3hLq4axiNI6iCA=;
	h=To:Subject:From:Date:From;
	b=PfPdtSRXUne6RMzqne4r8boOjoCrKNZHgnHym+iJ2fqkom/z0NXZz6FR23kpukemT
	 8ossCMflN5oug9PInk4pumMl+8ljaLwbR2VV5wUyt/dALa378Ylt/8ZMaujpHqcHb5
	 k3hMDwuCKhHzn7TnEJMt5SRq5+FLRQ5YyjiceLdaiaXaUAiNHz6SzXuDUTTPaXM1hs
	 epTjk3pmotEd/ZngIt/MEPx63/K1DY1G9lKboFr1WcCeXYld0H8r3bC2Ng0mXRN7Fl
	 UtSRCpzqrZerX1vPBjTVtyXWQo4SQUP0e6KNFAXgon3t8qIwp8cMCeIwWJ69u7CfBA
	 jZMJzkGMdukMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94608EB1049
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177314069359.14089.17037191963522630644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9efd1e1f7d848c0f17aae053492f775e9c5c548b274d9f0465f2c6bbcb51a188
Date: Tue, 10 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773140693
