Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33928186294
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737437154; cv=none; b=Vc6h4Lhx5SmczwDld7nWeqTBfZcvydMv7to/7ZxXGXoVgDCbfouG3f0ZP1eAtq4xk14K8Q0God9MhPq1Ism7xTnsUD7UVH18XeJfIsgy9VovXsyrhvf/aSHSdUZq79mfmxiZk64Lg8wUfsK4jG88gDJgAB5Yhmb8oYF9vEuSu8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737437154; c=relaxed/simple;
	bh=Ur1zNun7huxM6/s9u+T4ZREg11BGYh/+pgyx19dEI70=;
	h=To:Subject:From:Message-Id:Date; b=haF3ZPw6WADfKBu/6fHh3qAZSxBOuykC/Eaq1wJ5yOkxmGc310p6GVnSj1J5pOgtMUS3/HhyvS1hIhF1UlWCtve/y72a6WwkB1QvbRdK8R3lkNHHRyctEAgrAFfodwtmDd8TBd0Jt+ysFovtV5kd5aGcOh6+rFnYRUV1cE9spho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVQXYw0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVQXYw0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8703C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737437153;
	bh=Ur1zNun7huxM6/s9u+T4ZREg11BGYh/+pgyx19dEI70=;
	h=To:Subject:From:Date:From;
	b=nVQXYw0IrhoGASqI6AbpMAp9Tkmj/q/pz4kk8brCnj0pWA1RjlBzTH5RQ7DfHsJNx
	 9SWFSN2eKj5ne8XTxOjNM4SDK78EWOaQIAnW1z6xUdBWTeRVBy1b/F5ZrjEvqMEH7D
	 UDBhd1RbukGlFTiqryAKC7DGuk5euezYWVIoK45Ze8Lx1DrvVJok5iw5hWwUdWzr6w
	 YRYpr3rcMSJu3+6PEPM0K7rdfKxJCHtTK6e5jIf9DuBrVAZpAkU+oMSKb9uxwlErX1
	 5+T6lTIi7afKdgxPfEnD6iRbUSTZ57RG5Ef+fy+daFzr4iYOlRhyDSOKItvoFQhdCI
	 FfWNnbH01SRBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E761C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173743715362.11996.18159390034545280857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc87441bafac32f9ebc5079301918d8a4c379629cdf4d431c0a657f10f07cec9
Date: Tue, 21 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737437153
