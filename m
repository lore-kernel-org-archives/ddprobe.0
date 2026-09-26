Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3B91E492D
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790451034; cv=none; b=msC3oGT16smjJ8oLeNNW1ItgplDPKA6GNy6Gf7hGmdWAY0NSGUDERne+ztO5hekLvwjgYQJkKA5hqtbrBjo75aE1qI+RRNKjCYu/SEarSIYNR1t+44f68IlLaXZUxLG7rl1PO4jY2yLmbSoHWWeiu0Y1dOZvhiKWhdjGR/cMbEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790451034; c=relaxed/simple;
	bh=8QLqw91CZIhwqAIRtIkR/GwfHrHXtTBqwehDsmM+sTo=;
	h=To:Subject:From:Message-Id:Date; b=txxOgXc6ub/Spy45T2p7miaTFQukymPWVyrBlMtZgvkmQL5MWXsDaDLm/oJx3SopdpKDeEfQoxzdbfoCozGOzE4MQiTg+dmU4EpH0qnbb0g7Xck6RKB65xLoLGF02g+dFMgydWSzqp5qGQn6uiuhXyVpBKg3gIoT8FFJZ+Q4quA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTdBGLz2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTdBGLz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4883C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790451033;
	bh=8QLqw91CZIhwqAIRtIkR/GwfHrHXtTBqwehDsmM+sTo=;
	h=To:Subject:From:Date:From;
	b=bTdBGLz2ai/QEPN7qn2yCNnlKDALNWVrhVnLMU3gFnkrBjOmJhtrauqNedoVU2p6T
	 2qSGt5Kcf7C++ACWAZRYdLB4p8VHr59V2+gaJuLSjpT9j3H5sr1i7polc9EBKS5F77
	 ZBYsi2JEJ47fHjUf1C1dCMXoL/p0pEIdhMhu+5NUSJYMHl2rpeKZKDIAWWp075zZ/W
	 6esFho0FsiO7rnWI9+n4soNGibCoDDJCchZv7uzysd2xdThPwDrhRfipX8pT9fWXpP
	 WszletaNOTwjQC2S57OauhLtKg+6Jp6w5jIOWrPzRassaNVWJsN2X1q1mDobZfj/9L
	 +ERcAqff5PrMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1868C9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179045103371.7400.16814359462685214430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e527e55dccaeeaca7b69af9945e8cb6203185876ef5e0f452b27ef6c482e4401
Date: Sat, 26 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790451033
