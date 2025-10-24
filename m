Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7C618A6A7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761272394; cv=none; b=EpevsllQkf1uq5pkEIdC/r4jzTzIvm7bOy27so6uotfKOqLPgUZOS/vgCUvj0BnGq7YoO+f5SqyYrVMTYYlKv/eu+/K31/SJhLl0At8ikpZwnYt36QFq7Gq+dTcKTNmL2hHb0uhmp+L9AklSe4L37UjMMsQTwktSktWSbC10w5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761272394; c=relaxed/simple;
	bh=qe/2VnHfD8Wbc0SYt+P1eCTWUg1HaBC/3ERc4og66U0=;
	h=To:Subject:From:Message-Id:Date; b=nMi85UthZIgN68vHvnKpvuVb54LLp8mmmne7Rji3eQl16J86zGi0ZUjOA58VrLVcZ2Bk8wLwuVhUB8OgXf05GlMlw/W7pjQrZ658tijdyUqGF++L39wtBnCmxa4kx2HK0n1hmx+/StiruqpmAgv5UEjIaxdvynZd+FnruWM8Xtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxB/zzyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxB/zzyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25B4C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761272393;
	bh=qe/2VnHfD8Wbc0SYt+P1eCTWUg1HaBC/3ERc4og66U0=;
	h=To:Subject:From:Date:From;
	b=uxB/zzyEB9toK/i6rqOJ5AJqK/bpwUz5EG7FpXMDxiFFUzMcrapCOpUkmiMf7SyeM
	 9eW1Bfp1tedeLvkQhv2WjqiclOHXpj3+7+BHgMTmabjCYDenb5Vkvnh8UvL1PG3jJV
	 Q0ouIRw0vQUGtEb8vAS7UMyJmV63Ney9RPhQ/NYz/N6pyNz7QF3URDs5HeGvFhDBDL
	 xWxtLW2cKLFTOpmlGJNqxsd16zSwsFyDYgNfG7cDMYnxmz3Pf/kZX+I6skeWQo9dFO
	 xibswZxV8XLGxZpMkcg7A+e9RhoFx4xxuDM8BQY9pIYHtgTw/3fD0fLpT3uLPIVO/B
	 y8X5wyqlDpxSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9340FCCD193
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176127239358.1920.14329856995967926919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a31e8ea5016d8e28ece83e51ec8ec4134f4b56d719018610c5a68a2486b2ab
Date: Fri, 24 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761272393
