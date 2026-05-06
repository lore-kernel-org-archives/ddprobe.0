Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222A436C588
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778051254; cv=none; b=tIDF3Z6clBoRCSR/boPF7I/MjlbVPecpYWIXKBA2pu2tHUIQ0gJTBxfQ8WwPyhjhKKE8bHUhuuoy95O60K7UvQKtVgg+xXaNntOSvXJrMOvLDDmxrbDzZg5ZcIEsXUTBaSmAZRYvC1cINiefJQqMLBZ3LoollXFu6otg7b0gQWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778051254; c=relaxed/simple;
	bh=5LwgArdBEQ3+cQ+qYz7qsqoGzd09JsRqNheBRYco1n4=;
	h=To:Subject:From:Message-Id:Date; b=rxYnA21LOe2F1m5lPWegloH9K+jDZ7++iwCNuiUtcjSOjEiYk6jkwpXKWMwE7CE8Sh8emjk4ftqa2rW40xRHgOCHytRvLMa0Gz6tPGB3UWL51q0nkHcLYwk3BYhbdysREUwKRi55jC78xJUyroTDADHDY01FermnLVwzdlkja+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXfcpi1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXfcpi1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B0DC2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778051253;
	bh=5LwgArdBEQ3+cQ+qYz7qsqoGzd09JsRqNheBRYco1n4=;
	h=To:Subject:From:Date:From;
	b=CXfcpi1LCZFKkXEf9Ou8sqyP8HR3fjbTPq4X5/hlSMrlzbG8XlILgRD7QGjpvfjmW
	 fTFnGjnFaVVwJf30/AQPo3U5mF9Ri9FN3oyK6+wnhkrhaOSZANxhp/I44Q9UXTKgdo
	 ULK9ioJKkluRblOv2RADLEeArOk188cAqm63sJD3AdPsOCkDk8o/cPrPPxIkfvNWbl
	 51bhDPxwpn2aJ+QMZzCuCrIIJnBwa3Jrfm2uKJIH3HQSjv+AGmrAoj6Fe4ydoNcwL/
	 xx9IeNkWLud6DL66+5+Wbghy+jGhRGjtGkJ9mbDdBUvMddPE77BY9kQQ5Lj/N/2yKN
	 BslpYvt2N/Rxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA238CD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177805125368.6335.7148391013316863360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa10d10a2170afd34ba2a1cf38f5e39f924ade55e7b54cfd8b42ba2ab394d31d
Date: Wed, 06 May 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778051253
