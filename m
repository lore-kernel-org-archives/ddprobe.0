Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9123B29D
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 18:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714845743; cv=none; b=bsvtI31PLgtle4QFCiW04G7kgWbmqcwVG+RUkXhd/NgxmqLUOa8uiccnH/z+GuqlBSIFRjEl4LhutG5JfzIefYrOs4Cts6tNeG7N/cYYIf8fwxlxtXY5QrhVeUiCAgzWvsSt+UBn/jZAjOzcNc4ELR2wDCi152lkQ+DRmQ9nGOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714845743; c=relaxed/simple;
	bh=DygvfmmkPVZvZWLi7ZFlCEHW6icriv8rvLpQQc52y2s=;
	h=To:Subject:From:Message-Id:Date; b=PbRrFnM7HJroNk3IXpFaQPtUyKo28kpi9Gr6Izmq/OwNotGo+UJ8nyhOokWtiE6TEKsHihBZ0Ac4srHRnJBdRqhrstZ33hSROYaYfErikudrXtuG/d++6I+JGEDEA9+5og4u8buS6lfgQ5z2polqv+bwV55J88FnKRcunHeLg7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCm0L4qF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCm0L4qF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1208C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 18:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714845742;
	bh=DygvfmmkPVZvZWLi7ZFlCEHW6icriv8rvLpQQc52y2s=;
	h=To:Subject:From:Date:From;
	b=XCm0L4qFk8S2fcSUlQ1XRCinVw9ypFERqZDDh24Ib7xpG63y5hhmGjGZ7wfwa3/vG
	 ta8IX4spm2fE0qNN702JuXyc4cFc5aUQAsKyOiBOJCPmVq4TdAjPWlETJI05JvzW5F
	 YFZTIHAqt2mYPlVCyvi/9qdxnTI17mIoLvrRde6W6qyYrxa4ZNRiG2amTWO3HIyyDF
	 6voHv7pqSOE2ndePzh7c+yF4e2IRPC0lJKZPiYRZ8cP3XRQPY/XWMXBwhX3OH/lSak
	 pnHixVWoPndz21EvpV8gKFYjZclxbGa0cGwJ2JllxwrdDVp8NGGsbnlliJTTxbdWLd
	 /pkiQBlLtOu/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC26C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 18:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171484574276.11262.6485574544451170781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56adaa635baa23dadcbbc2f4cdad33b12795d089b6e7d6410c6a9ff68000d7c6
Date: Sat, 04 May 2024 18:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714845742
