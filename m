Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17E237165
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711544897; cv=none; b=tUqzEdCB5wR6JcrwuCJaaMseECw/vRg/cwossMsLt1AAqzPtbkLeCWVQifK96FfFy25sLvFaggJBGg20eqWcI/c5MAUbnBXqpbnSRyUUd1GgUhwk2Gi2cYvzbb88GbX+wbF+qA/sLxWvg1+eh5mazviW76oyAIPc93XjYC/ENgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711544897; c=relaxed/simple;
	bh=Gjl/WE1mMCtUtG56po2KWbwVe22LeOLpKWayz4xEj3Q=;
	h=To:Subject:From:Message-Id:Date; b=QionFQIMvAu7KcB7n0oCdaHJiHEIq2a/bToA7IlJLAiedlc/9YyOTwkrdRSNZkL7rNRiJaF3ggLp0rhZUw3UMF32SzdXsfiSx2R3sMQOgg1j6WWs5U1T2ZoHGcLU4DOne7NLrLN3kIbF4Psjg9sQsgrPgwKgHDPn/AyV6YEOwkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqR8MuSh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqR8MuSh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 800C6C433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711544896;
	bh=Gjl/WE1mMCtUtG56po2KWbwVe22LeOLpKWayz4xEj3Q=;
	h=To:Subject:From:Date:From;
	b=AqR8MuShgdHzJ2RWCkqMJxDU4IilaevEIJg27Y/8LxIkJBzDtjdaJ/WKJFifgULcz
	 4wGkrZXLNSGW6URbNkz3plRuxX9hVShZIxUOXDFrEk5ItGbEEz0WDgpsJjUdpztbJB
	 /1x/8rUXBz9x76AmSJaY/sUlNGETagE49g7HsxGerMRca9UqTamDNKbQfQMpTiUgiP
	 +REimQaVdRPQtNsTzKz4o3iKZ3/XyTpGCITJfnWtxdLh7sqXmEV7p8d7NF0KZQ2Yey
	 UAThSa7q3eGNBuTKGLYiAVUA+YLbPMkjsyJok540bnK9QuCWYhETDoI5P3nZJjLTa0
	 ggD3h/ZprdVSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C4A2C54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171154489642.14832.5011141601718140616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cbd8637d98a714805ca9fad4efe433bb054f94dc59a2a6ed7ac376ca034247d
Date: Wed, 27 Mar 2024 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711544896
